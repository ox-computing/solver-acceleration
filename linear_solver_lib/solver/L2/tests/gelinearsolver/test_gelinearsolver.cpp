/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
#include <iostream>
#include <string.h>
#include <sys/time.h>
#include <algorithm>

#include "xcl2.hpp"

#include "matrixUtility.hpp"

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
    struct timeval tstart, tinit_parse, tplatform_setup, tbuffer_setup, tbuffer_transfer1, tkernel_setup, tkernel_launch, tbuffer_transfer2;

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
    
    int first_row = 500;
    int final_row = 1000;
    int max_row = 0;
    
    int execution_times[final_row - first_row];
    
    
    for(int a = first_row; a < final_row; a++)
    {
    
    printf("Current row size : %d \n",a);
    
        // Set dataAM and dataAN
        dataAM = a;
        dataAN = a;
        
        // Get start time
    gettimeofday(&tstart, 0);
    
    
    
    // dataAM = dataAN is valid only for symmetric matrix
    dataAM = (dataAM > dataAN) ? dataAN : dataAM;
    dataAN = dataAM;
    
    // Initialization of host buffers

    int inout_size = dataAM * dataAN;
    int inoutB_size = dataAM * NB;
    double* dataA;
    dataA = aligned_alloc<double>(inout_size);
    double* dataB;
    dataB = aligned_alloc<double>(inoutB_size);

    // Generate general matrix dataAM x dataAN
    double** dataC = new double*[dataAM];
    double** dataD = new double*[dataAM];
    double** dataE = new double*[dataAM];
    for (int i = 0; i < dataAM; ++i) {
        dataC[i] = new double[dataAN];
        dataD[i] = new double[dataAN];
        dataE[i] = new double[dataAN];
    }
    triLowerMatGen<double>(dataAN, seed, dataC);
    transposeMat<double>(dataAN, dataC, dataD);
    MulMat<double>(dataAM, dataAN, dataAN, dataC, dataD, dataE);

    for (int i = 0; i < dataAM; ++i) {
        for (int j = 0; j < dataAN; ++j) {
            dataA[i * dataAN + j] = dataE[i][j];
            //printf("Data A Row %d Column %d : %f \n",i,j,dataA[i * dataAN + j]);
        }
    }
    for (int i = 0; i < dataAM; ++i) {
        for (int j = 0; j < NB; ++j) {
            dataB[i * NB + j] = i;
            //printf("Data B Row %d Column %d : %f \n",i,j,dataB[i * NB + j]);
        }
    } 
    
    //gettimeofday(&tinit_parse, 0);

    // Platform related operations
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];

    // Creating Context and Command Queue for selected Device
    cl::Context context(device);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);
    std::string devName = device.getInfo<CL_DEVICE_NAME>();
    printf("INFO: Found Device=%s\n", devName.c_str());

    cl::Program::Binaries xclBins = xcl::import_binary_file(xclbin_path_init);
    devices.resize(1);
    cl::Program program(context, devices, xclBins);
    cl::Kernel kernel_gelinearsolver_0(program, "kernel_gelinearsolver_0");
    std::cout << "INFO: Kernel has been created" << std::endl;

    // Output the inputs information
    std::cout << "INFO: Number of kernel runs: " << num_runs << std::endl;
    std::cout << "INFO: Matrix Row M: " << dataAM << std::endl;
    std::cout << "INFO: Matrix Col N: " << dataAN << std::endl;
    
    //gettimeofday(&tplatform_setup,0);


    // DDR Settings
    std::vector<cl_mem_ext_ptr_t> mext_io(2);
    mext_io[0].flags = XCL_MEM_DDR_BANK0;
    mext_io[0].obj = dataA;
    mext_io[0].param = 0;
    mext_io[1].flags = XCL_MEM_DDR_BANK0;
    mext_io[1].obj = dataB;
    mext_io[1].param = 0;

    // Create device buffer and map dev buf to host buf
    std::vector<cl::Buffer> buffer(2);

    buffer[0] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * inout_size, dataA, NULL);
    buffer[1] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                           sizeof(double) * inoutB_size, dataB, NULL);
                           
    //gettimeofday(&tbuffer_setup,0);

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
    
    //gettimeofday(&tbuffer_transfer1,0);

    // Setup kernel
    kernel_gelinearsolver_0.setArg(0, dataAN);
    kernel_gelinearsolver_0.setArg(1, buffer[0]);
    kernel_gelinearsolver_0.setArg(2, buffer[1]);
    q.finish();
    std::cout << "INFO: Finish kernel setup" << std::endl;
    
    //gettimeofday(&tkernel_setup,0);

    // Variables to measure time
    //struct timeval tstart, tend;

    // Launch kernel and compute kernel execution time
    //gettimeofday(&tstart, 0);
    for (int i = 0; i < num_runs; ++i) {
        q.enqueueTask(kernel_gelinearsolver_0, nullptr, nullptr);
    }
    q.finish();
    //gettimeofday(&tend, 0);
    //std::cout << "INFO: Finish kernel execution" << std::endl;
    //int exec_time = diff(&tend, &tstart);
    //std::cout << "INFO: FPGA execution time of " << num_runs << " runs:" << exec_time << " us\n"
              //<< "INFO: Average executiom per run: " << exec_time / num_runs << " us\n";
              
    //gettimeofday(&tkernel_launch,0);

    // Data transfer from device buffer to host buffer
    q.enqueueMigrateMemObjects(ob_io, 1, nullptr, nullptr); // 1 : migrate from dev to host
    q.finish();
    
    gettimeofday(&tbuffer_transfer2,0);
    
    // Print the overall time value
    //gettimeofday(&tend,0);
    //int exec_time = diff(&tend,&tstart);
    //printf("INFO: Overall execution time: %d us \n",exec_time);
    
    // Calculate the time differences and print
    /*int parse = diff(&tinit_parse,&tstart);
    int platform_setup = diff(&tplatform_setup,&tinit_parse);
    int buffer_setup = diff(&tbuffer_setup,&tplatform_setup);
    int buffer_transfer1 = diff(&tbuffer_transfer1,&tbuffer_setup);
    int kernel_setup = diff(&tkernel_setup,&tbuffer_transfer1);
    int kernel_launch = diff(&tkernel_launch,&tkernel_setup);
    int buffer_transfer2 = diff(&tbuffer_transfer2,&tkernel_launch);*/
    int overall = diff(&tbuffer_transfer2,&tstart);
    
    /*printf("INFO: Argument parse time: %d us \n",parse);
    printf("INFO: Platform setup time: %d us \n",platform_setup);
    printf("INFO: Buffer setup time: %d us \n",buffer_setup);
    printf("INFO: Buffer transfer from host to device time: %d us \n",buffer_transfer1);
    printf("INFO: Kernel setup time: %d us \n",kernel_setup);
    printf("INFO: Kernel launch and run time: %d us \n",kernel_launch);
    printf("INFO: Buffer transfer from device to host time: %d us \n",buffer_transfer2);*/
    printf("INFO: Overall execution time: %d us \n",overall);
    
    // Store the execution time
    execution_times[a-first_row] = overall;
    
     

    // Calculate err between dataA and dataC
    for (int i = 0; i < inoutB_size; i++){
        //printf("Data x Row %d : %f \n",i,dataB[i]);
    }
    
    double errA = 0;
    for (int p = 0; p < NB; p++) {
        double res = 0;
        for (int i = 0; i < dataAM; i++) {
            for (int j = 0; j < dataAN; j++) {
                res += dataA[i * dataAN + j] * dataB[j * NB + p];
            }
            res -= i;
        }
        errA += res * res;
    }
    errA = std::sqrt(errA);
    
    free(dataA);
    free(dataB);

    std::cout << "-------------- " << std::endl;
    if (errA > 0.0001) {
        std::cout << "INFO: Result false" << std::endl;
        std::cout << "-------------- " << std::endl;
        // Store the iteration we made it too
        max_row = a;
        break;
    } else {
        std::cout << "INFO: Result correct" << std::endl;
        std::cout << "-------------- " << std::endl;
    }
    
    } // for loop
    
    // Print the execution times
    printf("Max Row size : %d",max_row);
    for (int i = 0; i < max_row - first_row; i++){
        printf("Execution time Row size %d : %d \n",i,execution_times[i]);
    }
    
    
    return 0;
}
