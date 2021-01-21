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
#define NCU 30
#define MAXN 886


extern "C" void kernel_gelinearsolver_0(int new_matrix, int debug_mode, int num_rhs, int na, double* dataA, double* dataB) {
#pragma HLS INTERFACE m_axi port = dataA bundle = gmem0 offset = slave
#pragma HLS INTERFACE m_axi port = dataB bundle = gmem1 offset = slave

#pragma HLS INTERFACE s_axilite port = new_matrix bundle = control
#pragma HLS INTERFACE s_axilite port = debug_mode bundle = control
#pragma HLS INTERFACE s_axilite port = num_rhs bundle = control
#pragma HLS INTERFACE s_axilite port = na bundle = control
#pragma HLS INTERFACE s_axilite port = dataA bundle = control
#pragma HLS INTERFACE s_axilite port = dataB bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    int info;
    
  
       // General linear solver
       xf::solver::gelinearsolver<double, MAXN, NCU>(new_matrix, debug_mode, na, dataA, num_rhs, dataB, na, num_rhs, info);
    
}
