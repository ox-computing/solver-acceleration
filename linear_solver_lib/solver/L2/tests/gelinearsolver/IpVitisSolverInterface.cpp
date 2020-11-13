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
  
  bool VitisSolverInterface::InitializeImpl(
      const OptionsList& options,
      const std::string& prefix
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
       val_ = new double[nonzeros];
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
       // Allocate memory for A
       dataA = aligned_alloc<double>(matrix_dimension*matrix_dimension);
       
       // Create the values of the array A
       Index row_nonzeros[matrix_dimension];
       
       // Find the number of nonzero elements in each row
       for(i = matrix_dimension; i >= 0; i--){
           row_nonzeros[i-1] = ia[i] - ia[i-1];
       }
       
       // Populate the dataA array
       for(i = 0; i < matrix_dimension*matrix_dimension; i++){
             dataA[i] = 0;
       }
       
       // For each row
       for(i = 0; i < matrix_dimension; i++)
           // Check if there are any nonzero terms
           if(row_nonzeros[i] != 0)
           {
               // Read off the columns the data is in
               for(k = counter; k < row_nonzeros[counter+i]; k++)
               {
                   dataA[matrix_dimension*i + ja[k]] = val_[k];
               }
           }
       
       
   }
  


















}