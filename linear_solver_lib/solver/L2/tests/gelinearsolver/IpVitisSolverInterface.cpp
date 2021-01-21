/*

Source for Vitis solver interface

*/

#include "IpVitisSolverInterface.hpp"


namespace Ipopt
{
  
  
  /*VitisSolverInterface::VitisSolverInterface(
  ){
  
      // Find platform
      devices = xcl::get_xil_devices();
      device = devices[0];
      
      
      // Create context and queue
      context(device);
      q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
      devName = device.getInfo<CL_DEVICE_NAME>();
      
      // Binary file
      xclbin_path = "kernel_solver_0.xclbin";
      xclBins = xcl::import_binary_file(xclbin_path); 
  }*/
  
  VitisSolverInterface::~VitisSolverInterface(){
      delete[] val_;
  }
  
  int VitisSolverInterface::SetBinaryPath(std::string binary_path){
      xclbin_path = binary_path;
      std::cout << "Xclbin Path : " << xclbin_path << std::endl;
      return 0;
  }
  
  void VitisSolverInterface::RegisterOptions(
   SmartPtr<RegisteredOptions> roptions
  ){
      roptions->AddStringOption3(
      "vitis_xclbin",
      "Sets the location of the xclbin file",
      "hw",
      "hw","Running on HW",
      "hw_emu", "Running on HW emulation",
      "sw_emu", "Running on SW emulation"  
      );
  }
  
  
  
