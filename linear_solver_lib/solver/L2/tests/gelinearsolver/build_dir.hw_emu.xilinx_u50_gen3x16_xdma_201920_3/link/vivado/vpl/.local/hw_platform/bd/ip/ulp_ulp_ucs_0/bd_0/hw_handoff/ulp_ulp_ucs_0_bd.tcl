
################################################################
# This is a generated script based on design: bd_22c0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_22c0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu50-fsvh2104-2-e
   set_property BOARD_PART xilinx.com:au50:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_22c0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set s_axi_ctrl_mgmt [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl_mgmt ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   ] $s_axi_ctrl_mgmt


  # Create ports
  set aclk_ctrl [ create_bd_port -dir I -type clk -freq_hz 50000000 aclk_ctrl ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axi_ctrl_mgmt} \
   CONFIG.ASSOCIATED_RESET {aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1} \
 ] $aclk_ctrl
  set aclk_pcie [ create_bd_port -dir I -type clk -freq_hz 250000000 aclk_pcie ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1} \
 ] $aclk_pcie
  set aresetn_ctrl [ create_bd_port -dir I -type rst aresetn_ctrl ]
  set aresetn_ctrl_slr0 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_ctrl_slr0 ]
  set aresetn_ctrl_slr1 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_ctrl_slr1 ]
  set aresetn_kernel2_slr0 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_kernel2_slr0 ]
  set aresetn_kernel2_slr1 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_kernel2_slr1 ]
  set aresetn_kernel_slr0 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_kernel_slr0 ]
  set aresetn_kernel_slr1 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_kernel_slr1 ]
  set aresetn_pcie [ create_bd_port -dir I -type rst aresetn_pcie ]
  set aresetn_pcie_slr0 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_pcie_slr0 ]
  set aresetn_pcie_slr1 [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_pcie_slr1 ]
  set clk_kernel [ create_bd_port -dir O -type clk clk_kernel ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {aresetn_kernel_slr0:aresetn_kernel_slr1} \
 ] $clk_kernel
  set clk_kernel2 [ create_bd_port -dir O -type clk clk_kernel2 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {aresetn_kernel2_slr0:aresetn_kernel2_slr1} \
 ] $clk_kernel2
  set freerun_refclk [ create_bd_port -dir I -type clk -freq_hz 100000000 freerun_refclk ]
  set hbm_aclk [ create_bd_port -dir O -type clk hbm_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {hbm_aresetn} \
 ] $hbm_aclk
  set hbm_aresetn [ create_bd_port -dir O -from 0 -to 0 -type rst hbm_aresetn ]
  set hbm_refclk [ create_bd_port -dir I -type clk hbm_refclk ]
  set shutdown_clocks [ create_bd_port -dir I shutdown_clocks ]

  # Create instance: adder_check_gpio, and set properties
  set adder_check_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 adder_check_gpio ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {16} \
   CONFIG.B_Constant {true} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {0010010011100110} \
   CONFIG.B_Width {16} \
   CONFIG.CE {false} \
   CONFIG.Latency {0} \
   CONFIG.Out_Width {16} \
 ] $adder_check_gpio

  # Create instance: axi_ic_ctrl_mgmt_0, and set properties
  set axi_ic_ctrl_mgmt_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ctrl_mgmt_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {7} \
 ] $axi_ic_ctrl_mgmt_0

  # Create instance: axi_ic_ctrl_mgmt_1, and set properties
  set axi_ic_ctrl_mgmt_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ctrl_mgmt_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {4} \
 ] $axi_ic_ctrl_mgmt_1

  # Create instance: build_info, and set properties
  set build_info [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_build_info:1.0 build_info ]
  set_property -dict [ list \
   CONFIG.C_CORE_REVISION {0} \
   CONFIG.C_MAJOR_VERSION {2} \
   CONFIG.C_MINOR_VERSION {0} \
   CONFIG.C_PATCH_REVISION {0} \
   CONFIG.C_PERFORCE_CL {2767516} \
   CONFIG.C_RESERVED_TAG {0x00000000} \
   CONFIG.C_SUBSYSTEM_ID {0x07} \
   CONFIG.C_VIV_VERSION {0x201920} \
 ] $build_info

  # Create instance: clk_hbm_adapt, and set properties
  set clk_hbm_adapt [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 clk_hbm_adapt ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_hbm} \
 ] $clk_hbm_adapt

  # Create instance: clk_kernel2_adapt, and set properties
  set clk_kernel2_adapt [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 clk_kernel2_adapt ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel_01} \
 ] $clk_kernel2_adapt

  # Create instance: clk_kernel2_cont_adapt, and set properties
  set clk_kernel2_cont_adapt [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 clk_kernel2_cont_adapt ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel_01} \
 ] $clk_kernel2_cont_adapt

  # Create instance: clk_kernel_adapt, and set properties
  set clk_kernel_adapt [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 clk_kernel_adapt ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel_00} \
 ] $clk_kernel_adapt

  # Create instance: clk_kernel_cont_adapt, and set properties
  set clk_kernel_cont_adapt [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 clk_kernel_cont_adapt ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel_00} \
 ] $clk_kernel_cont_adapt

  # Create instance: clkwiz_hbm, and set properties
  set clkwiz_hbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clkwiz_hbm ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {450} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_POWER_DOWN {true} \
 ] $clkwiz_hbm

  # Create instance: clkwiz_kernel, and set properties
  set clkwiz_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clkwiz_kernel ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {No_buffer} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {300} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_POWER_DOWN {true} \
 ] $clkwiz_kernel

  # Create instance: clkwiz_kernel2, and set properties
  set clkwiz_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clkwiz_kernel2 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {No_buffer} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {500} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_POWER_DOWN {true} \
 ] $clkwiz_kernel2

  # Create instance: clock_throttling_avg, and set properties
  set clock_throttling_avg [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_clock_throttling_avg:1.0 clock_throttling_avg ]

  # Create instance: clock_throttling_kernel, and set properties
  set clock_throttling_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_clock_throttling:1.0 clock_throttling_kernel ]
  set_property -dict [ list \
   CONFIG.CLK_SLOW_DIV {1} \
 ] $clock_throttling_kernel

  # Create instance: clock_throttling_kernel2, and set properties
  set clock_throttling_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_clock_throttling:1.0 clock_throttling_kernel2 ]
  set_property -dict [ list \
   CONFIG.CLK_SLOW_DIV {1} \
 ] $clock_throttling_kernel2

  # Create instance: fanout_aresetn_ctrl_slr0, and set properties
  set fanout_aresetn_ctrl_slr0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_ctrl_slr0 ]

  # Create instance: fanout_aresetn_ctrl_slr1, and set properties
  set fanout_aresetn_ctrl_slr1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_ctrl_slr1 ]

  # Create instance: fanout_aresetn_hbm, and set properties
  set fanout_aresetn_hbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_hbm ]

  # Create instance: fanout_aresetn_kernel2_slr0, and set properties
  set fanout_aresetn_kernel2_slr0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_kernel2_slr0 ]

  # Create instance: fanout_aresetn_kernel2_slr1, and set properties
  set fanout_aresetn_kernel2_slr1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_kernel2_slr1 ]

  # Create instance: fanout_aresetn_kernel_slr0, and set properties
  set fanout_aresetn_kernel_slr0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_kernel_slr0 ]

  # Create instance: fanout_aresetn_kernel_slr1, and set properties
  set fanout_aresetn_kernel_slr1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_kernel_slr1 ]

  # Create instance: fanout_aresetn_pcie_slr0, and set properties
  set fanout_aresetn_pcie_slr0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_pcie_slr0 ]

  # Create instance: fanout_aresetn_pcie_slr1, and set properties
  set fanout_aresetn_pcie_slr1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 fanout_aresetn_pcie_slr1 ]

  # Create instance: frequency_counter_aclk, and set properties
  set frequency_counter_aclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_frequency_counter:1.0 frequency_counter_aclk ]
  set_property -dict [ list \
   CONFIG.REF_CLK_FREQ_HZ {100000} \
   CONFIG.TEST_CLK_0_TYPE {5} \
   CONFIG.TEST_CLK_1_TYPE {6} \
   CONFIG.TEST_CLK_2_TYPE {0} \
   CONFIG.TEST_CLK_3_TYPE {0} \
 ] $frequency_counter_aclk

  # Create instance: frequency_counter_hbm, and set properties
  set frequency_counter_hbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_frequency_counter:1.0 frequency_counter_hbm ]
  set_property -dict [ list \
   CONFIG.REF_CLK_FREQ_HZ {100000} \
   CONFIG.TEST_CLK_0_TYPE {1} \
   CONFIG.TEST_CLK_1_TYPE {0} \
   CONFIG.TEST_CLK_2_TYPE {0} \
   CONFIG.TEST_CLK_3_TYPE {4} \
 ] $frequency_counter_hbm

  # Create instance: frequency_counter_kernel, and set properties
  set frequency_counter_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_frequency_counter:1.0 frequency_counter_kernel ]
  set_property -dict [ list \
   CONFIG.REF_CLK_FREQ_HZ {100000} \
   CONFIG.TEST_CLK_0_TYPE {1} \
   CONFIG.TEST_CLK_1_TYPE {2} \
   CONFIG.TEST_CLK_2_TYPE {0} \
   CONFIG.TEST_CLK_3_TYPE {0} \
 ] $frequency_counter_kernel

  # Create instance: frequency_counter_kernel2, and set properties
  set frequency_counter_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_frequency_counter:1.0 frequency_counter_kernel2 ]
  set_property -dict [ list \
   CONFIG.REF_CLK_FREQ_HZ {100000} \
   CONFIG.TEST_CLK_0_TYPE {1} \
   CONFIG.TEST_CLK_1_TYPE {2} \
   CONFIG.TEST_CLK_2_TYPE {0} \
   CONFIG.TEST_CLK_3_TYPE {0} \
 ] $frequency_counter_kernel2

  # Create instance: gapping_demand_toggle, and set properties
  set gapping_demand_toggle [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 gapping_demand_toggle ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Output_Width {1} \
 ] $gapping_demand_toggle

  # Create instance: gapping_demand_update, and set properties
  set gapping_demand_update [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 gapping_demand_update ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $gapping_demand_update

  # Create instance: gnd2, and set properties
  set gnd2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $gnd2

  # Create instance: gnd15, and set properties
  set gnd15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd15 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {15} \
 ] $gnd15

  # Create instance: gpio_gapping_demand, and set properties
  set gpio_gapping_demand [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 gpio_gapping_demand ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0xFFFFFFFF} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $gpio_gapping_demand

  # Create instance: gpio_ucs_control_status, and set properties
  set gpio_ucs_control_status [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 gpio_ucs_control_status ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $gpio_ucs_control_status

  # Create instance: gpio_ucs_status_concat, and set properties
  set gpio_ucs_status_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_ucs_status_concat ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {15} \
   CONFIG.IN2_WIDTH {14} \
   CONFIG.IN3_WIDTH {2} \
   CONFIG.NUM_PORTS {4} \
 ] $gpio_ucs_status_concat

  # Create instance: or_shutdown_clocks, and set properties
  set or_shutdown_clocks [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or_shutdown_clocks ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $or_shutdown_clocks

  # Create instance: psreset_freerun_refclk, and set properties
  set psreset_freerun_refclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_freerun_refclk ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_freerun_refclk

  # Create instance: psreset_hbm, and set properties
  set psreset_hbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_hbm ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_hbm

  # Create instance: psreset_kernel, and set properties
  set psreset_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_kernel ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_kernel

  # Create instance: psreset_kernel2, and set properties
  set psreset_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_kernel2 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_kernel2

  # Create instance: reduce_check_gpio, and set properties
  set reduce_check_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 reduce_check_gpio ]
  set_property -dict [ list \
   CONFIG.C_SIZE {16} \
 ] $reduce_check_gpio

  # Create instance: shutdown_clocks_latch, and set properties
  set shutdown_clocks_latch [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 shutdown_clocks_latch ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.CE {true} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {1} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $shutdown_clocks_latch

  # Create instance: slice_check_gpio, and set properties
  set slice_check_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_check_gpio ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {5} \
   CONFIG.DOUT_WIDTH {16} \
 ] $slice_check_gpio

  # Create instance: slice_startup_done_gpio, and set properties
  set slice_startup_done_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_startup_done_gpio ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_startup_done_gpio

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $vcc

  # Create instance: vip_ctrl_mgmt, and set properties
  set vip_ctrl_mgmt [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_ctrl_mgmt ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M00_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M00_AXI] [get_bd_intf_pins build_info/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M01_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M01_AXI] [get_bd_intf_pins gpio_gapping_demand/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M02_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M02_AXI] [get_bd_intf_pins gpio_ucs_control_status/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M03_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M03_AXI] [get_bd_intf_pins clkwiz_kernel/s_axi_lite]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M04_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M04_AXI] [get_bd_intf_pins clkwiz_kernel2/s_axi_lite]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M05_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M05_AXI] [get_bd_intf_pins axi_ic_ctrl_mgmt_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_0_M06_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_0/M06_AXI] [get_bd_intf_pins clkwiz_hbm/s_axi_lite]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_1_M00_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_1/M00_AXI] [get_bd_intf_pins frequency_counter_kernel/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_1_M01_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_1/M01_AXI] [get_bd_intf_pins frequency_counter_kernel2/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_1_M02_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_1/M02_AXI] [get_bd_intf_pins frequency_counter_aclk/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_ctrl_mgmt_1_M03_AXI [get_bd_intf_pins axi_ic_ctrl_mgmt_1/M03_AXI] [get_bd_intf_pins frequency_counter_hbm/S_AXI]
  connect_bd_intf_net -intf_net s_axi_ctrl_mgmt [get_bd_intf_ports s_axi_ctrl_mgmt] [get_bd_intf_pins vip_ctrl_mgmt/S_AXI]
  connect_bd_intf_net -intf_net s_axi_ctrl_mgmt_vip [get_bd_intf_pins axi_ic_ctrl_mgmt_0/S00_AXI] [get_bd_intf_pins vip_ctrl_mgmt/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_ctrl [get_bd_ports aclk_ctrl] [get_bd_pins axi_ic_ctrl_mgmt_0/ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M00_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M01_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M02_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M03_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M04_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M05_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/M06_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_0/S00_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_1/S00_ACLK] [get_bd_pins build_info/S_AXI_ACLK] [get_bd_pins clkwiz_hbm/s_axi_aclk] [get_bd_pins clkwiz_kernel/s_axi_aclk] [get_bd_pins clkwiz_kernel2/s_axi_aclk] [get_bd_pins clock_throttling_avg/Clk] [get_bd_pins fanout_aresetn_ctrl_slr0/clk] [get_bd_pins fanout_aresetn_ctrl_slr1/clk] [get_bd_pins frequency_counter_aclk/test_clk0] [get_bd_pins gapping_demand_toggle/CLK] [get_bd_pins gpio_gapping_demand/s_axi_aclk] [get_bd_pins gpio_ucs_control_status/s_axi_aclk] [get_bd_pins shutdown_clocks_latch/CLK] [get_bd_pins vip_ctrl_mgmt/aclk]
  connect_bd_net -net aclk_pcie [get_bd_ports aclk_pcie] [get_bd_pins fanout_aresetn_pcie_slr0/clk] [get_bd_pins fanout_aresetn_pcie_slr1/clk] [get_bd_pins frequency_counter_aclk/test_clk1]
  connect_bd_net -net adder_check_gpio_sum [get_bd_pins adder_check_gpio/S] [get_bd_pins reduce_check_gpio/Op1]
  connect_bd_net -net aresetn_ctrl [get_bd_ports aresetn_ctrl] [get_bd_pins axi_ic_ctrl_mgmt_0/ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M00_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M01_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M02_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M03_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M04_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M05_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/M06_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_0/S00_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_1/S00_ARESETN] [get_bd_pins build_info/S_AXI_ARESETN] [get_bd_pins clkwiz_hbm/s_axi_aresetn] [get_bd_pins clkwiz_kernel/s_axi_aresetn] [get_bd_pins clkwiz_kernel2/s_axi_aresetn] [get_bd_pins clock_throttling_avg/Rst] [get_bd_pins clock_throttling_kernel/Rst_In] [get_bd_pins clock_throttling_kernel2/Rst_In] [get_bd_pins fanout_aresetn_ctrl_slr0/d] [get_bd_pins fanout_aresetn_ctrl_slr1/d] [get_bd_pins gpio_gapping_demand/s_axi_aresetn] [get_bd_pins gpio_ucs_control_status/s_axi_aresetn] [get_bd_pins psreset_freerun_refclk/ext_reset_in] [get_bd_pins psreset_hbm/aux_reset_in] [get_bd_pins vip_ctrl_mgmt/aresetn]
  connect_bd_net -net aresetn_ctrl_slr0 [get_bd_ports aresetn_ctrl_slr0] [get_bd_pins fanout_aresetn_ctrl_slr0/q]
  connect_bd_net -net aresetn_ctrl_slr1 [get_bd_ports aresetn_ctrl_slr1] [get_bd_pins fanout_aresetn_ctrl_slr1/q]
  connect_bd_net -net aresetn_freerun_refclk [get_bd_pins axi_ic_ctrl_mgmt_1/ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_1/M00_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_1/M01_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_1/M02_ARESETN] [get_bd_pins axi_ic_ctrl_mgmt_1/M03_ARESETN] [get_bd_pins frequency_counter_aclk/s_axi_aresetn] [get_bd_pins frequency_counter_hbm/s_axi_aresetn] [get_bd_pins frequency_counter_kernel/s_axi_aresetn] [get_bd_pins frequency_counter_kernel2/s_axi_aresetn] [get_bd_pins psreset_freerun_refclk/interconnect_aresetn]
  connect_bd_net -net aresetn_kernel [get_bd_pins fanout_aresetn_kernel_slr0/d] [get_bd_pins fanout_aresetn_kernel_slr1/d] [get_bd_pins psreset_kernel/interconnect_aresetn]
  connect_bd_net -net aresetn_kernel2 [get_bd_pins fanout_aresetn_kernel2_slr0/d] [get_bd_pins fanout_aresetn_kernel2_slr1/d] [get_bd_pins psreset_kernel2/interconnect_aresetn]
  connect_bd_net -net aresetn_kernel2_async [get_bd_pins clock_throttling_kernel2/Rst_Async] [get_bd_pins psreset_kernel2/aux_reset_in]
  connect_bd_net -net aresetn_kernel2_slr0 [get_bd_ports aresetn_kernel2_slr0] [get_bd_pins fanout_aresetn_kernel2_slr0/q]
  connect_bd_net -net aresetn_kernel2_slr1 [get_bd_ports aresetn_kernel2_slr1] [get_bd_pins fanout_aresetn_kernel2_slr1/q]
  connect_bd_net -net aresetn_kernel_async [get_bd_pins clock_throttling_kernel/Rst_Async] [get_bd_pins psreset_kernel/aux_reset_in]
  connect_bd_net -net aresetn_kernel_slr0 [get_bd_ports aresetn_kernel_slr0] [get_bd_pins fanout_aresetn_kernel_slr0/q]
  connect_bd_net -net aresetn_kernel_slr1 [get_bd_ports aresetn_kernel_slr1] [get_bd_pins fanout_aresetn_kernel_slr1/q]
  connect_bd_net -net aresetn_pcie [get_bd_ports aresetn_pcie] [get_bd_pins fanout_aresetn_pcie_slr0/d] [get_bd_pins fanout_aresetn_pcie_slr1/d] [get_bd_pins psreset_hbm/ext_reset_in] [get_bd_pins psreset_kernel/ext_reset_in] [get_bd_pins psreset_kernel2/ext_reset_in]
  connect_bd_net -net aresetn_pcie_slr0 [get_bd_ports aresetn_pcie_slr0] [get_bd_pins fanout_aresetn_pcie_slr0/q]
  connect_bd_net -net aresetn_pcie_slr1 [get_bd_ports aresetn_pcie_slr1] [get_bd_pins fanout_aresetn_pcie_slr1/q]
  connect_bd_net -net clk_hbm_adapt_in [get_bd_pins clk_hbm_adapt/clk_in] [get_bd_pins clkwiz_hbm/clk_out1]
  connect_bd_net -net clk_hbm_locked [get_bd_pins clkwiz_hbm/locked] [get_bd_pins psreset_hbm/dcm_locked]
  connect_bd_net -net clk_kernel [get_bd_ports clk_kernel] [get_bd_pins clk_kernel_adapt/clk_out] [get_bd_pins frequency_counter_kernel/test_clk1]
  connect_bd_net -net clk_kernel2 [get_bd_ports clk_kernel2] [get_bd_pins clk_kernel2_adapt/clk_out] [get_bd_pins frequency_counter_kernel2/test_clk1]
  connect_bd_net -net clk_kernel2_cont [get_bd_pins clk_kernel2_cont_adapt/clk_out] [get_bd_pins fanout_aresetn_kernel2_slr0/clk] [get_bd_pins fanout_aresetn_kernel2_slr1/clk] [get_bd_pins frequency_counter_kernel2/test_clk0] [get_bd_pins psreset_kernel2/slowest_sync_clk]
  connect_bd_net -net clk_kernel2_locked [get_bd_pins clkwiz_kernel2/locked] [get_bd_pins clock_throttling_kernel2/Locked]
  connect_bd_net -net clk_kernel2_unbuffered [get_bd_pins clkwiz_kernel2/clk_out1] [get_bd_pins clock_throttling_kernel2/Clk_In]
  connect_bd_net -net clk_kernel_cont [get_bd_pins clk_kernel_cont_adapt/clk_out] [get_bd_pins fanout_aresetn_kernel_slr0/clk] [get_bd_pins fanout_aresetn_kernel_slr1/clk] [get_bd_pins frequency_counter_kernel/test_clk0] [get_bd_pins psreset_kernel/slowest_sync_clk]
  connect_bd_net -net clk_kernel_locked [get_bd_pins clkwiz_kernel/locked] [get_bd_pins clock_throttling_kernel/Locked]
  connect_bd_net -net clk_kernel_unbuffered [get_bd_pins clkwiz_kernel/clk_out1] [get_bd_pins clock_throttling_kernel/Clk_In]
  connect_bd_net -net clock_throttling_avg [get_bd_pins clock_throttling_avg/Rate_Avg] [get_bd_pins gpio_ucs_status_concat/In2]
  connect_bd_net -net clock_throttling_kernel2_clk_out [get_bd_pins clk_kernel2_adapt/clk_in] [get_bd_pins clock_throttling_kernel2/Clk_Out]
  connect_bd_net -net clock_throttling_kernel2_clk_out_cont [get_bd_pins clk_kernel2_cont_adapt/clk_in] [get_bd_pins clock_throttling_kernel2/Clk_Out_Cont]
  connect_bd_net -net clock_throttling_kernel_clk_out [get_bd_pins clk_kernel_adapt/clk_in] [get_bd_pins clock_throttling_kernel/Clk_Out]
  connect_bd_net -net clock_throttling_kernel_clk_out_cont [get_bd_pins clk_kernel_cont_adapt/clk_in] [get_bd_pins clock_throttling_kernel/Clk_Out_Cont]
  connect_bd_net -net freerun_refclk [get_bd_ports freerun_refclk] [get_bd_pins axi_ic_ctrl_mgmt_1/ACLK] [get_bd_pins axi_ic_ctrl_mgmt_1/M00_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_1/M01_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_1/M02_ACLK] [get_bd_pins axi_ic_ctrl_mgmt_1/M03_ACLK] [get_bd_pins clkwiz_hbm/clk_in1] [get_bd_pins clkwiz_kernel/clk_in1] [get_bd_pins clkwiz_kernel2/clk_in1] [get_bd_pins frequency_counter_aclk/s_axi_aclk] [get_bd_pins frequency_counter_hbm/s_axi_aclk] [get_bd_pins frequency_counter_kernel/s_axi_aclk] [get_bd_pins frequency_counter_kernel2/s_axi_aclk] [get_bd_pins psreset_freerun_refclk/slowest_sync_clk]
  connect_bd_net -net gapping_demand_bready [get_bd_pins axi_ic_ctrl_mgmt_0/M01_AXI_bready] [get_bd_pins gapping_demand_update/Op2] [get_bd_pins gpio_gapping_demand/s_axi_bready]
  connect_bd_net -net gapping_demand_bvalid [get_bd_pins axi_ic_ctrl_mgmt_0/M01_AXI_bvalid] [get_bd_pins gapping_demand_update/Op1] [get_bd_pins gpio_gapping_demand/s_axi_bvalid]
  connect_bd_net -net gapping_demand_toggle [get_bd_pins clock_throttling_avg/Rate_Upd_Tog] [get_bd_pins clock_throttling_kernel/Rate_Upd_Tog] [get_bd_pins clock_throttling_kernel2/Rate_Upd_Tog] [get_bd_pins gapping_demand_toggle/Q]
  connect_bd_net -net gapping_demand_update [get_bd_pins gapping_demand_toggle/CE] [get_bd_pins gapping_demand_update/Res]
  connect_bd_net -net gnd2 [get_bd_pins gnd2/dout] [get_bd_pins gpio_ucs_status_concat/In3]
  connect_bd_net -net gnd15 [get_bd_pins gnd15/dout] [get_bd_pins gpio_ucs_status_concat/In1]
  connect_bd_net -net gpio_gapping_demand [get_bd_pins clock_throttling_avg/Rate] [get_bd_pins clock_throttling_kernel/Rate_In] [get_bd_pins clock_throttling_kernel2/Rate_In] [get_bd_pins gpio_gapping_demand/gpio_io_o]
  connect_bd_net -net gpio_ucs_control_status_gpio2 [get_bd_pins gpio_ucs_control_status/gpio2_io_o] [get_bd_pins slice_check_gpio/Din] [get_bd_pins slice_startup_done_gpio/Din]
  connect_bd_net -net gpio_ucs_status_concat_dout [get_bd_pins gpio_ucs_control_status/gpio_io_i] [get_bd_pins gpio_ucs_status_concat/dout]
  connect_bd_net -net hbm_aclk [get_bd_ports hbm_aclk] [get_bd_pins clk_hbm_adapt/clk_out] [get_bd_pins fanout_aresetn_hbm/clk] [get_bd_pins frequency_counter_hbm/test_clk0] [get_bd_pins psreset_hbm/slowest_sync_clk]
  connect_bd_net -net hbm_aresetn [get_bd_ports hbm_aresetn] [get_bd_pins fanout_aresetn_hbm/q]
  connect_bd_net -net hbm_aresetn_int [get_bd_pins fanout_aresetn_hbm/d] [get_bd_pins psreset_hbm/interconnect_aresetn]
  connect_bd_net -net hbm_refclk [get_bd_ports hbm_refclk] [get_bd_pins frequency_counter_hbm/test_clk3]
  connect_bd_net -net or_shutdown_clocks_res [get_bd_pins or_shutdown_clocks/Res] [get_bd_pins shutdown_clocks_latch/CE]
  connect_bd_net -net reduce_check_gpio_res [get_bd_pins or_shutdown_clocks/Op2] [get_bd_pins reduce_check_gpio/Res]
  connect_bd_net -net shutdown_clocks [get_bd_ports shutdown_clocks] [get_bd_pins or_shutdown_clocks/Op1]
  connect_bd_net -net shutdown_clocks_latched [get_bd_pins clkwiz_hbm/power_down] [get_bd_pins clkwiz_kernel/power_down] [get_bd_pins clkwiz_kernel2/power_down] [get_bd_pins gpio_ucs_status_concat/In0] [get_bd_pins shutdown_clocks_latch/Q]
  connect_bd_net -net slice_check_gpio_dout [get_bd_pins adder_check_gpio/A] [get_bd_pins slice_check_gpio/Dout]
  connect_bd_net -net startup_done [get_bd_pins clkwiz_hbm/clk_out1_ce] [get_bd_pins clock_throttling_kernel/Startup_Done] [get_bd_pins clock_throttling_kernel2/Startup_Done] [get_bd_pins slice_startup_done_gpio/Dout]
  connect_bd_net -net vcc [get_bd_pins fanout_aresetn_ctrl_slr0/resetn] [get_bd_pins fanout_aresetn_ctrl_slr1/resetn] [get_bd_pins fanout_aresetn_hbm/resetn] [get_bd_pins fanout_aresetn_kernel2_slr0/resetn] [get_bd_pins fanout_aresetn_kernel2_slr1/resetn] [get_bd_pins fanout_aresetn_kernel_slr0/resetn] [get_bd_pins fanout_aresetn_kernel_slr1/resetn] [get_bd_pins fanout_aresetn_pcie_slr0/resetn] [get_bd_pins fanout_aresetn_pcie_slr1/resetn] [get_bd_pins shutdown_clocks_latch/D] [get_bd_pins vcc/dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs build_info/S_AXI/reg0] -force
  assign_bd_address -offset 0x00007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs clkwiz_hbm/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs clkwiz_kernel2/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs clkwiz_kernel/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs frequency_counter_aclk/S_AXI/reg0] -force
  assign_bd_address -offset 0x00008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs frequency_counter_hbm/S_AXI/reg0] -force
  assign_bd_address -offset 0x00006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs frequency_counter_kernel2/S_AXI/reg0] -force
  assign_bd_address -offset 0x00005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs frequency_counter_kernel/S_AXI/reg0] -force
  assign_bd_address -offset 0x00001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs gpio_gapping_demand/S_AXI/Reg] -force
  assign_bd_address -offset 0x00002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs gpio_ucs_control_status/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


