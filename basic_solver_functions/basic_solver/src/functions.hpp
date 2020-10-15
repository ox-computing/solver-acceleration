#include <vector>
#include "host.hpp"

double find_determinant(std::vector<double,aligned_allocator<double>> A);
double * get_inverse(std::vector<double,aligned_allocator<double>> A);
