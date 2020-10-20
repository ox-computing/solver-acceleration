# Monitor points

# Platform options
set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER true [get_bd_intf_pins /interconnect_axilite_user_slr0/M00_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER true [get_bd_intf_pins /xtlm_simple_intercon_0/M02_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_SLAVE true [get_bd_cells /memory_subsystem]

# Call debug/profiling automation
set dpa_dict [list \
              [get_bd_intf_pins kernel_gelinearsolver_0_1/m_axi_gmem0]  {TYPE data DETAIL all CLK_SRC /kernel_gelinearsolver_0_1/ap_clk RST_SRC /kernel_gelinearsolver_0_1/ap_rst_n MEMORY {{HBM[0]}} PRINTABLE_KEY {[get_bd_intf_pins kernel_gelinearsolver_0_1/m_axi_gmem0]} INS_MODE auto} \
             ]
set dpa_opts [list \
              AIE_TRACE  {PACKET_RATE 100 CLK_SELECT default PROFILE_STREAMS false} \
              SETTINGS  {HW_EMU true IS_EMBEDDED false} \
              AXILITE  {MASTER /interconnect_axilite_user_slr0/M00_AXI CLK_SRC /interconnect_axilite_user_slr0/M00_ACLK RST_SRC /static_region/psr_dma_pcie_aclk/interconnect_aresetn} \
              TRACE_OFFLOAD  {DEPTH 8192 MEM_SPACE FIFO MEM_INDEX 0 SLAVE /memory_subsystem MASTER /xtlm_simple_intercon_0/M02_AXI CLK_SRC /xtlm_simple_intercon_0/m02_axi_aclk RST_SRC /xtlm_simple_intercon_0/m02_axi_aresetn SLR SLR0 DEDICATED true USE_HIERARCHY true FIFO_ADDR_SEG 0x0000008000000000 FIFO_ADDR_RANGE 0x0000000000400000} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw_emu.xilinx_u50_gen3x16_xdma_201920_3/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Assign addresses and write debug_ip_layout
assign_bd_address
debug_profile::write_debug_ip_layout true "xilinx:u50:gen3x16_xdma:201920.3" "/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw_emu.xilinx_u50_gen3x16_xdma_201920_3/link/int"
