/*

Testing the MA97 solver kernel. Main programme

*/

#include <iostream>
#include <string.h>
#include <sys/time.h>
#include <algorithm>

#include "xcl2.hpp"



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


int main(int argc, const char* argv[]) {


// Variables to measure time
    struct timeval tstart, tend;

    // Get start time
    gettimeofday(&tstart, 0);

    // Initialize parser
    ArgParser parser(argc, argv);

    // Initialize paths addresses
    std::string xclbin_path;
    std::string num_str;
    int num_runs, dataAM, dataAN, seed;

    // Read In paths addresses
    if (!parser.getCmdOption("-xclbin", xclbin_path)) {
        std::cout << "INFO:input path is not set!\n";
    }
    
    // Platform related operations
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];

    // Creating Context and Command Queue for selected Device
    cl::Context context(device);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
    std::string devName = device.getInfo<CL_DEVICE_NAME>();
    printf("INFO: Found Device=%s\n", devName.c_str());

    cl::Program::Binaries xclBins = xcl::import_binary_file(xclbin_path);
    devices.resize(1);
    cl::Program program(context, devices, xclBins);
    cl::Kernel kernel_MA97_0(program, "kernel_MA97_0");
    std::cout << "INFO: Kernel has been created" << std::endl;
    
    // Create the data A and B
    int inout_size = 1;
    int inoutB_size = 1;
    double* dataA;
    dataA = aligned_alloc<double>(inout_size);
    double* dataB;
    dataB = aligned_alloc<double>(inoutB_size);
    
    dataA[0] = 5;
    dataB[0] = 6;
    
    // Create device buffer and map dev buf to host buf
    std::vector<cl::Buffer> buffer(2);

    buffer[0] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * inout_size, dataA, NULL);
    buffer[1] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * inoutB_size, dataB, NULL);



     // Data transfer from host buffer to device buffer
    std::vector<std::vector<cl::Event> > kernel_evt(2);
    kernel_evt[0].resize(1);
    kernel_evt[1].resize(1);

    std::vector<cl::Memory> ob_io;
    ob_io.push_back(buffer[0]);
    ob_io.push_back(buffer[1]);

    q.enqueueMigrateMemObjects(ob_io, 0, nullptr, &kernel_evt[0][0]); // 0 : migrate from host to dev
    q.finish();
    std::cout << "INFO: Finish data transfer from host to device" << std::endl;

    // Setup kernel
    kernel_MA97_0.setArg(0, inout_size);
    kernel_MA97_0.setArg(1, buffer[0]);
    kernel_MA97_0.setArg(2, buffer[1]);
    q.finish();
    std::cout << "INFO: Finish kernel setup" << std::endl;
    
    // Launch kernel
    q.enqueueTask(kernel_MA97_0, nullptr, nullptr);
    q.finish();
    
    // Data transfer from device buffer to host buffer
    q.enqueueMigrateMemObjects(ob_io, 1, nullptr, nullptr); // 1 : migrate from dev to host
    q.finish();
    
    // Print the overall time value
    gettimeofday(&tend,0);
    int exec_time = diff(&tend,&tstart);
    printf("INFO: Overall execution time: %d us \n",exec_time); 
    
    // Print the output
    printf("Output value: %d \n",dataA[0]);
    
}
