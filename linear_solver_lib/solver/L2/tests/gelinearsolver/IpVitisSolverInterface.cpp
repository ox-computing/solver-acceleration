/*

Source for Vitis solver interface

*/

#include "IpVitisSolverInterface.hpp"



namespace Ipopt
{
  
  // Destructor
  VitisSolverInterface::~VitisSolverInterface(){
  
      // Delete A values pointer
      delete[] val_;
  }
  
  // Set Binary path
  int VitisSolverInterface::SetBinaryPath(std::string binary_path){
      xclbin_path = binary_path;
      std::cout << "Xclbin Path : " << xclbin_path << std::endl;
      return 0;
  }
  
  // Retrive options from IPOPT
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
  
  
  // Initialise device and kernel
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
      

      // Only execute every third call of InitialiseImpl
      if((times_run % 3) == 1){
      
      /********************
      Device setup
      **************/
      
      // Read in xclbin path from options
      printf("INFO: Loading xclbin \n");
      xclbin_path = "/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";
      
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
      
      //int time = diff(&tend, &tstart);
      
      /*****
      Store timing values
      *******/
      
      //static int impl_iteration = 0;
      //impl_iteration++;
      
      /*******
      Store timings
      *********/
      
      //static FILE* fk = fopen("impl_timings_interface.txt","w");
      
      //fprintf(fk,"\n*** InitializeImpl : %d ***\n", impl_iteration);
     //fprintf(fk,"Runtime : %d \n",time);
      
    
      return true;
      
   }
   

   
   // Initialise A matrix strucutre
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
   

   
   // Called by IPOPT for pointer which it fills with values
   double* VitisSolverInterface::GetValuesArrayPtr(){
       return val_;
   }
   
   
   
