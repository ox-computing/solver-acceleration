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
      std::string xclbin_path = "/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";
      
      
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
       
       
       // Timing variables
       struct timeval tstart, tinit_array, ttrans1, tlaunch, ttrans2, tpost;
       
       gettimeofday(&tstart,0);
       
       /*********************
        Data Allocation
        *******************/
       
       // IPOPT timing
       if( HaveIpData() )
       {
         IpData().TimingStats().LinearSystemBackSolve().Start();
       }
       
           /**********
         Data allocation
         **********/
         
       
       // Allocate memory for ia, ja and the values
       int vals_size;
       int ia_size;
       int ja_size;
       
        // Set size as nonzeros if new matrix flag or one otherwise
        if(new_matrix)
        {   
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
        

        // Initilialise and allocate pointers
        double * A_vals;
        A_vals = aligned_alloc<double>(vals_size);
        
        Index * ia_alloc;
        ia_alloc = aligned_alloc<Index>(ia_size);
        
        Index * ja_alloc;
        ja_alloc = aligned_alloc<Index>(ja_size);
        
        
        // Assign values provided by IPOPT to allocated
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
       
        // Error handling from kernel
        int* return_values;
        return_values = aligned_alloc<int>(2);
        return_values[0] = 0;
        return_values[1] = 0;
        
         // Fill b
        double* b;
        b = aligned_alloc<double>(matrix_dimension * nrhs);
        
        for(int i = 0; i < An * nrhs; i++)
        {
            b[i] = rhs_vals[i];
        }
        
        
       // Initalise QDLDL variables
       /* QDLDL_int An = matrix_dimension;
        
        QDLDL_int* Ap; 
        QDLDL_int* Ai;
        QDLDL_float* Ax;
        QDLDL_float* b;
        
        Ap = aligned_alloc<QDLDL_int>(An + 1);
        b = aligned_alloc<QDLDL_float>(An * nrhs);
        
        // Error handling from kernel
        QDLDL_int* return_values;
        return_values = aligned_alloc<QDLDL_int>(2);
        return_values[0] = 0;
        return_values[1] = 0;
        
        
        // Initalise Ap to zero
        for(int i = 0; i < An + 1; i++)
        {
            Ap[i] = 0;
        }*/
       
       /******
        Form up matrix
        *********/
        
        // First initialise and zero
       /*QDLDL_float A_matrix[An][An];
       
       for(int i = 0; i < An; i++)
       {
           for(int j = 0; j < An; j++)
           {
               A_matrix[i][j] = 0.0;
           }
       }
       
       // Fill upper half
       for(int r = 0; r < matrix_nonzeros; r++)
       {   
             if((ja[r] - 1) <= (ia[r] - 1))
             {
                 A_matrix[ja[r] - 1][ia[r] - 1] += val_[r];
             }
             else
             {
                 A_matrix[ia[r] - 1][ja[r] - 1] += val_[r];
             }
       }*/
       
       
       /*******
       Form up CSC arrays
       *********/
       
       /*int fill_counter = 0;
       
       QDLDL_int Ai_init[matrix_nonzeros];
       QDLDL_float Ax_init[matrix_nonzeros];
       
       // Read off values into CSC format
       for(int c = 0; c < An; c++)
       {
           for(int r = 0; r <= c; r++)
           {
               if(A_matrix[r][c] != 0)
               {   
                   Ai_init[fill_counter] = r;
                   Ax_init[fill_counter] = A_matrix[r][c];
                   
                   fill_counter++; 
               }
           }
           
           Ap[c + 1] = fill_counter;
           
           //printf("Ap : %d \n",Ap[c+1]);
       
       }
       
       // Pass to aligned values
       Ai = aligned_alloc<QDLDL_int>(fill_counter);
       Ax = aligned_alloc<QDLDL_float>(fill_counter);
       
       for(int i = 0; i < fill_counter; i++)
       {
           Ai[i] = Ai_init[i];
           Ax[i] = Ax_init[i];
       
       }*/
        
       
        
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
                            
         
         cl::Buffer buffer_b = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(double) * matrix_dimension * nrhs, b, NULL);
                            
         
         cl::Buffer buffer_return = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                            sizeof(int) * 2, return_values, NULL);
         
         kernel_gelinearsolver_0.setArg(0, new_matrix);
         kernel_gelinearsolver_0.setArg(1, nrhs);
         kernel_gelinearsolver_0.setArg(2, matrix_nonzeros);
         kernel_gelinearsolver_0.setArg(3, matrix_dimension);
         kernel_gelinearsolver_0.setArg(4, buffer_ia);
         kernel_gelinearsolver_0.setArg(5, buffer_ja);
         kernel_gelinearsolver_0.setArg(6, buffer_A_vals);
         kernel_gelinearsolver_0.setArg(7, buffer_b);
         kernel_gelinearsolver_0.setArg(8, buffer_return);
        
         
         // Data transfer from host to device
         q.enqueueMigrateMemObjects({buffer_ia, buffer_ja, buffer_A_vals, buffer_b}, 0); // 0 : migrate from host to dev
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
          
        
          // IPOPT timing
          if( HaveIpData() )
          {
             IpData().TimingStats().LinearSystemBackSolve().End();
          }
          
          
          /***********
           Error checking
           ***********/
           
          bool solver_singular = false;
          
          
          if(return_values[0] == -1)
          {   
              solver_singular = true;
          }
          else if(return_values[1] == -1)
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
          
          
          /*********
          Return Values
          **********/
          
          if(!solver_singular)
          {
             for(int i = 0; i < An * nrhs; i++)
             {
                 rhs_vals[i] = b[i];
             }
          }
          
          
          /*********
          Clean Up
          ***********/
          
          free(Ap);
          free(Ai);
          free(Ax);
          free(b);
          free(return_values);
          
          
          if(solver_singular)
          {
              return SYMSOLVER_SINGULAR;
          }
          
          return SYMSOLVER_SUCCESS;
}


} //namespace Ipopt