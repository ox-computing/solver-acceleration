/*

Header file for the interface to the Vitis library solver
Base class is SparseSymLinearSolver

*/

#ifndef __IPVITISSOLVERINTERFACE_HPP_
#define __IPVITISSOLVERINTERFACE_HPP_

#include <iostream>
#include <string.h>
#include <sys/time.h>
#include <algorithm>
#include <cmath>

#include "xcl2.hpp"

#include "IpSparseSymLinearSolverInterface.hpp"

namespace Ipopt
{
class VitisSolverInterface: public SparseSymLinearSolverInterface
{
private:
  
  // Memory allocator
    template <typename T>
  T* aligned_alloc(std::size_t num) {
      void* ptr = nullptr;
      if (posix_memalign(&ptr, 4096, num * sizeof(T))) {
          throw std::bad_alloc();
      }
      return reinterpret_cast<T*>(ptr);
  }
  
  // Time difference
  unsigned long diff(const struct timeval* newTime, const struct timeval* oldTime) {
    return (newTime->tv_sec - oldTime->tv_sec) * 1000000 + (newTime->tv_usec - oldTime->tv_usec);
  }
  
  
  // Matrix variables
  int numneg_; // Number of negative eigenvalues
  double * val_; // Ptr for values
  
  Index matrix_nonzeros; // Number of non zeros values in A
  Index matrix_dimension; // Dimension of A
  Index num_rhs;     // The number of different RHS we are solving
  int dataA_size;    // Size of array A
  int dataB_size;    // Size of array B
  
  // OpenCL variables
  std::string xclbin_path; // Path for FPGA binary file
  cl::Device device; // Chosen device
  
  cl::Context context; // OpenCL context
  cl::CommandQueue q; // OpenCL q
  std::string devName; // Device name string
  
  cl::Program::Binaries xclBins; // OpenCL binaries
  cl::Program program; // OpenCL programme
  cl::Kernel kernel_gelinearsolver_0; // Device kernel
  
  std::vector<cl::Device> devices; // Vector of devices
  std::vector<cl::Buffer> buffer; // Device buffer vector
  std::vector<std::vector<cl::Event>> kernel_evt; // Kernel event vector
  std::vector<cl::Memory> ob_io; // IO device vector
  
  // Time variables
  struct timeval tstart, tinit_parse, tplatform_setup, tbuffer_setup, tbuffer_transfer1, tkernel_setup, tkernel_launch, tbuffer_transfer2; // Variables to measure time



public:


  // Constructor
  VitisSolverInterface():val_(NULL),devices(1),buffer(2),kernel_evt(2),ob_io(2)
  {
      kernel_evt[0].resize(1);
      kernel_evt[1].resize(1);
  };
  
  static void RegisterOptions(
      SmartPtr<RegisteredOptions> roptions
   );
  
  
  // Destructor
  ~VitisSolverInterface();
  
  // Set xclbin path
  int SetBinaryPath(std::string binary_path);
  
  
  
  bool InitializeImpl(
      const OptionsList& options,
      const std::string& prefix
   );
   
   
   ESymSolverStatus InitializeStructure(
      Index        dim,
      Index        nonzeros,
      const Index* ia,
      const Index* ja
   );

   double* GetValuesArrayPtr();

   ESymSolverStatus MultiSolve(
      bool         new_matrix,
      const Index* ia,
      const Index* ja,
      Index        nrhs,
      double*      rhs_vals,
      bool         check_NegEVals,
      Index        numberOfNegEVals
   );
   
   
   
   
   Index NumberOfNegEVals() const
   {
      return numneg_;
   }
   //@}


   //* @name Options of Linear solver */
   //@{
   bool IncreaseQuality()
   {
     return false;
   }

   
   
   bool ProvidesInertia() const
   {
      return false;
   }

   
   
   EMatrixFormat MatrixFormat() const
   {
      return Triplet_Format;
   }
   //@}



   /** @name Methods related to the detection of linearly dependent
    *  rows in a matrix */
   //@{
   bool ProvidesDegeneracyDetection() const
   {
      return false;
   }



   ESymSolverStatus DetermineDependentRows(
      const Index*      /*ia*/,
      const Index*      /*ja*/,
      std::list<Index>& /*c_deps*/
   )
   {
      return SYMSOLVER_FATAL_ERROR;
   }
   
};

} //namespace ipopt


#endif
   
   
