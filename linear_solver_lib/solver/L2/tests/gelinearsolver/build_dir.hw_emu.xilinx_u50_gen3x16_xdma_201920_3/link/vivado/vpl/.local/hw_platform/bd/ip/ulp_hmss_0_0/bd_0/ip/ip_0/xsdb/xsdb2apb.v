

module xsdb2apb
# (
   parameter PLL_CSV_VER = 16'h0001,
   parameter MC_CSV_VER = 16'h0002,
   parameter PHY_CSV_VER = 16'h0001,
   parameter HBM_STACK_CSV_VER = 16'h0001,
   parameter HBM_CLOCK_FREQ = 16'h0000,  
   parameter HBM_STACK_NUM = 16'h0000,   //Stack ID
   parameter INT_VERSION = 16'h0003,      //Internal version code   
   parameter APB_ADDR_WIDTH = 22,
   parameter APB_DATA_WIDTH = 32,
   parameter SWITCH_EN = 16'h0000,
   parameter AXI_SW_CLK = 16'h0000,
   parameter PLL_REF_CLK = 16'h0000
) 
( input         clk,
  input         rst,
  input [6:0]    temp_status,	  // temp from the attached stack
  input          cattrip,         //overtemp detected
  input          apb_complete,    // configuration complete
  
    // interface to XSDB side
  input          x_clk,
  input          x_en,
  input          x_we,
  input [16:0]   x_addr,
  input [15:0]   x_data,
  output reg [15:0] x_data_to_xsdb,
  output reg     x_rdy,


    // interface to APB
  input          a_grant,
  input [APB_DATA_WIDTH-1:0] a_apb_prdata, //32 bit
  input          a_pready,
  input          a_pslverr,
  

  output reg     a_req,
  output reg     a_psel,
  output reg     a_pwrite,
  output reg     a_penable,
  output reg [APB_ADDR_WIDTH-1:0] a_paddr,  //22 bit
  output reg [APB_DATA_WIDTH-1:0] a_pwdata, //32 bit
    // debug port 
  output [240:0] x2a_debug  );
  
  
       reg        rmw = 1'b0;               //  Denotes if a read-modify-write is required  
       reg [15:0] write_upper_addr = 16'b0; //  Stores the address associated with the write_upper data 
       reg        write_upper_valid = 1'b0; // valid asserted when written, deasserted once it is used
       reg [16:0] region_addr = 17'b0 ;     //     APB Address is 22 bits, 17 is for 'local region' addressing	   
	   reg [4:0]  upper_addr_bits = 5'b0;   // stores the upper 5 address bits, or 'region' bits
	   reg [31:0] data_from_apb = 32'b0;    // register for data from apb
	   reg [15:0] write_upper = 16'b0;      // the upper 16 bits to be written to APB
	   reg        cattrip_sticky = 1'b0;    // overtemp register
	   
       parameter S_IDLE     = 16'b0000000000000001; // 0001 - reset timeout counter, hold a_req low
       parameter S_WRITE0   = 16'b0000000000000010; // 0002 - write region select regsiter, write_upper, or prepare for full write
       parameter S_WRITE1   = 16'b0000000000000100; // 0004 - prepare to write to APB, send a_req to arbiter
       parameter S_APB_REQ  = 16'b0000000000001000; // 0008 - poll for arbiter grant
	   
       parameter S_READ0    = 16'b0000000000100000; // 0020  - read direct from local register?
       parameter S_READ1    = 16'b0000000001000000; // 0040  - prepare to read from APB, send a_req to arbiter

	   parameter S_APB_RD0  = 16'b0000000010000000; // 0080  - send address, assert sel 
	   parameter S_APB_RD1  = 16'b0000000100000000; // 0100  - assert penable , start timeout counter, poll for pslverr, timeout or pready
	   parameter S_APB_RD2  = 16'b0000001000000000; // 0200  - move data to xsdb ports, deassert APB ports, reset timeout counter
	   
	   parameter S_APB_WR0  = 16'b0000100000000000; // 0800  - send address, and data assert sel
	   parameter S_APB_WR1  = 16'b0001000000000000; // 1000  - assert penable, start timeout counter, poll for pslverr, timeout or pready
	   
	   parameter S_ERROR    = 16'b1000000000000000; // 8000  -slave error or timeout - issue error flag
	   
	   reg [15:0] state = S_IDLE;
       reg [15:0] hbm_temp_r = 16'h0000;	     // register to store HBM temperature (placeholder)
	   reg [7:0] timeout_counter = 8'h0; 		 // timeout counter for arbiter request
	   reg error_flag = 1'b0;					 // error flag for timeout or for apb slave error (APB_READ_ERROR)
	   reg x_we_sticky = 1'b0;                   // register to hold write request from XSDB
	   reg [15:0] scratchpad [7:0] ;             // scratchpad register space
       reg INIT_ERROR = 1'b0;                    // Configuration of HBM complete (HBM_CONFIG_ERROR)
	   
	  assign x2a_debug = 241'b0;  // debug port 
	
	
	  always @(posedge clk)
	     if (rst) 
		      hbm_temp_r <= 16'b0;
			else 
			  hbm_temp_r <= {9'b0,temp_status};
			
	   
      always @(posedge clk)
          if (rst) begin
             cattrip_sticky <= 1'b0;
             INIT_ERROR <= 1'b0;
             state <= S_IDLE;
          end
          else
             case (state)
                S_IDLE : begin
                   x_rdy <= 1'b0;
				   timeout_counter <= 8'b0;
				   a_psel <= 1'b0;
				   a_penable <= 1'b0;
				   a_pwrite <= 1'b0;
				   a_req <= 1'b0;
				   x_we_sticky <= 1'b0;
				   rmw <= 1'b0;
				   INIT_ERROR <= !apb_complete;   // Note inversion, for backwards compatibility 			
					
				  if (cattrip)
				    cattrip_sticky <= 1'b1;   // cattrip is a sticky register
				   // error_flag <= 1'b0;   uncomment if not sticky
                   if (x_en && ~x_we) 				   //READ operation
				      begin 
                      state <= S_READ0;
					  end
                   else if (x_en && x_we) begin // WRITE operation
                      state <= S_WRITE0;
                      x_we_sticky <= 1'b1;
                      end
                   else
                      state <= S_IDLE;
                end
                S_WRITE0 : begin
                      
                     
                      if (x_addr == 17'h1f010) begin
                          upper_addr_bits <= x_data[4:0];  // special address for region address bits          
                          state <= S_IDLE;
                          end 
 						   
						else if (x_addr == 17'h1f01a) begin // can clear the error flag register 
						   error_flag <= x_data [0];
						   state <= S_IDLE;
						   end
                           
                        else if (x_addr[16:8]==9'h1f1) begin  // all address space 1f1xx is writeable
                           scratchpad [x_addr[7:0]] <= x_data ;
                           state <= S_IDLE;
                           end 
                           
                        else if (x_addr[0] == 1'b1) begin // store this 16 bit data into the upper 16 bit data register
                           write_upper <= x_data ;
                           write_upper_valid <= 1'b1;   // the data here is valid, cleared at next write
                           write_upper_addr <= {x_addr [15:1], 1'b0 };  // store the address, replace the LSB for easier matching later
                           state <= S_IDLE;                        
                           end
                           else begin           // x_addr[0]==0, so initiate a write to the APB bus with write_upper+x_data                             
                             
                             if ( (write_upper_valid) && (x_addr[15:0] == write_upper_addr ) ) begin //  there is valid upper_data, and address matches
                                state <= S_WRITE1;
                                write_upper_valid <= 1'b0; // the temp data has been used
                                end
                                        
                             else begin   // need to do a read-modify-write to get the upper 16 bit data 
                                rmw <= 1'b1;
                                state <= S_WRITE1;   //still goes to the same state
                               end
                           end
                      
                end
                S_WRITE1 : begin   
                   a_pwdata <= {write_upper, x_data};   // concat write_upper with the lower 16 bits - not used if RMW 
                   a_paddr <= {upper_addr_bits,x_addr [15:1],2'b0};     // reconstruct the 22 bit address
				   a_req <= 1'b1;
				   state <= S_APB_REQ;
                end
				
				S_APB_REQ : begin
				   timeout_counter <= timeout_counter +1;
				   if ((timeout_counter == 8'hFF || (a_pslverr == 1'b1)) ) begin
				      state <= S_ERROR;
				   end
                   else if (a_grant== 1'b1)  begin  
                      a_psel <= 1'b1;   
				      if (x_we_sticky && !rmw) // standard write operation
					    state <= S_APB_WR0;
						else  // read operation or RMW operation
						state <= S_APB_RD0;
				   end
				   else 
				      state <= S_APB_REQ;   // no grant, no errors, continue to poll
				end
								
				
                S_APB_WR0 : begin
					  a_pwrite <= 1'b1;
					  timeout_counter <= 8'b0;
                      state <= S_APB_WR1;                 
                end
				
				S_APB_WR1 : begin
				     a_penable <= 1'b1;
				     timeout_counter <= timeout_counter +1;
					  if ((timeout_counter == 8'hFF || (a_pslverr == 1'b1)) ) begin
				        state <= S_ERROR;
				      end
					  else if (a_pready == 1'b1) begin   // transaction completed
					    state <= S_IDLE;
						a_penable <= 1'b0;
						timeout_counter <= 8'b0;						
						end
				    else   // a_pready not 1 yet
					   state <= S_APB_WR1;  //  stay here
				end
				
				S_ERROR : begin
				    error_flag <= 1'b1;
					x_data_to_xsdb <= 16'b0;  // in the event of a read error, flush the buffer
					state <= S_IDLE;
				end
				
				
                S_READ0: begin     // check the MSB of the address to see if this is XSDB register region
                   if (x_addr[16] ==1'b1) begin
                     casez (x_addr) 
                        17'h1F000 : data_from_apb <= PLL_CSV_VER;
                        17'h1F001 : data_from_apb <= MC_CSV_VER;
                        17'h1F002 : data_from_apb <= PHY_CSV_VER;
                        17'h1F003 : data_from_apb <= HBM_STACK_CSV_VER;
                        17'h1F004 : data_from_apb <= 16'h0000;
                        17'h1F005 : data_from_apb <= 16'h0000;
                        17'h1F006 : data_from_apb <= 16'h0000;
                        17'h1F007 : data_from_apb <= 16'h0000;
                        17'h1F008 : data_from_apb <= 16'h0000;
                        17'h1F009 : data_from_apb <= 16'h0000;
                        17'h1F00A : data_from_apb <= 16'h0000;
                        17'h1F00B : data_from_apb <= 16'h0000;
                        17'h1F00C : data_from_apb <= 16'h0000;
                        17'h1F00D : data_from_apb <= 16'h0000;
                        17'h1F00E : data_from_apb <= 16'h0000;
                        17'h1F00F : data_from_apb <= 16'h0000;
                        17'h1F010 : data_from_apb <= {11'b0 , upper_addr_bits};
                        17'h1F011 : data_from_apb <= HBM_STACK_NUM;
                        17'h1F012 : data_from_apb <= HBM_CLOCK_FREQ;
                        17'h1F013 : data_from_apb <= hbm_temp_r;
                        17'h1F014 : data_from_apb <= INT_VERSION;
                        17'h1F015 : data_from_apb <= {15'h0, cattrip_sticky};
                        17'h1F016 : data_from_apb <= SWITCH_EN;
                        17'h1F017 : data_from_apb <= AXI_SW_CLK;
                        17'h1F018 : data_from_apb <= PLL_REF_CLK;
						17'h1F019 : data_from_apb <= {15'h0, INIT_ERROR };
						17'h1F01A : data_from_apb <= {15'h0, error_flag };
                        17'b111110001???????? : data_from_apb <= scratchpad [x_addr[7:0]];  //scratchpad address 1F1xx
                        default : data_from_apb <= 16'h0000;
                     endcase
                     state <= S_APB_RD2; 
                   end
                   else
                    state <= S_READ1;
                   end
                
                S_READ1 : begin   //push the address to the APB 
                   a_paddr <= {upper_addr_bits, x_addr [15:1], 2'b0} ;  //restore bits 1 and 0 
				   a_req <= 1'b1;
                   state <= S_APB_REQ;
                end
				
				S_APB_RD0 : begin
				   a_penable <= 1'b1;
				   timeout_counter <= 8'b0;
				   state <= S_APB_RD1;
				end
				
				S_APB_RD1 : begin
					 timeout_counter <= timeout_counter +1;
					  if ((timeout_counter == 8'hFF || (a_pslverr == 1'b1)) ) begin
				        state <= S_ERROR;
				      end
					  else if (a_pready == 1'b1) begin   // transaction completed
					    
					    if (rmw) begin
					        a_pwdata <= {a_apb_prdata[31:16], x_data};  // update the write data 
					        rmw <= 1'b0;                          // clear the read-modify-write
					        a_req <= 1'b1;                        // submit a new request  , don't need to change the address
					        timeout_counter <= 8'b0;
					        state <= S_APB_REQ;                  // next operation will be a write, with the current upper 16 bit data 
					      end
					      
					      else    // normal read operation, send the data back to the XSDB port
					      begin
                            
                            state <= S_APB_RD2;
                            a_penable <= 1'b0;
                            a_psel <= 1'b0;
                            data_from_apb <= a_apb_prdata; 
                            timeout_counter <= 8'b0;	
					    	end 					
						end		
				       else
					    state <= S_APB_RD1; // else stay here
				end
				
				
				
                S_APB_RD2 : begin   //send the data back to the APB bus
                   if (x_addr[16] == 1'b1) begin //send back 16 bits only, this is XSDB specific region
                      x_data_to_xsdb <= data_from_apb [15:0];
                      end 
                   else
                     if (x_addr[0] == 1'b0)
                        x_data_to_xsdb <= data_from_apb[15:0];
                      else 
                        x_data_to_xsdb <= data_from_apb[31:16];                    
                                         
                   state <= S_IDLE;  
				   a_penable <= 1'b0;
                   x_rdy <= 1'b1;               // tell xsdb the data is ready  
                   a_req <= 1'b0;               // de-assert the request port  
                end
				 
                default: begin  // Fault Recovery
                   state <= S_IDLE;
            end
             endcase

  endmodule