#include "functions.hpp"

//Functions for use with the basic linear solver

//Find determinant
double find_determinant(double * A){
    double det = (*(A))*(*(A+3)) - (*(A+1))*(*(A+2));
    return det;
}

//Find matrix inverse
double * get_inverse(double * A){
    //Find the determinant
    double det = find_determinant(A);
    
    //Find the matrix inverse before multiplying by determinant inverse
    double A_adj[4] = {*(A+3),(*(A+1))*(-1),(*(A+2))*(-1),*A};
    
    //Initialise inverse matrix
    double A_inv[4];
    
    //Find the matrix inverse
    for(int i = 0; i < 4; i++){
      A_inv[i] = A_adj[i]/det;
      }
    
    return A_inv;
}



