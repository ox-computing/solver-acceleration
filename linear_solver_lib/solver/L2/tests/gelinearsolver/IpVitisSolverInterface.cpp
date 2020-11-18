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
  
  bool VitisSolverInterface::InitializeImpl(
      const OptionsList& options,
      const std::string& prefix
   ){
      // Read in xclbin path from options
      options.GetStringValue("vitis_xclbin",xclbin_path,prefix);
      
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
   
   
   
   ESymSolverStatus VitisSolverInterface::MultiSolve(
      bool         new_matrix,
      const Index* ia,
      const Index* ja,
      Index        nrhs,
      double*      rhs_vals,
      bool         check_NegEVals,
      Index        numberOfNegEVals
   ){
       
       /*********************
        Data Allocation
        *******************/
        
       // Allocate memory for A
       dataA_size = matrix_dimension*matrix_dimension;
       dataA = aligned_alloc<double>(dataA_size);
       
       // Create the values of the array A
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
       for(int i = 0; i < dataA_size; i++)
       {
           printf("Data A value %d : %f \n",i,dataA[i]);
       }
       
       // Allocate memory for B
       dataB_size = matrix_dimension;
       dataB = aligned_alloc<double>(dataB_size);
       
       // Assign the values of B
       for(int i = 0; i < dataB_size; i++){
           dataB[i] = rhs_vals[i];
       }
       
       /**************
        Device programming and triggering
        ************/
        // Find platform
        devices = xcl::get_xil_devices();
        device = devices[0];
        
        
        // Create context and queue
        context = cl::Context(device);
        q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
        devName = device.getInfo<CL_DEVICE_NAME>();
        printf("INFO: Found Device=%s\n", devName.c_str());
        
        // Binary file
        devices.resize(1);
        xclBins = xcl::import_binary_file(xclbin_path); 
        program = cl::Program(context, devices, xclBins);
        kernel_gelinearsolver_0 = cl::Kernel(program, "kernel_gelinearsolver_0");
        std::cout << "INFO: Kernel has been created" << std::endl;
          
        // Buffers
        buffer[0] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * dataA_size, dataA, NULL);
        buffer[1] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * dataB_size, dataB, NULL);
                 
                           
        
        // Data transfer from host to device
        kernel_evt[0].resize(1);
        kernel_evt[1].resize(1);
   
        ob_io.push_back(buffer[0]);
        ob_io.push_back(buffer[1]);
    
        q.enqueueMigrateMemObjects(ob_io, 0, nullptr, &kernel_evt[0][0]); // 0 : migrate from host to dev
        q.finish();
        
         // Setup kernel
         kernel_gelinearsolver_0.setArg(0, matrix_dimension);
         kernel_gelinearsolver_0.setArg(1, buffer[0]);
         kernel_gelinearsolver_0.setArg(2, buffer[1]);
         q.finish();
         
         
         // Launch kernel
         q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
         q.finish();
         
         
         // Transfer data back to host
         q.enqueueMigrateMemObjects(ob_io, 1, nullptr, nullptr); // 1 : migrate from dev to host
         q.finish();
         
         // Print the value of the solution
         for(int i = 0; i < dataB_size; i++){
         printf("Solution %d: %f \n",i,dataB[i]);
         }
         
         return SYMSOLVER_SUCCESS;
                
           
   }
  


















}