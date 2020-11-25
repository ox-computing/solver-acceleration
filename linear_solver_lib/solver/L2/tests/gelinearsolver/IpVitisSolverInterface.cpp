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
      free(dataA);
      free(dataB);
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
      printf("INFO: Initialising IMPL \n");
      
      // Read in xclbin path from options
      std::string run_type;
      //options.GetStringValue("vitis_xclbin",run_type,prefix);
      if(run_type == "hw_emu")
      {
          printf("INFO: Running on HW_EMU \n");
          xclbin_path = "build_dir.hw_emu.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";
      }
      else if(run_type == "sw_emu")
      {
          printf("INFO: Running on SW_EMU \n");
          xclbin_path = "build_dir.sw_emu.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";  
      }
      else
      {
          printf("INFO: Running on HW \n");
          xclbin_path = "build_dir.hw.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver.xclbin";
      }
      
      /********************
      Device setup
      **************/
      
      // Find platform
      std::vector<cl::Device> devices = xcl::get_xil_devices();
      device = devices[0];
      
      
      // Create context and queue
      context = cl::Context(device);
      q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
      devName = device.getInfo<CL_DEVICE_NAME>();
      printf("INFO: Found Device=%s\n", devName.c_str());
      
      // Binary file
      xclBins = xcl::import_binary_file(xclbin_path);
      devices.resize(1); 
      program = cl::Program(context, devices, xclBins);
      kernel_gelinearsolver_0 = cl::Kernel(program, "kernel_gelinearsolver_0");
      std::cout << "INFO: Kernel has been created" << std::endl;
    
      return true;
      
   }
   
   
  ESymSolverStatus VitisSolverInterface::InitializeStructure(
      Index        dim,
      Index        nonzeros,
      const Index* ia,
      const Index* ja
   ){
       printf("INFO: Initialising structure \n");
       
       // Store variables and pointers for later use
       matrix_dimension = dim;
       matrix_nonzeros = nonzeros;
       
       // Create the array to store the values
       if( val_ != NULL )
       {
          delete[] val_;
       }
       val_ = new double[matrix_nonzeros];
       
       printf("INFO: Done with that \n");
       
       return SYMSOLVER_SUCCESS;
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
       printf("INFO: Running linear solver \n");
       /*********************
        Data Allocation
        *******************/
        
       // Number of RHS
       num_rhs = nrhs;
       
       // Allocate memory for A
       dataA_size = matrix_dimension*matrix_dimension;    
       dataA = aligned_alloc<double>(dataA_size);      
       
       /************
        Convert A from CSR to array
       *****************/
       
       Index row_nonzeros[matrix_dimension];
       
       // Find the number of nonzero elements in each row
       for(int i = matrix_dimension; i >= 0; i--){
           row_nonzeros[i-1] = ia[i] - ia[i-1];
       }
       
       // Populate the dataA array
       for(int i = 0; i < dataA_size; i++){
             dataA[i] = 0;
       }
       
       // Create counter
       int column_counter = 0;
       
       // For each row
       for(int i = 0; i < matrix_dimension; i++){
           // Check if there are any nonzero terms
           if(row_nonzeros[i] != 0)
           {
               // Read off the columns the data is in
               for(int k = column_counter; k < column_counter + row_nonzeros[i]; k++)
               {
                   dataA[matrix_dimension*i + ja[k]] = val_[k];
               }
           }
           column_counter += row_nonzeros[i];
       }
       
       // Print the values of A
       /*for(int i = 0; i < dataA_size; i++)
       {
           printf("Data A value %d : %f \n",i,dataA[i]);
       }*/
       
       // Allocate memory for B
       dataB_size = matrix_dimension*num_rhs;
       dataB = aligned_alloc<double>(dataB_size);
  
       // Assign the values of B
       int counter = 0;
       for(int i = 0; i < matrix_dimension; i++){
           for(int k = 0; k < nrhs; k++)
           {
               dataB[counter] = rhs_vals[i + k*matrix_dimension];
               counter++;
           }
       
       }
       
       // Print the value of B
       /*for(int i = 0; i < dataB_size; i++){
           printf("Data B value %d : %f \n",i,dataB[i]);
       
       }*/
       
       /**************
        Buffer programming and triggering
        ************/
        
        // Setup buffers
        std::vector<cl::Buffer> buffer(2);
        buffer[0] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * dataA_size, dataA, NULL);
        buffer[1] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * dataB_size, dataB, NULL);
                 
                           
        
        // Data transfer from host to device
        std::vector<std::vector<cl::Event>> kernel_evt;
        kernel_evt[0].resize(1);
        kernel_evt[1].resize(1);
   
        std::vector<cl::Memory> ob_io;
        ob_io.push_back(buffer[0]);
        ob_io.push_back(buffer[1]);
        
        q.enqueueMigrateMemObjects(ob_io, 0, nullptr, &kernel_evt[0][0]); // 0 : migrate from host to dev
        q.finish();
        
         // Setup kernel
         kernel_gelinearsolver_0.setArg(0, num_rhs);
         kernel_gelinearsolver_0.setArg(1, matrix_dimension);
         kernel_gelinearsolver_0.setArg(2, buffer[0]);
         kernel_gelinearsolver_0.setArg(3, buffer[1]);
         q.finish();
         
         
         // Launch kernel
         q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
         q.finish();
         
         
         // Transfer data back to host
         q.enqueueMigrateMemObjects(ob_io, 1, nullptr, nullptr); // 1 : migrate from dev to host
         q.finish();
         
       
         // Return the value of the solution to rhs_values
         counter = 0;
         for(int i = 0; i < nrhs; i++){
             for(int k = 0; k < matrix_dimension; k++)
             {
                 rhs_vals[counter] = dataB[i + k*nrhs];
                 counter++;
             }
         }
  
         printf("INFO: End of linear solver \n");
         return SYMSOLVER_SUCCESS;
                
           
   }
  


















}