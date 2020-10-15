/**********
Copyright (c) 2018, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
clear

int main(int argc, char** argv)
{
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
		return EXIT_FAILURE;
	}

    std::string binaryFile = argv[1];
    //size_t vector_size_bytes = sizeof(int) * DATA_SIZE;
    cl_int err;
    unsigned fileBufSize;
    
    // Allocate Memory in Host Memory
    std::vector<double,aligned_allocator<double>> source_inA(4);
    std::vector<double,aligned_allocator<double>> source_inB(2);
    std::vector<double,aligned_allocator<double>> source_hw_results(2);
    std::vector<double,aligned_allocator<double>> source_sw_results{0,0};

    // Create the test data 
    for(int i = 0 ; i < 4 ; i++){
        source_inA[i] = rand() % 100;
        printf("Test A %d : %f \n",i,source_inA[i]);
    }
    
    for(int i = 0; i < 2; i++){
        source_inB[i] = rand() % 100;
        printf("Test B %d : %f \n",i,source_inB[i]);
    }
    
    //Calculate the output value
    double * Ainv_ptr = get_inverse(source_inA);
    
    //Multiply A_inv with inB
    source_sw_results[0] = (*(Ainv_ptr))*source_inB[0] + (*(Ainv_ptr+1))*source_inB[1];
    source_sw_results[1] = (*(Ainv_ptr+2))*source_inB[0] + (*(Ainv_ptr+3))*source_inB[1];
    

// OPENCL HOST CODE AREA START
	
// ------------------------------------------------------------------------------------
// Step 1: Get All PLATFORMS, then search for Target_Platform_Vendor (CL_PLATFORM_VENDOR)
//	   Search for Platform: Xilinx 
// Check if the current platform matches Target_Platform_Vendor
// ------------------------------------------------------------------------------------	
    std::vector<cl::Device> devices = get_devices("Xilinx");
    devices.resize(1);
    cl::Device device = devices[0];

// ------------------------------------------------------------------------------------
// Step 1: Create Context
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
	
// ------------------------------------------------------------------------------------
// Step 1: Create Command Queue
// ------------------------------------------------------------------------------------
    OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

// ------------------------------------------------------------------
// Step 1: Load Binary File from disk
// ------------------------------------------------------------------		
    char* fileBuf = read_binary_file(binaryFile, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	
// -------------------------------------------------------------
// Step 1: Create the program object from the binary and program the FPGA device with it
// -------------------------------------------------------------	
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));

// -------------------------------------------------------------
// Step 1: Create Kernels
// -------------------------------------------------------------
    OCL_CHECK(err, cl::Kernel krnl_solver(program,"solver", &err));

// ================================================================
// Step 2: Setup Buffers and run Kernels
// ================================================================
//   o) Allocate Memory to store the results 
//   o) Create Buffers in Global Memory to store data
// ================================================================

// ------------------------------------------------------------------
// Step 2: Create Buffers in Global Memory to store data
//             o) buffer_in1 - stores source_inA
//             o) buffer_in2 - stores source_inB
//             o) buffer_ouput - stores Results
// ------------------------------------------------------------------	

// .......................................................
// Allocate Global Memory for source_inA
// .......................................................	
    OCL_CHECK(err, cl::Buffer buffer_inA   (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            sizeof(double)*4, source_inA.data(), &err));
// .......................................................
// Allocate Global Memory for source_inB
// .......................................................
    OCL_CHECK(err, cl::Buffer buffer_inB   (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            sizeof(double)*2, source_inB.data(), &err));
// .......................................................
// Allocate Global Memory for source_hw_results
// .......................................................
    OCL_CHECK(err, cl::Buffer buffer_output(context,CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
            sizeof(double)*2, source_hw_results.data(), &err));

// ============================================================================
// Step 2: Set Kernel Arguments and Run the Application
//         o) Set Kernel Arguments
//              ----------------------------------------------------
//              Kernel Argument  Description
//              ----------------------------------------------------
//              in1   (input)     --> Input Vector1
//              in2   (input)     --> Input Vector2
//              out   (output)    --> Output Vector
//              size  (input)     --> Size of Vector in Integer
//         o) Copy Input Data from Host to Global Memory on the device
//         o) Submit Kernels for Execution
//         o) Copy Results from Global Memory, device to Host
// ============================================================================	
    //int size = DATA_SIZE;
    OCL_CHECK(err, err = krnl_solver.setArg(0, buffer_inA));
    OCL_CHECK(err, err = krnl_solver.setArg(1, buffer_inB));
    OCL_CHECK(err, err = krnl_solver.setArg(2, buffer_output));

// ------------------------------------------------------
// Step 2: Copy Input data from Host to Global Memory on the device
// ------------------------------------------------------
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_inA, buffer_inB},0/* 0 means from host*/));	
	
// ----------------------------------------
// Step 2: Submit Kernels for Execution
// ----------------------------------------
    OCL_CHECK(err, err = q.enqueueTask(krnl_solver));
	
// --------------------------------------------------
// Step 2: Copy Results from Device Global Memory to Host
// --------------------------------------------------
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output},CL_MIGRATE_MEM_OBJECT_HOST));

    q.finish();
	
// OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    bool match = true;
    for (int i = 0 ; i < 2 ; i++){
        printf("Hardware output value : %f \n",source_hw_results[i]);
        if (source_hw_results[i] != source_sw_results[i]){
            printf("Error : results mismatch \n");
            printf("Software output value: %f \n",source_sw_results[i]);
            match = false;
            break;
        }
    }
	
// ============================================================================
// Step 3: Release Allocated Resources
// ============================================================================
    delete[] fileBuf;

    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl; 
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}
