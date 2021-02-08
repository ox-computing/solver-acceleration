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
      
      // Variable to measure number of times InitialiseImpl executed
      static int times_run = 0;
      times_run++;
      
      gettimeofday(&tstart,0);
      
      printf("INFO: Initialising IMPL \n");
      
      if((times_run % 3) == 1){
      
      // Read in xclbin path from options
      printf("INFO: Loading xclbin \n");
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
      
      }
      
      gettimeofday(&tend,0);
      
      int time = diff(&tend, &tstart);
      
      static int impl_iteration = 0;
      impl_iteration++;
      
      static FILE* fk = fopen("impl_timings_interface.txt","w");
      
      fprintf(fk,"\n*** InitializeImpl : %d ***\n", impl_iteration);
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
       
       if(matrix_dimension > MAXN)
       {
           printf("ERROR : Matrix size of %d exceed maximum \n",matrix_dimension);
           return SYMSOLVER_FATAL_ERROR;
       }
       
       // Create the array to store the values
       if( val_ != nullptr )
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
       static int multisolve_iteration = 0;
       multisolve_iteration++;
       
       
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
       
       // Allocate memory for ia, ja and the values
       int vals_size;
       int ia_size;
       int ja_size;
       
        if(new_matrix)
        {
            //dataA_size = matrix_dimension*matrix_dimension;
            
            vals_size = matrix_nonzeros;
            ia_size = matrix_nonzeros;
            ja_size = matrix_nonzeros;
        }
        else
        {
            vals_size = 1;
            ia_size = 1;
            ja_size = 1;
        }
        
        double * A_vals;
        A_vals = aligned_alloc<double>(vals_size);
        
        Index * ia_alloc;
        ia_alloc = aligned_alloc<Index>(ia_size);
        
        Index * ja_alloc;
        ja_alloc = aligned_alloc<Index>(ja_size);
        
        
        if(new_matrix)
        {
           
           for(int i = 0; i < matrix_nonzeros; i++)
           {
               A_vals[i] = val_[i];
               ia_alloc[i] = ia[i] - 1;
               ja_alloc[i] = ja[i] - 1;
           }
        }
        
        else
        {
            A_vals[0] = 0;
            ia_alloc[0] = 0;
            ja_alloc[0] = 0;
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
         cl::Buffer buffer_ia = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(Index) * ia_size, ia_alloc, NULL);
                            
         
         cl::Buffer buffer_ja = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(Index) * ja_size, ja_alloc, NULL);
                            
         
         cl::Buffer buffer_A_vals = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(double) * vals_size, A_vals, NULL);
                            
         
         cl::Buffer buffer_dataB = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(double) * dataB_size, dataB, NULL);
         
         // Data transfer from host to device
         
         q.enqueueMigrateMemObjects({buffer_ia, buffer_ja, buffer_A_vals, buffer_dataB}, 0); // 0 : migrate from host to dev
         q.finish();
         
         gettimeofday(&ttrans1,0);
         
         int new_matrix_int = new_matrix;
         
         int debug_mode = 0;
         
          // Setup kernel
          kernel_gelinearsolver_0.setArg(0, debug_mode);
          kernel_gelinearsolver_0.setArg(1, matrix_nonzeros);
          kernel_gelinearsolver_0.setArg(2, new_matrix_int);
          kernel_gelinearsolver_0.setArg(3, matrix_dimension);
          kernel_gelinearsolver_0.setArg(4, num_rhs);
          kernel_gelinearsolver_0.setArg(5, buffer_ia);
          kernel_gelinearsolver_0.setArg(6, buffer_ja);
          kernel_gelinearsolver_0.setArg(7, buffer_A_vals);
          kernel_gelinearsolver_0.setArg(8, buffer_dataB);
          q.finish();
          
          
          // Launch kernel
          q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
          q.finish();
          
          gettimeofday(&tlaunch,0);
          
          // Transfer data back to host
          
          q.enqueueMigrateMemObjects({buffer_dataB}, 1); // 1 : migrate from dev to host
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
          
          
          free(A_vals);
          free(ia_alloc);
          free(ja_alloc);
          free(dataB);
          
          
          if( HaveIpData() )
          {
             IpData().TimingStats().LinearSystemBackSolve().End();
          }
          
          
          // Check if singular
          bool solver_singular = false;
          
          if(std::isnan(rhs_vals[2]))
            {
                printf("INFO : Matrix singular \n");
                solver_singular = true;
            }
             
          
          gettimeofday(&tpost,0);
          
          int array_setup = diff(&tinit_array,&tstart);
          int trans1 = diff(&ttrans1,&tinit_array);
          int launch = diff(&tlaunch,&ttrans1);
          int trans2 = diff(&ttrans2,&tlaunch);
          int post =  diff(&tpost,&ttrans2);
          
          static FILE* fp = fopen("multisolve_timings_interface.txt","w");
          
          fprintf(fp,"\n*** Multisolve Timings : %d ***\n",multisolve_iteration);
          
          if(solver_singular)
          {
              fprintf(fp,"** Matrix singular ** \n");
          }
          
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
          
          if(solver_singular)
          {
              return SYMSOLVER_SINGULAR;
          }
          
          return SYMSOLVER_SUCCESS;
}


} //namespace Ipopt