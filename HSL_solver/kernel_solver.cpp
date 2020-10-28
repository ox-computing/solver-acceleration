/*

Kernel for the linear solver MA97

*/

#include "hsl_ma97d.h"

extern "C"{
void kernel_solver_0(int na, double * dataA, double * dataB) {
#pragma HLS INTERFACE m_axi port = dataA bundle = gmem0 offset = slave num_read_outstanding = \
    16 max_read_burst_length = 32
#pragma HLS INTERFACE m_axi port = dataB bundle = gmem0 offset = slave num_read_outstanding = \
    16 max_read_burst_length = 32

#pragma HLS INTERFACE s_axilite port = na bundle = control
#pragma HLS INTERFACE s_axilite port = dataA bundle = control
#pragma HLS INTERFACE s_axilite port = dataB bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

dataA[0] = dataA[0]+dataB[0];

}
}