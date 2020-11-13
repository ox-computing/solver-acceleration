/*

Header file for the interface to the Vitis library solver
Base class is SparseSymLinearSolver

*/

#ifndef __IPVITISSOLVERINTERFACE_HPP_
#define __IPVITISSOLVERINTERFACE_HPP_

#include <iosteam>
#include <iostream>
#include <string.h>
#include <sys/time.h>
#include <algorithm>

#include "xcl2.hpp"

namespace Ipopt
{
class VitisSolverInterface: public SparseSymLinearSolverInterface
{
private:
  
  // Memory allocator
  double * aligned_alloc(std::size_t num){
    void * ptr = nullptr;
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
  int _numneg; // Number of negative eigenvalues
  double * _val; // Ptr for values
  
  // OpenCL variables
  std::string xclbin_path; // Path for FPGA binary file
  std::vector<cl::Device> devices // Vector of found devices
  cl::Device device // Chosen device
  
  cl::Context context; // OpenCL context
  cl::CommandQueue q; // OpenCL q
  std::string devName; // Device name string
  
  cl::Program::Binaries xclBins // OpenCL binaries
  cl::Program program; // OpenCL programme
  cl::Kernel kernel_gelinearsolver_0; // Device kernel
  
  std::vector<cl::Buffer> buffer(2); // Device buffers
  
  std::vector<std::vector<cl::Event> > kernel_evt(2); // Kernel events
  std::vector<cl::Memory> ob_io; // IO object for transfer
  
  // Time variables
  struct timeval tstart, tinit_parse, tplatform_setup, tbuffer_setup, tbuffer_transfer1, tkernel_setup, tkernel_launch, tbuffer_transfer2; // Variables to measure time



public:


  //Constructor
  VitisSolverInterface(){
  
  
  
  };
  
  
  
  
  
  
  //Destructor
  ~VitisSolverInterface();
  
  
  
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

   double* GetValuesArrayPtr()
   {
      return val_;
   }

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
      return CSR_Full_Format_0_Offset;
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
   //@}
   
   // Time difference
   unsigned long diff(const struct timeval* newTime, const struct timeval* oldTime);
   
};

} //namespace ipopt


#endif
   
   
