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
#define MAXN 1000

extern "C" void kernel_gelinearsolver_0(int num_rhs, int na, double* dataA, double* dataB) {
#pragma HLS INTERFACE m_axi port = dataA bundle = gmem0 offset = slave
#pragma HLS INTERFACE m_axi port = dataB bundle = gmem1 offset = slave

#pragma HLS INTERFACE s_axilite port = num_rhs bundle = control
#pragma HLS INTERFACE s_axilite port = na bundle = control
#pragma HLS INTERFACE s_axilite port = dataA bundle = control
#pragma HLS INTERFACE s_axilite port = dataB bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    int info;
    
    // Determine if matrix is definite
    
    // Find eigenvalues    
    /*xf::solver::syevj<double, MAXN, NCU>(na, dataA, na, sigma, U, na, info);
    
    // Determine if any are all positive
    bool positive_definite = true;
    
    for(int i = 0; i < na; i++)
    {
        if(sigma[i] <= 0)
        {
            positive_definite = false;
            break;
        }
    }
    
    if(positive_definite)
    {
        // SPD solver
        xf::solver::polinearsolver<double, MAXN, NCU>(na, dataA, num_rhs, dataB, na, num_rhs, info);
    }
    else
    {*/
        // General solver
        xf::solver::gelinearsolver<double, MAXN, NCU>(na, dataA, num_rhs, dataB, na, num_rhs, info);
    //}

}
