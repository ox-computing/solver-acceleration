# 4YP Submission Code
This repo contains the source code for the Accelerating linear solvers on FPGA project. Below is a summary of the top level directories

## Prepatory Work
### vector_multiply
A straightforward vector multiply kernel initially deployed onto the device to test functionality


### basic_2x2_solver
The basic vector multiply code was later modified to create a 2x2 linear solver. This was again to test functionality


## Main Project
### main_source
The main source code for the project; this contains the interface with IPOPT which has contains the source code as well as the kernel source code.

### library_file_for_IPOPT
The compile folder for the library file which IPOPT as the interface with the Vitis Library Solver