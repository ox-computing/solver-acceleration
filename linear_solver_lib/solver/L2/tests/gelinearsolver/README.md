# Adding a ping-pong array so that both host and kernel can run in parallel

- Attempting to have various aspects of the kernel running in parallel, reducing the timing
- Particularly focusing on the setting to zero, this should be able to be achieved during alternative program operations
- Can be achieved by setting seperate queues for the processes and using a ping-pong array; consider the following example : https://github.com/Xilinx/Vitis_Accel_Examples/blob/master/host/overlap/src/host.cpp