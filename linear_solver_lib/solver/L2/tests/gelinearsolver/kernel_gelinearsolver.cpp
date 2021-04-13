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

//#include "xf_solver_L2.hpp"

#include "qdldl.hpp"

//#define NCU 36
#define MAXN 10


/*extern "C" void kernel_gelinearsolver_0(int debug_mode, int num_nonzeros, int new_matrix, int n, int num_rhs, int* A_rows, int* A_cols, double* A_vals, double* dataB) {
#pragma HLS INTERFACE m_axi port = A_rows bundle = gmem0 offset = slave max max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = A_cols bundle = gmem0 offset = slave max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = A_vals bundle = gmem0 offset = slave max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = dataB bundle = gmem1 offset = slave max_read_burst_length = 128 max_write_burst_length = 128

#pragma HLS INTERFACE s_axilite port = num_nonzeros bundle = control
#pragma HLS INTERFACE s_axilite port = new_matrix bundle = control
#pragma HLS INTERFACE s_axilite port = n bundle = control
#pragma HLS INTERFACE s_axilite port = num_rhs bundle = control
#pragma HLS INTERFACE s_axilite port = A_rows bundle = control
#pragma HLS INTERFACE s_axilite port = A_cols bundle = control
#pragma HLS INTERFACE s_axilite port = A_vals bundle = control
#pragma HLS INTERFACE s_axilite port = dataB bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control*/

extern "C" void kernel_gelinearsolver_0(QDLDL_int An, QDLDL_int* Ap, QDLDL_int* Ai, QDLDL_float* Ax, QDLDL_float* b) {
#pragma HLS INTERFACE m_axi port = Ap bundle = gmem0 offset = slave max max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = Ai bundle = gmem0 offset = slave max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = Ax bundle = gmem0 offset = slave max_read_burst_length = 128
#pragma HLS INTERFACE m_axi port = b bundle = gmem1 offset = slave max_read_burst_length = 128 max_write_burst_length = 128

#pragma HLS INTERFACE s_axilite port = An bundle = control
#pragma HLS INTERFACE s_axilite port = Ap bundle = control
#pragma HLS INTERFACE s_axilite port = Ai bundle = control
#pragma HLS INTERFACE s_axilite port = Ax bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

// Allocate storage values
QDLDL_int Ln = An;

QDLDL_int Lp[MAXN + 1];
QDLDL_int etree[MAXN];
QDLDL_int Lnz[MAXN];

QDLDL_float D[MAXN];
QDLDL_float Dinv[MAXN];

QDLDL_int iwork[3*MAXN];
QDLDL_bool bwork[MAXN];
QDLDL_float fwork[MAXN];

// Elimination tree calculation

QDLDL_int sumLnz = QDLDL_etree(An,Ap,Ai,iwork,Lnz,etree);



// LDL Factorisation




































    
}
