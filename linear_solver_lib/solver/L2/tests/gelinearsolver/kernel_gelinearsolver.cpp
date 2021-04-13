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
#include <iostream>

//#define NCU 36
#define MAXN 100


extern "C" void kernel_gelinearsolver_0(int num_rhs, QDLDL_int An, QDLDL_int* Ap, QDLDL_int* Ai, QDLDL_float* Ax, QDLDL_float* b, QDLDL_int* retun_values) {
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
     
     return_values[0] = QDLDL_etree(An,Ap,Ai,iwork,Lnz,etree);
     
     
     
     
     // LDL Factorisation
     
     QDLDL_int Li[(MAXN*MAXN)/2];
     QDLDL_float Lx[(MAXN*MAXN)/2];
     
     return_values[1] = QDLDL_factor(An,Ap,Ai,Ax,Lp,Li,Lx,D,Dinv,Lnz,etree,bwork,iwork,fwork);


      if(return_values[1] == -1)
      {
          return;
      }


     
     // Solve for each RHS
     
     QDLDL_float single_rhs[MAXN];
     
     for(int i = 0; i < num_rhs; i++)
     {
         for(int k = 0; k < An; k++)
         {
             single_rhs[k] = b[k + i*An];
         }
     
         QDLDL_solve(Ln,Lp,Li,Lx,Dinv,single_rhs);
         
         for(int k = 0; k < An; k++)
         {
             b[k + i*An] = single_rhs[k];
         }
     }
     
}




