# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName kernel_gelinearsolver_0_1]
log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_idle
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_idle
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_getrf_core_double_2_4_2_s_fu_570/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_idle
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_U_double_4_2_s_fu_588/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_idle
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/kernel_gelinearsolver_0_1/$hierName/grp_gelinearsolver_double_4_2_s_fu_82/grp_trisolver_L_double_4_2_s_fu_602/ap_str_blocking_n -time 0 -quiet 

