# 4YP Submission Code
This repo contains the source code for the Accelerating linear solvers on FPGA project. Below is a summary of the top level directories

## Prepatory Work
### [Basic Vector Multiply](vector_multiply)
A straightforward vector multiply kernel initially deployed onto the device to test functionality


### [Basic 2x2 Linear Solver](basic_2x2_solver)
The basic vector multiply code was later modified to create a 2x2 linear solver. This was again to test functionality


## Main Project
### [Main Source Code](main_source)
The main source code for the project; this contains the interface with IPOPT which has contains the source code as well as the kernel source code.

### [IPOPT Vitis Interface Library File](library_file_for_IPOPT)
The compile folder which creates a library file from the interface source code. This is used by IPOPT when running with the Vitis Library Solver.


## Using the code with IPOPT and Alveo U50 FPGA
### Xclbin Compile
To compile the xclbin file go to the [main source directory](main_source/L2/tests/gelinearsolver) and run:

`make xclbin`

This will compile the xclbin file and store it in the directory `build_dir.hw.xilinx_gen3x16_xdma_201920_3`

### Library file compile
IPOPT requires a library file, stored in `\usr\local\lib` which it calls when the Vits Library Solver is selected. First the location of the xclbin file must be set in the interface at line 73 of the [interface cpp file](main_source/L2/tests/gelinearsolver/IpVitisSolverInterface.cpp). This depends on the directory structure.
To compile go to the [library compile directory](library_file_for_IPOPT):

`make shared`

This will produce a .so file which should be symbolically linked to `\usr\local\lib` for use with IPOPT. IPOPT has an environment variable that must be set to find the created library file, this can be set as follows:

`export LIBS=-lvitislibrary`

### Preparing IPOPT
IPOPT needs modification to call the Vitis interface when the `custom` linear solver is selected. The `IpAlgBuilder.cpp` file within IPOPT must be altered prior to IPOPT install. The updated cpp file is [`IpAlgBuilder.cpp`](main_source/L2/tests/gelinearsolver/IpAlgBuilder.cpp).


## Summary of main source code and locations
### [Kernel code](main_source/L2/include/hw)
The C++ source code which is compiled when the `make xclbin` command is run. This is split across between the general solver and decomposition.

### [Main source directory](main_source/L2/tests/gelinearsolver)
Main directory containing the top level kernel function for compilation. Also the interface source code and other platform related ini files are located here.