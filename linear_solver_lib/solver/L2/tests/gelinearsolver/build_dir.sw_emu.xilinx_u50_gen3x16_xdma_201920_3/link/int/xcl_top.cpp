#include "libspir_types.h"
#include "hls_stream.h"
#include "xcl_top_defines.h"
#include "ap_axi_sdata.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <complex>
#include <pthread.h>
using namespace std;

extern "C" {

void kernel_gelinearsolver_0(unsigned int na, size_t dataA, size_t dataB);

static pthread_mutex_t __xlnx_cl_kernel_gelinearsolver_0_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_kernel_gelinearsolver_0(char **argv) {
  void **args = (void **)argv;
  unsigned int na = *((unsigned int*)args[0+1]);
  size_t dataA = *((size_t*)args[1+1]);
  size_t dataB = *((size_t*)args[2+1]);
 pthread_mutex_lock(&__xlnx_cl_kernel_gelinearsolver_0_mutex);
  kernel_gelinearsolver_0(na, dataA, dataB);
  pthread_mutex_unlock(&__xlnx_cl_kernel_gelinearsolver_0_mutex);
}
}
