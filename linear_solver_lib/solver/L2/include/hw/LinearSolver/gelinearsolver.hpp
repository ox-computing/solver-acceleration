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
 * WITHOUT WANCUNCUANTIES ONCU CONDITIONS OF ANY KIND, either express or
 * implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/**
 * @file polinearsolver.hpp
 * @brief  This files contains implementation of SPD matrix linear solver.
 */

#ifndef _XF_SOLVER_GELINEAR_HPP_
#define _XF_SOLVER_GELINEAR_HPP_

namespace xf {
namespace solver {
namespace internal_gelinear {

template <typename T, int N, int NCU>
void trisolver_L(int n, T dataA[NCU][(N + NCU - 1) / NCU][N], T dataB[NCU][(N + NCU - 1) / NCU], T dataX[N]) {
#pragma HLS inline off

    dataX[0] = dataB[0][0];
Loop_row:
    for (int i = 1; i < n; i++) {
    Loop_col:
        for (int j = i / NCU; j < (n + NCU - 1) / NCU; j++) {
#pragma HLS pipeline
            for (int k = 0; k < NCU; k++) {
#pragma HLS loop_tripcount min = NCU max = NCU
#pragma HLS unroll factor = NCU
#pragma HLS dependence variable = dataB inter false
                if ((j * NCU + k) < n) {
                    dataB[k][j] -= dataA[k][j][i - 1] * dataX[i - 1];
                }
            }
        }
        dataX[i] = dataB[i % NCU][i / NCU];
    }
}

template <typename T, int N, int NCU>
void trisolver_U(int n, T dataA[NCU][(N + NCU - 1) / NCU][N], T dataB[NCU][(N + NCU - 1) / NCU], T dataX[N]) {
#pragma HLS inline off

    dataX[n - 1] = dataB[(n - 1) % NCU][(n - 1) / NCU] / dataA[(n - 1) % NCU][(n - 1) / NCU][n - 1];
Loop_row:
    for (int i = n - 2; i >= 0; i--) {
    Loop_col:
        for (int j = i / NCU; j >= 0; j--) {
#pragma HLS pipeline
            for (int k = NCU - 1; k >= 0; k--) {
#pragma HLS loop_tripcount min = NCU max = NCU
#pragma HLS unroll factor = NCU
#pragma HLS dependence variable = dataB inter false
                if ((j * NCU + k) < n - 1) dataB[k][j] -= dataA[k][j][i + 1] * dataX[i + 1];
            }
        }
        dataX[i] = dataB[i % NCU][i / NCU] / dataA[i % NCU][i / NCU][i];
    }
}

template <typename T, int NRCU, int NMAX, int NCU>
void getrf_core(int debug_mode, int n, T A[NCU][NRCU][NMAX], int lda, int P[NMAX]) {
    for (int r = 0; r < n; r++) {
#pragma HLS pipeline
        P[r] = r;
    }
    
    internalgetrf::getrf_core<T, NRCU, NMAX, NCU>(debug_mode, n, n, A, P, n);
};
template <typename T, int N, int NCU>
void solver(int debug_mode, int n, T dataA[NCU][(N + NCU - 1) / NCU][N], T dataB[NCU][(N + NCU - 1) / NCU], T dataX[N]) {
    T buf[N], buf_i[NCU][(N + NCU - 1) / NCU], buf_o[N];


    trisolver_L<T, N, NCU>(n, dataA, dataB, buf);
    

    for (int i = 0; i < (N + NCU - 1) / NCU; i++) {
        for (int k = 0; k < NCU; k++) {
#pragma HLS pipeline
            if ((i * NCU + k) < n) {
                buf_i[k][i] = buf[i * NCU + k];
            } else {
                buf_i[k][i] = 0;
            }
        }
    }

 
    trisolver_U<T, N, NCU>(n, dataA, buf_i, buf_o);
    

    for (int i = 0; i < N; i++) {
#pragma HLS pipeline
        dataX[i] = buf_o[i];
    }
}

template <typename T, int N, int NCU>
void solver_core(int new_matrix, int debug_mode, int n, int j, T dataA[NCU][(N + NCU - 1) / NCU][N], T dataB[NCU][(N + NCU - 1) / NCU], T dataX[N]) {
    const int NRCU = int((N + NCU - 1) / NCU);
    int P[N];
    T dataC[NCU][(N + NCU - 1) / NCU];
    int info;
    
    if((new_matrix == 1) && (j == 0))
    {
    getrf_core<T, NRCU, N, NCU>(debug_mode, n, dataA, n, P);
    }
    
    for (int i = 0; i < n; ++i) {
#pragma HLS pipeline
        dataC[i % NCU][i / NCU] = dataB[P[i] % NCU][P[i] / NCU];
    }
    
    solver<T, N, NCU>(debug_mode, n, dataA, dataC, dataX);
}

template <typename T, int NCU, int NMAX>
void reset_array(int n, T matA[NCU][(NMAX + NCU - 1) / NCU][NMAX])
{
        Loop_reset_1:
        for(int r = 0; r < n; r++)
        {
            for(int c = 0; c < n; c++)
            {
                #pragma HLS pipeline
                #pragma HLS dependence variable = matA inter false
                matA[r % NCU][r / NCU][c] = 0.0;
               
            }     
        }
}

template <typename T, int NCU, int NMAX>
void fill_A(int* ia, int* ja, T* A_data, T matA[NCU][(NMAX + NCU - 1) / NCU][NMAX], int num_nonzeros)
{
        // Fill matA
        Loop_read_A:
        for(int r = 0; r < num_nonzeros; r++)
        {
            #pragma HLS pipeline
            #pragma HLS dependence variable = A_data inter false
            #pragma HLS dependence variable = A_data intra false
            #pragma HLS dependence variable = matA intra false
            #pragma HLS dependence variable = matA inter false
            
            // If not on diagonal
            if(ia[r] != ja[r])
            {  
              // Fill both sides
              matA[ia[r] % NCU][ia[r] / NCU][ja[r]] += A_data[r];
              matA[ja[r] % NCU][ja[r] / NCU][ia[r]] += A_data[r];
            }
            else
            {
                // Only fill diagonal
                matA[ia[r] % NCU][ia[r] / NCU][ja[r]] += A_data[r];
            }
        }
}

template <typename T, int NCU, int NMAX>
void fill_B(int j, int num_rhs, int n, T matB[NCU][(NMAX + NCU - 1) / NCU], T* B_data)
{
    Loop_read_B:
    for (int r = 0; r < n; r++) 
    {
           #pragma HLS pipeline
           #pragma HLS dependence variable = B_data inter false
           matB[r % NCU][r / NCU] = B_data[r * num_rhs + j];
    }
}
} // namespace internal
/**
 * @brief This function solves a system of linear equation with general
 *matrix along with multiple right-hand side vector \n
 *           \f{equation*} {Ax=B}\f}
 *                     where \f$A\f$ is a dense general matrix
 * of size \f$n \times n\f$, \f$x\f$ is a vector need to be computed, and \f$B\f$
 * is input vector.\n
 * The maximum matrix size supported in FPGA is templated by NMAX.
 *
 * @tparam T data type (support float and double)
 * @tparam NMAX maximum number of rows/columns of input matrix
 * @tparam NCU number of computation unit
 * @param[in] n number of rows/cols of matrix A
 * @param[in,out] A input matrix of size \f$n \times n\f$
 * @param[in] b number of columns of matrix B
 * @param[in,out] B input matrix of size \f$b \times n\f$, and overwritten by the output matrix x
 * @param[in] lda leading dimention of input matrix A
 * @param[in] ldb leading dimention of input matrix B
 * @param[out] info output info (unused)
 */

template <typename T, int NMAX, int NCU>
void gelinearsolver(int num_nonzeros, int new_matrix, int n, int num_rhs, int* ia, int* ja, T* A, T* B) {
      
      static T matA1[NCU][(NMAX + NCU - 1) / NCU][NMAX] = {};
      static T matA2[NCU][(NMAX + NCU - 1) / NCU][NMAX] = {};
      static T matB[NCU][(NMAX + NCU - 1) / NCU] = {};
      
      static int iter = 0;
      int debug_mode = 0;
      
      T dataX[NMAX];
      
      #pragma HLS array_partition variable = matA1 cyclic factor = NCU dim = 1
      #pragma HLS array_partition variable = matA2 cyclic factor = NCU dim = 1
      #pragma HLS array_partition variable = matB cyclic factor = NCU dim = 1
      #pragma HLS resource variable = matA1 core = XPM_MEMORY uram
      #pragma HLS resource variable = matA2 core = XPM_MEMORY uram

      
      //#pragma HLS bind_storage variable = matA1 type = ram_2p impl = uram
      //#pragma HLS bind_storage variable = matA2 type = ram_2p impl = uram
      #pragma HLS resource variable = matB core = RAM_2P_BRAM
      
      //#pragma HLS INTERFACE m_axi port = matA1 bundle = gmem2 offset = slave 
      //#pragma HLS INTERFACE m_axi port = matA2 bundle = gmem2 offset = slave
      
      
         for (int j = 0; j < num_rhs; j++) {
             
             
        /********
        Fill matA with values
        *********/
         
         // Only edit matA if new matrix flag set
         if((new_matrix == 1) && (j == 0))
         {   
             iter++;
         
             if((iter % 2) != 0)
             {
                   #pragma HLS dataflow
                  // Zero the other array
                  internal_gelinear::reset_array<T, NCU, NMAX>(n, matA2);
                  
                  // Fill the array we are using
                  internal_gelinear::fill_A<T, NCU, NMAX>(ia, ja, A, matA1, num_nonzeros);
                  
                  // Fill B
                  internal_gelinear::fill_B<T, NCU, NMAX>(j, num_rhs, n, matB, B);
                  
                  // Carry out solve
                  internal_gelinear::solver_core<T, NMAX, NCU>(new_matrix, debug_mode, n, j, matA1, matB, dataX);
             }
             else
             {
                     #pragma HLS dataflow
                   // Zero the other array
                  internal_gelinear::reset_array<T, NCU, NMAX>(n, matA1);
                  
                   // Fill the array we are using
                  internal_gelinear::fill_A<T, NCU, NMAX>(ia, ja, A, matA2, num_nonzeros);
                  
                  // Fill B
                  internal_gelinear::fill_B<T, NCU, NMAX>(j, num_rhs, n, matB, B);
                  
                  // Carry out solve
                  internal_gelinear::solver_core<T, NMAX, NCU>(new_matrix, debug_mode, n, j, matA2, matB, dataX);
             }
         
         }
         else
         {
              // Fill B
              internal_gelinear::fill_B<T, NCU, NMAX>(j, num_rhs, n, matB, B);
              
              if((iter % 2) != 0)
              {
                   internal_gelinear::solver_core<T, NMAX, NCU>(new_matrix, debug_mode, n, j, matA1, matB, dataX);
              }
              else
              {
                   internal_gelinear::solver_core<T, NMAX, NCU>(new_matrix, debug_mode, n, j, matA2, matB, dataX);
              }
                 
         }
          

           // Return the result to B
          for (int r = 0; r < n; r++) {
              #pragma HLS pipeline
              B[r * num_rhs + j] = dataX[r];
          }
    } // j for loop
}

} // namespace solver
} // namespace xf
#endif