  bool VitisSolverInterface::InitializeImpl(
      const OptionsList& options,
      const std::string& prefix
   ){
      // Time variables
      struct timeval tstart, tend;
      
      gettimeofday(&tstart,0);
      
      printf("INFO: Initialising IMPL \n");
      
      // Read in xclbin path from options
      printf("INFO: Running on HW \n");
      xclbin_path = "/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";
      
      /********************
      Device setup
      **************/
      
      // Find platform
      devices = xcl::get_xil_devices();
      device = devices[0];
      
      
      // Create context and queue
      context = cl::Context(device);
      q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
      devName = device.getInfo<CL_DEVICE_NAME>();
      printf("INFO: Found Device=%s\n", devName.c_str());
      
      // Binary file
      xclBins = xcl::import_binary_file(xclbin_path); 
      program = cl::Program(context, devices, xclBins);
      kernel_gelinearsolver_0 = cl::Kernel(program, "kernel_gelinearsolver_0");
      std::cout << "INFO: Kernel has been created" << std::endl;
      
      gettimeofday(&tend,0);
      
      int time = diff(&tend, &tstart);
      
      static int iteration_number = 0;
      iteration_number++;
      
      static FILE* fk = fopen("impl_timings_interface.txt","w");
      
      fprintf(fk,"\n*** InitializeImpl : %d ***\n", iteration_number);
      fprintf(fk,"Runtime : %d \n",time);
      
    
      return true;
      
   }
   
   
  ESymSolverStatus VitisSolverInterface::InitializeStructure(
      Index        dim,
      Index        nonzeros,
      const Index* ia,
      const Index* ja
   ){
       // Store variables and pointers for later use
       matrix_dimension = dim;
       matrix_nonzeros = nonzeros;
       
       // Create the array to store the values
       if( val_ != NULL )
       {
          delete[] val_;
       }
       val_ = new double[matrix_nonzeros];
       
       return SYMSOLVER_SUCCESS;
   }
   
   
   double* VitisSolverInterface::GetValuesArrayPtr(){
       //printf("INFO : IPOPT requesting values \n");
       return val_;
   }
   
   
   ESymSolverStatus VitisSolverInterface::MultiSolve(
      bool         new_matrix,
      const Index* ia,
      const Index* ja,
      Index        nrhs,
      double*      rhs_vals,
      bool         check_NegEVals,
      Index        numberOfNegEVals
   ){
       
       // Keep track of function calls
       static int iteration_number = 0;
       iteration_number++;
       
       
       // Convert new_matrix to int
       int new_matrix_int = new_matrix;
       
       
       // Timing variables
       struct timeval tstart, tinit_array, ttrans1, tlaunch, ttrans2, tpost;
       
       gettimeofday(&tstart,0);
       
                     
       //printf("INFO : Multsolve \n");
       
       /*********************
        Data Allocation
        *******************/
        
       // Number of RHS
       num_rhs = nrhs;
       
       if( HaveIpData() )
       {
         IpData().TimingStats().LinearSystemBackSolve().Start();
       }
         
        // Allocate memory for A
        if(new_matrix_int == 1)
        {
            dataA_size = matrix_dimension*matrix_dimension;
        }
        else
        {
            dataA_size = 1;
        }
        
        double * dataA;
        dataA = aligned_alloc<double>(dataA_size);
        
        if(new_matrix_int == 1)
        {
        
           /************
            Convert A from Triplet to array
           *****************/
        
           // Populate the initial A array with zeros
            for(int i = 0; i < dataA_size; i++)
           {
              dataA[i] = 0;   
           }
           
           // Use the triplet format originally for MA27
           Index ia_nonoffset[matrix_nonzeros];
           Index ja_nonoffset[matrix_nonzeros];
           
           // Convert to 0 offset and populate matrix
           for(int i = 0; i < matrix_nonzeros; i++)
           {
               ia_nonoffset[i] = ia[i] - 1;
               ja_nonoffset[i] = ja[i] - 1;
               
               if(val_[i] != 0)
               {
                   dataA[matrix_dimension*ia_nonoffset[i] + ja_nonoffset[i]] = val_[i];
                   dataA[matrix_dimension*ja_nonoffset[i] + ia_nonoffset[i]] = val_[i];
               }
           }
           
        }
        
        else
        {
            dataA[0] = 0;
        }
        
        
        // Allocate memory for B
        dataB_size = matrix_dimension*num_rhs;
        double * dataB;
        dataB = aligned_alloc<double>(dataB_size);
   
        // Assign the values of B
        int counter = 0;
        for(int i = 0; i < matrix_dimension; i++){
            for(int k = 0; k < num_rhs; k++)
            {
                dataB[counter] = rhs_vals[i + k*matrix_dimension];
                counter++;
            }
        
        }
        
        
        gettimeofday(&tinit_array,0);
        
        /**************
         Buffer programming and triggering
         ************/
         
         // Setup buffers
         buffer[0] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(double) * dataA_size, dataA, NULL);
         buffer[1] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(double) * dataB_size, dataB, NULL);
         
                            
         
         // Data transfer from host to device
         
         q.enqueueMigrateMemObjects({buffer[0], buffer[1]}, 0, nullptr, &kernel_evt[0][0]); // 0 : migrate from host to dev
         q.finish();
         
         gettimeofday(&ttrans1,0);
         
         int debug_mode = 0;
         
          // Setup kernel
          kernel_gelinearsolver_0.setArg(0, new_matrix_int);
          kernel_gelinearsolver_0.setArg(1, debug_mode);
          kernel_gelinearsolver_0.setArg(2, num_rhs);
          kernel_gelinearsolver_0.setArg(3, matrix_dimension);
          kernel_gelinearsolver_0.setArg(4, buffer[0]);
          kernel_gelinearsolver_0.setArg(5, buffer[1]);
          q.finish();
          
          
          // Launch kernel
          q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
          q.finish();
          
          gettimeofday(&tlaunch,0);
          
          // Transfer data back to host
          
          q.enqueueMigrateMemObjects({buffer[1]}, 1, nullptr, nullptr); // 1 : migrate from dev to host
          q.finish();
          
          gettimeofday(&ttrans2,0);
          
        
          // Return the value of the solution to rhs_values
          counter = 0;
          for(int i = 0; i < nrhs; i++){
              for(int k = 0; k < matrix_dimension; k++)
              {
                  rhs_vals[counter] = dataB[i + k*nrhs];
                  counter++;
              }
          }
          
          
          free(dataA);
          free(dataB);
          
          
          if( HaveIpData() )
          {
             IpData().TimingStats().LinearSystemBackSolve().End();
          }
          
          
          // Check if singular
          for(int i = 0; i < dataB_size; i++)
          {
              if(std::isnan(rhs_vals[i]))
              {
                  printf("INFO : Matrix singular \n");
                  return SYMSOLVER_SINGULAR;
              }
          } 
          
          gettimeofday(&tpost,0);
          
          int array_setup = diff(&tinit_array,&tstart);
          int trans1 = diff(&ttrans1,&tinit_array);
          int launch = diff(&tlaunch,&ttrans1);
          int trans2 = diff(&ttrans2,&tlaunch);
          int post =  diff(&tpost,&ttrans2);
          
          static FILE* fp = fopen("multisolve_timings_interface.txt","w");
          
          fprintf(fp,"\n*** Multisolve Timings : %d ***\n",iteration_number);
          
          fprintf(fp,"Matrix dimension : %d \n",matrix_dimension);
          
          if(new_matrix)
          {
              fprintf(fp,"New Matrix TRUE \n");
          }
          else 
          {
              fprintf(fp,"New Matrix FALSE \n");
          }
          
          fprintf(fp,"Array initialise : %d \n",array_setup);
          fprintf(fp,"First transfer : %d \n", trans1);
          fprintf(fp,"Launch : %d \n", launch);
          fprintf(fp,"Second transfer : %d \n", trans2);
          fprintf(fp,"Post : %d \n", post);
          
          return SYMSOLVER_SUCCESS;
}


} //namespace Ipopt