   // Solve linear problem
   ESymSolverStatus VitisSolverInterface::MultiSolve(
      bool         new_matrix,
      const Index* ia,
      const Index* ja,
      Index        nrhs,
      double*      rhs_vals,
      bool         check_NegEVals,
      Index        numberOfNegEVals
   ){

       Jnlst().Printf(J_DETAILED, J_LINEAR_ALGEBRA,
                           "Vitis : Multisolve \n");
                           
       // Keep track of number of function calls
       static int multisolve_iteration = 0;
       multisolve_iteration++;
       
       if(multisolve_iteration == 2)
       {
           for(int i = 0; i < matrix_nonzeros; i++)
            {
            
                printf("%d %d %f \n",ia[i],ja[i],val_[i]);
                
            }
       }
       
       
       // Timing variables
       struct timeval tstart, tinit_array, ttrans1, tlaunch, ttrans2, tpost;
       
       gettimeofday(&tstart,0);
       
       /*********************
        Data Allocation
        *******************/
        

       // Store number of RHS in class
       num_rhs = nrhs;
       
       // IPOPT timing
       if( HaveIpData() )
       {
         IpData().TimingStats().LinearSystemBackSolve().Start();
       }
           
        QDLDL_int An = matrix_dimension;
        
        QDLDL_int* Ap; 
        QDLDL_int* Ai;
        QDLDL_float* Ax;
        QDLDL_float* b;
        
        Ap = aligned_alloc<QDLDL_int>(An + 1);
        Ai = aligned_alloc<QDLDL_int>(matrix_nonzeros);
        Ax = aligned_alloc<QDLDL_float>(matrix_nonzeros); 
        b = aligned_alloc<QDLDL_float>(An*num_rhs);
        
        // Error handling from kernel
        QDLDL_int* return_values;
        return_values = aligned_alloc<QDLDL_int>(2);
        return_values[0] = 0;
        return_values[1] = 0;
        
        
        // Initalise Ap to zero
        for(int i = 0; i < An + 1; i++)
        {
            Ap[i] = 0;
        
        }
        
        int current_ia = 0;
        int current_ja = 0;
        int counter = 0;
        
        
        // Transpose values and fill
        for(int i = 0; i < matrix_nonzeros; i++)
        {
            bool already_visited = false;
            
            current_ia = ja[i] - 1;
            current_ja = ia[i] - 1;
            
            // Determine if we have already stored a value at this location
            for(int r = Ap[current_ja] + 1; r <= Ap[current_ja + 1]; r++)
            {
                if(Ai[r] == current_ia)
                {
                    // Add value
                    Ax[r] += val_[i];
                    
                    // Do not implement new Ap increase
                    already_visited = true;
                } 
            
            } 
            
            if(!already_visited)
            {
         
               for(int j = current_ja + 1; j < An + 1; j++)
               {
                   Ap[j]++;
               }
               
               Ai[counter] = current_ia;
               Ax[counter] = val_[i];
               
               counter++;
               
           }
        }
        
        //for(int i = 0; i < An + 1; i++)
        //{
        //    for(int j = Ap[i] + 1; j =< Ap[i+1]; j++)
        //    {
        //        int row = Ai[j];
                
        //    }
        
        
       // }
        
        // Fill b
        for(int i = 0; i < An*num_rhs; i++)
        {
            b[i] = rhs_vals[i];
        
        }
        
       
        
        gettimeofday(&tinit_array,0);
        
        /**************
         Buffer programming and triggering
         ************/
         
         // Setup buffers
         cl::Buffer buffer_Ap = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(QDLDL_int) * (An+1), Ap, NULL);
                            
         
         cl::Buffer buffer_Ai = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(QDLDL_int) * matrix_nonzeros, Ai, NULL);
                            
         
         cl::Buffer buffer_Ax = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(QDLDL_float) * matrix_nonzeros, Ax, NULL);
                            
         
         cl::Buffer buffer_b = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(QDLDL_float) * An, b, NULL);
                            
         cl::Buffer buffer_return = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(QDLDL_int) * 2, return_values, NULL);
         
         kernel_gelinearsolver_0.setArg(0, num_rhs);
         kernel_gelinearsolver_0.setArg(1, An);
         kernel_gelinearsolver_0.setArg(2, buffer_Ap);
         kernel_gelinearsolver_0.setArg(3, buffer_Ai);
         kernel_gelinearsolver_0.setArg(4, buffer_Ax);
         kernel_gelinearsolver_0.setArg(5, buffer_b);
         kernel_gelinearsolver_0.setArg(6, buffer_return);
        
         
         // Data transfer from host to device
         q.enqueueMigrateMemObjects({buffer_Ap, buffer_Ai, buffer_Ax, buffer_b}, 0); // 0 : migrate from host to dev
         q.finish();
         
         gettimeofday(&ttrans1,0);

         
          
          
          // Launch kernel
          q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
          q.finish();
          
          gettimeofday(&tlaunch,0);
          
          // Transfer data back to host
          q.enqueueMigrateMemObjects({buffer_b, buffer_return}, 1); // 1 : migrate from dev to host
          q.finish();
          
          gettimeofday(&ttrans2,0);
          
        

          // Return the value of the solution to rhs_values
          for(int i = 0; i < An; i++)
          {
          
              rhs_vals[i] = b[i];
          
          }
          
          printf("Etree, Decomp return : %d %d \n",return_values[0],return_values[1]);
          

          // Free allocated variables
          free(Ap);
          free(Ai);
          free(Ax);
          free(b);
        
          // IPOPT timing
          if( HaveIpData() )
          {
             IpData().TimingStats().LinearSystemBackSolve().End();
          }
          
          
          // Check if singular
          bool solver_singular = false;
          
          
          if(return_values[1] == -1)
          {
              
              solver_singular = true;
          
          }
          
          gettimeofday(&tpost,0);
          

          /***********
          Storing timing data to txt file
          *************/
          
          int array_setup = diff(&tinit_array,&tstart);
          int trans1 = diff(&ttrans1,&tinit_array);
          int launch = diff(&tlaunch,&ttrans1);
          int trans2 = diff(&ttrans2,&tlaunch);
          int post =  diff(&tpost,&ttrans2);
          
          FILE* fp = fopen("multisolve_timings_interface_zeroing.txt","a");
          
          if(multisolve_iteration == 1)
          {
              fprintf(fp,"\n \n ***** New Run ******* \n \n");
          }
          
          fprintf(fp,"\n*** Multisolve Timings : %d ***\n",multisolve_iteration);
          
          if(solver_singular)
          {
              fprintf(fp,"** Matrix singular ** \n");
          }
          
          fprintf(fp,"Matrix dimension : %d \n",matrix_dimension);
          
          fprintf(fp,"Matrix Nonzeros : %d \n",matrix_nonzeros);
          
          fprintf(fp,"Num RHS : %d \n", nrhs);
          
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
          
          fclose(fp);
          
          if(solver_singular)
          {
              return SYMSOLVER_SINGULAR;
          }
          
          return SYMSOLVER_SUCCESS;
}


} //namespace Ipopt