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

#include "xf_solver_L2.hpp"
#define NCU 1
#define MAXN 1000

extern "C" void kernel_gelinearsolver_0(int num_rhs, int na, double* dataA, double* dataB, double* eigenvalue_output) {
#pragma HLS INTERFACE m_axi port = dataA bundle = gmem0 offset = slave num_read_outstanding = \
    16 max_read_burst_length = 32
#pragma HLS INTERFACE m_axi port = dataB bundle = gmem0 offset = slave num_read_outstanding = \
    16 max_read_burst_length = 32
#pragma HLS INTERFACE m_axi port = eigenvalue_output bundle = gmem0 offset = slave num_read_outstanding = \
    16 max_read_burst_length = 32

#pragma HLS INTERFACE s_axilite port = num_rhs bundle = control
#pragma HLS INTERFACE s_axilite port = na bundle = control
#pragma HLS INTERFACE s_axilite port = dataA bundle = control
#pragma HLS INTERFACE s_axilite port = dataB bundle = control
#pragma HLS INTERFACE s_axilite port = eigenvalue_output bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    int info;
    
    // Solver
    xf::solver::gelinearsolver<double, MAXN, NCU>(na, dataA, num_rhs, dataB, na, num_rhs, info);
    
    // Eigenvalue solver
    double* U;
    xf::solver::syevj<double, MAXN, NCU>(na, dataA, na, eigenvalue_output, U, na, na, info)
    
}
