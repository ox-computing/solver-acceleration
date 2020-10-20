#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void kernel_gelinearsolver_0(long long*, int, int, int);
extern "C" void apatb_kernel_gelinearsolver_0_hw(int __xlx_apatb_param_na, volatile void * __xlx_apatb_param_dataA, volatile void * __xlx_apatb_param_dataB) {
  // Collect __xlx_dataA_dataB__tmp_vec
  vector<sc_bv<64> >__xlx_dataA_dataB__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_dataA_dataB__tmp_vec.push_back(((long long*)__xlx_apatb_param_dataA)[j]);
  }
  int __xlx_size_param_dataA = 1;
  int __xlx_offset_param_dataA = 0;
  int __xlx_offset_byte_param_dataA = 0*8;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_dataA_dataB__tmp_vec.push_back(((long long*)__xlx_apatb_param_dataB)[j]);
  }
  int __xlx_size_param_dataB = 1;
  int __xlx_offset_param_dataB = 1;
  int __xlx_offset_byte_param_dataB = 1*8;
  long long* __xlx_dataA_dataB__input_buffer= new long long[__xlx_dataA_dataB__tmp_vec.size()];
  for (int i = 0; i < __xlx_dataA_dataB__tmp_vec.size(); ++i) {
    __xlx_dataA_dataB__input_buffer[i] = __xlx_dataA_dataB__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  kernel_gelinearsolver_0(__xlx_dataA_dataB__input_buffer, __xlx_apatb_param_na, __xlx_offset_byte_param_dataA, __xlx_offset_byte_param_dataB);
// print __xlx_apatb_param_dataA
  sc_bv<64>*__xlx_dataA_output_buffer = new sc_bv<64>[__xlx_size_param_dataA];
  for (int i = 0; i < __xlx_size_param_dataA; ++i) {
    __xlx_dataA_output_buffer[i] = __xlx_dataA_dataB__input_buffer[i+__xlx_offset_param_dataA];
  }
  for (int i = 0; i < __xlx_size_param_dataA; ++i) {
    ((long long*)__xlx_apatb_param_dataA)[i] = __xlx_dataA_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_dataB
  sc_bv<64>*__xlx_dataB_output_buffer = new sc_bv<64>[__xlx_size_param_dataB];
  for (int i = 0; i < __xlx_size_param_dataB; ++i) {
    __xlx_dataB_output_buffer[i] = __xlx_dataA_dataB__input_buffer[i+__xlx_offset_param_dataB];
  }
  for (int i = 0; i < __xlx_size_param_dataB; ++i) {
    ((long long*)__xlx_apatb_param_dataB)[i] = __xlx_dataB_output_buffer[i].to_uint64();
  }
}
