`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2017 03:56:53 PM
// Design Name: 
// Module Name: xsdb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

 module xsdb_top #(
    parameter PLL_CSV_VER = 16'h0001,
    parameter MC_CSV_VER = 16'h0002,
    parameter PHY_CSV_VER = 16'h0001,
    parameter HBM_STACK_CSV_VER = 16'h0001,
    parameter HBM_STACK_NUM = 16'h0000,
    parameter HBM_CLOCK_FREQ = 16'h0000,
    parameter INT_VERSION = 16'h0003,
    parameter SWITCH_EN = 16'h0000,
    parameter AXI_SW_CLK = 16'h0000,
    parameter PLL_REF_CLK = 16'h0000
   )
   (
    input clkb,
    (* DONT_TOUCH = "true" *) input wire [36:0] sl_iport0,
    (* DONT_TOUCH = "true" *) output wire [16:0] sl_oport0,   
    output [240:0]  x2a_debug,
    input  [6:0]    TEMP_STATUS,
    input           CATTRIP,
    input           APB_COMPLETE,
    input           XSDB_APB_GRANT,
    input  [31:0]   XSDB_APB_PRDATA,
    input           XSDB_APB_PREADY,
    input           XSDB_APB_PSLVERR,
    output          XSDB_APB_PREQ,
    output          XSDB_APB_PSEL,
    output          XSDB_APB_PWRITE,
    output          XSDB_APB_PENABLE,
    output [21:0]   XSDB_APB_PADDR,
    output [31:0]   XSDB_APB_PWDATA
    );

wire s_rst;
wire s_dclk;
wire s_den;
wire s_dwe;
wire [16:0] s_daddr;
wire [15:0] s_di;
wire [15:0] s_do;
wire s_drdy;

(* DONT_TOUCH = "true" *) hbm_v1_0_5_chipscope_xsdb_slave 
#(
    .C_XDEVICEFAMILY   ("virtexu"),
    .C_MAJOR_VERSION   (2018),//  = 11,  // ise major version
    .C_MINOR_VERSION   (3),//        = 1,   // ise minor version
    .C_BUILD_REVISION  (0),//        = 0,   // ise service pack
    .C_CORE_TYPE       (16'h0009),//        = 8,   // root coregen type 
    .C_CORE_MAJOR_VER  (1),//        = 1,   // root coregen core major version
    .C_CORE_MINOR_VER  (0),//        = 0,   // root corgen core minor version
    .C_XSDB_SLAVE_TYPE (16'h0091),//    = 82,   // XSDB Slave Type
    .C_NEXT_SLAVE      (1'b0),//        = 0,   // Next slave Relative reference neighbor which is part of the core.
    .C_CSE_DRV_VER     (16'h0002),//    = 2,   // CSE Slave driver version
    .C_USE_TEST_REG    (1),//    = 1,   // Set to 1 to use test reg
    .C_PIPE_IFACE      (1),//        = 1,   // Set to 1 to add pipe delay to XSDB interface signals
    .C_CORE_INFO1      (0),//        = 0,
    .C_CORE_INFO2      (0) //        = 0)
) U_XSDB_SLAVE (
    .s_rst_o(s_rst),
    .s_dclk_o(s_dclk),  //s_dclk
    .s_den_o(s_den),  //s_den
    .s_dwe_o(s_dwe),  //s_dwe
    .s_daddr_o(s_daddr), //s_daddr
    .s_di_o(s_di),  //s_di
    .sl_iport_i(sl_iport0), // ports, need to route up to core wrapper
    .sl_oport_o(sl_oport0), // ports, need to route up to core wrapper
    .s_do_i(s_do), //s_do
    .s_drdy_i(s_drdy)
  );
 
xsdb2apb #( 
   .PLL_CSV_VER (PLL_CSV_VER),
   .MC_CSV_VER (MC_CSV_VER),
   .PHY_CSV_VER (PHY_CSV_VER),
   .HBM_STACK_CSV_VER (HBM_STACK_CSV_VER),
   .HBM_CLOCK_FREQ (HBM_CLOCK_FREQ),
   .HBM_STACK_NUM (HBM_STACK_NUM),
   .APB_ADDR_WIDTH (22),
   .APB_DATA_WIDTH (32),
   .INT_VERSION (INT_VERSION),
   .SWITCH_EN (SWITCH_EN),
   .AXI_SW_CLK (AXI_SW_CLK),
   .PLL_REF_CLK (PLL_REF_CLK)
   )
  xsdb2adb_u0 (
 .clk (s_dclk), 
 .rst (1'b0),
 .temp_status (TEMP_STATUS),
 .cattrip (CATTRIP),
 .apb_complete (APB_COMPLETE),
 .x_clk (s_dclk),
 .x_en (s_den),
 .x_we (s_dwe),
 .x_addr (s_daddr),
 .x_data (s_di),
 .x_data_to_xsdb (s_do),
 .x_rdy (s_drdy),
 .a_grant (XSDB_APB_GRANT),
 .a_apb_prdata (XSDB_APB_PRDATA),
 .a_pready (XSDB_APB_PREADY),
 .a_pslverr (XSDB_APB_PSLVERR),
 .a_req (XSDB_APB_PREQ),
 .a_psel (XSDB_APB_PSEL),
 .a_pwrite (XSDB_APB_PWRITE),
 .a_penable (XSDB_APB_PENABLE),
 .a_paddr (XSDB_APB_PADDR),
 .a_pwdata (XSDB_APB_PWDATA),
 .x2a_debug (x2a_debug)
 );
  
endmodule
