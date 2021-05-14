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