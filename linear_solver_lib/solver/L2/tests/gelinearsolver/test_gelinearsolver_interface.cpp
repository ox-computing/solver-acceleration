/*

Testing the interface

*/

#include "IpVitisSolverInterface.hpp"
using namespace Ipopt;

#include <fstream>


// Memory alignment
template <typename T>
T* aligned_alloc(std::size_t num) {
    void* ptr = nullptr;
    if (posix_memalign(&ptr, 4096, num * sizeof(T))) {
        throw std::bad_alloc();
    }
    return reinterpret_cast<T*>(ptr);
}

// Compute time difference
unsigned long diff(const struct timeval* newTime, const struct timeval* oldTime) {
    return (newTime->tv_sec - oldTime->tv_sec) * 1000000 + (newTime->tv_usec - oldTime->tv_usec);
}

// Arguments parser
class ArgParser {
   public:
    ArgParser(int& argc, const char** argv) {
        for (int i = 1; i < argc; ++i) mTokens.push_back(std::string(argv[i]));
    }
    bool getCmdOption(const std::string option, std::string& value) const {
        std::vector<std::string>::const_iterator itr;
        itr = std::find(this->mTokens.begin(), this->mTokens.end(), option);
        if (itr != this->mTokens.end() && ++itr != this->mTokens.end()) {
            value = *itr;
            return true;
        }
        return false;
    }

   private:
    std::vector<std::string> mTokens;
};

//! Core function of Cholesky benchmark
int main(int argc, const char* argv[]) {

    // Variables to measure time
    struct timeval tstart, tend;

    // Get start time
    gettimeofday(&tstart, 0);

    // Initialize parser
    ArgParser parser(argc, argv);

    // Initialize paths addresses
    std::string xclbin_path_init;
    std::string num_str;
    int num_runs, dataAM, dataAN, seed;

    // Read In paths addresses
    if (!parser.getCmdOption("-xclbin", xclbin_path_init)) {
        std::cout << "INFO:input path is not set!\n";
    }
    if (!parser.getCmdOption("-runs", num_str)) {
        num_runs = 1;
        std::cout << "INFO:number runs is not set!\n";
    } else {
        num_runs = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-M", num_str)) {
        dataAM = 4;
        std::cout << "INFO:row size M is not set!\n";
    } else {
        dataAM = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-N", num_str)) {
        dataAN = 4;
        std::cout << "INFO:column size N is not set!\n";
    } else {
        dataAN = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-seed", num_str)) {
        seed = 12;
        std::cout << "INFO:seed is not set!\n";
    } else {
        seed = std::stoi(num_str);
    }
    int NB = 1;
    
    // Create file to store array data
    std::ofstream myfile;
    myfile.open("matrix_timings.txt");
    
    
    /********************
    Test IPOPT interface
    *********************/
    
    // Create instance
    VitisSolverInterface * solver_interface = new VitisSolverInterface;
    
    // Set the binary file path
    solver_interface->SetBinaryPath(xclbin_path_init);
    
    // Call initialiser
    const OptionsList options;
    const std::string prefix;
    solver_interface->InitializeImpl(options,prefix);
    
    // Initialise the structure using data from the HSL example
    Index dimension = 5;
    Index non_zeros = 13;
    
    // Data A values
    const Index ja[non_zeros] = {0,1,0,1,2,4,1,2,3,2,3,1,4};
    const Index * ja_ptr = ja;
    
    const Index ia[dimension+1] = {0,2,6,9,11,13};
    const Index * ia_ptr = ia;
    
    double nonzero_values[non_zeros] = {2.,1.,1.,4.,1.,1.,1.,3.,2.,2.,0.,1.,2.};
    
    /***********
    Iterate
    ***************/
    
    int num_iters = 100;
    int time_diff = 0;
    
    for(int iter = 1; iter < num_iters; iter++)
    { 
      gettimeofday(&tstart,0);
    
      printf("Iteration Number : %d \n",iter);
      
    
      solver_interface->InitializeStructure(dimension,non_zeros,ia_ptr,ja_ptr);
      
      
      // Find the location of the values array and populate
      double* value_pointer = solver_interface->GetValuesArrayPtr();
      
      for(int i = 0; i < non_zeros; i++){
          value_pointer[i] = nonzero_values[i];
      }
      
      // Allocate the values of B
      Index nrhs = 1;
      Index rhs_values_size = dimension*nrhs;
      double rhs_values[rhs_values_size] = {4.,12.,10.,4.,4.};
      double * rhs_values_ptr = new double[rhs_values_size];
      
      for(int i = 0; i < rhs_values_size; i++)
      {
          rhs_values_ptr[i] = rand() % 10 + 1;
          printf("b %d : %f \n",i,rhs_values_ptr[i]);
          //myfile << rhs_values_ptr[i] << " ";
      }
      
      //myfile << "\n";
      
      
      /*double solver_input[dimension*nrhs];
      double solver_input_ptr
      
      // Edit so in form solver accepts
      for(int i = 0; i < dimension; i ++)
      {
          
      }*/
      
      
      // Call the solve class method
      bool new_matrix = true;
      bool check_eigenvalues = false;
      Index eigenvalues = 0;
      
      solver_interface->MultiSolve(new_matrix,ia_ptr,ja_ptr,nrhs,rhs_values_ptr,check_eigenvalues,eigenvalues);
      
      gettimeofday(&tend,0);
      
      // Print the result
      for(int i = 0; i < rhs_values_size; i++)
      {
          printf("x %d : %f \n",i,rhs_values_ptr[i]);
          //myfile << rhs_values_ptr[i] << " ";
      }
      
      //myfile << "\n";
      
      delete[] rhs_values_ptr;
      
      time_diff = diff(&tend,&tstart);
      
      
      myfile << time_diff << std::endl;
      
      
      
    
   } // for loop
   
   myfile.close();
   
   delete solver_interface;
    
}