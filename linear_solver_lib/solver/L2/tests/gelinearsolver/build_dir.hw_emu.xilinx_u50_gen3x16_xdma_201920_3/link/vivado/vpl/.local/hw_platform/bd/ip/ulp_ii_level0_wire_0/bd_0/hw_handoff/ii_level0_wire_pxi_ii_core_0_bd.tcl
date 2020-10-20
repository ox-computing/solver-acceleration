
################################################################
# This is a generated script based on design: bd_5941
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
# source bd_5941_script.tcl

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
set design_name bd_5941

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./ulp/ulp.srcs/sources_1/bd/ulp/ip/ulp_ii_level0_wire_0/bd_0

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir -bdsource SBD $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design -bdsource SBD $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

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
  set BLP_S_AXI_CTRL_MGMT_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_CTRL_MGMT_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_MGMT_00

  set BLP_S_AXI_CTRL_MGMT_01 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_CTRL_MGMT_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_MGMT_01

  set BLP_S_AXI_CTRL_USER_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_CTRL_USER_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_00

  set BLP_S_AXI_CTRL_USER_01 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_CTRL_USER_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_01

  set BLP_S_AXI_CTRL_USER_02 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_CTRL_USER_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_02

  set BLP_S_AXI_DATA_H2C_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 BLP_S_AXI_DATA_H2C_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_pcie_00} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_DATA_H2C_00

  set ULP_M_AXI_CTRL_MGMT_00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_CTRL_MGMT_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_CTRL_MGMT_00

  set ULP_M_AXI_CTRL_MGMT_01 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_CTRL_MGMT_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_CTRL_MGMT_01

  set ULP_M_AXI_CTRL_USER_00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_CTRL_USER_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_CTRL_USER_00

  set ULP_M_AXI_CTRL_USER_01 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_CTRL_USER_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_CTRL_USER_01

  set ULP_M_AXI_CTRL_USER_02 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_CTRL_USER_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PHASE {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_CTRL_USER_02

  set ULP_M_AXI_DATA_H2C_00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ULP_M_AXI_DATA_H2C_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.CLK_DOMAIN {cd_pcie_00} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SLR_ASSIGNMENT {slr0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $ULP_M_AXI_DATA_H2C_00


  # Create ports
  set blp_m_data_hbm_temp_00 [ create_bd_port -dir O -from 6 -to 0 -type data blp_m_data_hbm_temp_00 ]
  set blp_m_data_hbm_temp_01 [ create_bd_port -dir O -from 6 -to 0 -type data blp_m_data_hbm_temp_01 ]
  set blp_m_data_memory_calib_complete_00 [ create_bd_port -dir O -from 0 -to 0 -type data blp_m_data_memory_calib_complete_00 ]
  set blp_m_irq_cu_00 [ create_bd_port -dir O -from 127 -to 0 -type intr blp_m_irq_cu_00 ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {level_high} \
 ] $blp_m_irq_cu_00
  set blp_m_irq_hbm_cattrip_00 [ create_bd_port -dir O -from 0 -to 0 -type intr blp_m_irq_hbm_cattrip_00 ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {level_high} \
 ] $blp_m_irq_hbm_cattrip_00
  set blp_s_aclk_ctrl_00 [ create_bd_port -dir I -type clk -freq_hz 50000000 blp_s_aclk_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {BLP_S_ARESETN_CTRL_00} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_ctrl_00
  set blp_s_aclk_freerun_ref_00 [ create_bd_port -dir I -type clk -freq_hz 100000000 blp_s_aclk_freerun_ref_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_freerun_ref_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_freerun_ref_00
  set blp_s_aclk_pcie_00 [ create_bd_port -dir I -type clk -freq_hz 250000000 blp_s_aclk_pcie_00 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {BLP_S_ARESETN_PCIE_00} \
   CONFIG.CLK_DOMAIN {cd_pcie_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_pcie_00
  set blp_s_aresetn_ctrl_00 [ create_bd_port -dir I -from 0 -to 0 -type rst blp_s_aresetn_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $blp_s_aresetn_ctrl_00
  set blp_s_aresetn_pcie_00 [ create_bd_port -dir I -from 0 -to 0 -type rst blp_s_aresetn_pcie_00 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $blp_s_aresetn_pcie_00
  set blp_s_data_satellite_ctrl_data_00 [ create_bd_port -dir I -from 1 -to 0 -type data blp_s_data_satellite_ctrl_data_00 ]
  set ulp_m_aclk_ctrl_00 [ create_bd_port -dir O -type clk ulp_m_aclk_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {ULP_M_ARESETN_CTRL_00} \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.PHASE {0} \
 ] $ulp_m_aclk_ctrl_00
  set ulp_m_aclk_freerun_ref_00 [ create_bd_port -dir O -type clk ulp_m_aclk_freerun_ref_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_freerun_ref_00} \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0} \
 ] $ulp_m_aclk_freerun_ref_00
  set ulp_m_aclk_pcie_00 [ create_bd_port -dir O -type clk ulp_m_aclk_pcie_00 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {ULP_M_ARESETN_PCIE_00} \
   CONFIG.CLK_DOMAIN {cd_pcie_00} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.PHASE {0} \
 ] $ulp_m_aclk_pcie_00
  set ulp_m_aresetn_ctrl_00 [ create_bd_port -dir O -from 0 -to 0 -type rst ulp_m_aresetn_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $ulp_m_aresetn_ctrl_00
  set ulp_m_aresetn_pcie_00 [ create_bd_port -dir O -from 0 -to 0 -type rst ulp_m_aresetn_pcie_00 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $ulp_m_aresetn_pcie_00
  set ulp_m_data_satellite_ctrl_data_00 [ create_bd_port -dir O -from 1 -to 0 -type data ulp_m_data_satellite_ctrl_data_00 ]
  set ulp_s_data_hbm_temp_00 [ create_bd_port -dir I -from 6 -to 0 -type data ulp_s_data_hbm_temp_00 ]
  set ulp_s_data_hbm_temp_01 [ create_bd_port -dir I -from 6 -to 0 -type data ulp_s_data_hbm_temp_01 ]
  set ulp_s_data_memory_calib_complete_00 [ create_bd_port -dir I -from 0 -to 0 -type data ulp_s_data_memory_calib_complete_00 ]
  set ulp_s_irq_cu_00 [ create_bd_port -dir I -from 127 -to 0 -type intr ulp_s_irq_cu_00 ]
  set_property -dict [ list \
   CONFIG.PortWidth {128} \
   CONFIG.SENSITIVITY {level_high} \
 ] $ulp_s_irq_cu_00
  set ulp_s_irq_hbm_cattrip_00 [ create_bd_port -dir I -from 0 -to 0 -type intr ulp_s_irq_hbm_cattrip_00 ]
  set_property -dict [ list \
   CONFIG.PortWidth {1} \
   CONFIG.SENSITIVITY {level_high} \
 ] $ulp_s_irq_hbm_cattrip_00

  # Create instance: ip_aclk_ctrl_00, and set properties
  set ip_aclk_ctrl_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 ip_aclk_ctrl_00 ]

  # Create instance: ip_aclk_freerun_ref_00, and set properties
  set ip_aclk_freerun_ref_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 ip_aclk_freerun_ref_00 ]

  # Create instance: ip_aclk_pcie_00, and set properties
  set ip_aclk_pcie_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_metadata_adapter:1.0 ip_aclk_pcie_00 ]

  # Create instance: ip_aresetn_ctrl_00, and set properties
  set ip_aresetn_ctrl_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_aresetn_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
 ] $ip_aresetn_ctrl_00

  # Create instance: ip_aresetn_pcie_00, and set properties
  set ip_aresetn_pcie_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_aresetn_pcie_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
 ] $ip_aresetn_pcie_00

  # Create instance: ip_data_hbm_temp_00, and set properties
  set ip_data_hbm_temp_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_data_hbm_temp_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {7} \
 ] $ip_data_hbm_temp_00

  # Create instance: ip_data_hbm_temp_01, and set properties
  set ip_data_hbm_temp_01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_data_hbm_temp_01 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {7} \
 ] $ip_data_hbm_temp_01

  # Create instance: ip_data_memory_calib_complete_00, and set properties
  set ip_data_memory_calib_complete_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_data_memory_calib_complete_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {1} \
 ] $ip_data_memory_calib_complete_00

  # Create instance: ip_data_satellite_ctrl_data_00, and set properties
  set ip_data_satellite_ctrl_data_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_data_satellite_ctrl_data_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {2} \
 ] $ip_data_satellite_ctrl_data_00

  # Create instance: ip_irq_cu_00, and set properties
  set ip_irq_cu_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_irq_cu_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {128} \
 ] $ip_irq_cu_00

  # Create instance: ip_irq_hbm_cattrip_00, and set properties
  set ip_irq_hbm_cattrip_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pipeline_reg:1.0 ip_irq_hbm_cattrip_00 ]
  set_property -dict [ list \
   CONFIG.DEPTH {0} \
   CONFIG.WIDTH {1} \
 ] $ip_irq_hbm_cattrip_00

  # Create instance: m_ip_axi_ctrl_mgmt_00, and set properties
  set m_ip_axi_ctrl_mgmt_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_ctrl_mgmt_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $m_ip_axi_ctrl_mgmt_00

  # Create instance: m_ip_axi_ctrl_mgmt_01, and set properties
  set m_ip_axi_ctrl_mgmt_01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_ctrl_mgmt_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $m_ip_axi_ctrl_mgmt_01

  # Create instance: m_ip_axi_ctrl_user_00, and set properties
  set m_ip_axi_ctrl_user_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_ctrl_user_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $m_ip_axi_ctrl_user_00

  # Create instance: m_ip_axi_ctrl_user_01, and set properties
  set m_ip_axi_ctrl_user_01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_ctrl_user_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $m_ip_axi_ctrl_user_01

  # Create instance: m_ip_axi_ctrl_user_02, and set properties
  set m_ip_axi_ctrl_user_02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_ctrl_user_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $m_ip_axi_ctrl_user_02

  # Create instance: m_ip_axi_data_h2c_00, and set properties
  set m_ip_axi_data_h2c_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 m_ip_axi_data_h2c_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $m_ip_axi_data_h2c_00

  # Create instance: s_ip_axi_ctrl_mgmt_00, and set properties
  set s_ip_axi_ctrl_mgmt_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_ctrl_mgmt_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $s_ip_axi_ctrl_mgmt_00

  # Create instance: s_ip_axi_ctrl_mgmt_01, and set properties
  set s_ip_axi_ctrl_mgmt_01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_ctrl_mgmt_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $s_ip_axi_ctrl_mgmt_01

  # Create instance: s_ip_axi_ctrl_user_00, and set properties
  set s_ip_axi_ctrl_user_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_ctrl_user_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $s_ip_axi_ctrl_user_00

  # Create instance: s_ip_axi_ctrl_user_01, and set properties
  set s_ip_axi_ctrl_user_01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_ctrl_user_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $s_ip_axi_ctrl_user_01

  # Create instance: s_ip_axi_ctrl_user_02, and set properties
  set s_ip_axi_ctrl_user_02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_ctrl_user_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
 ] $s_ip_axi_ctrl_user_02

  # Create instance: s_ip_axi_data_h2c_00, and set properties
  set s_ip_axi_data_h2c_00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s_ip_axi_data_h2c_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $s_ip_axi_data_h2c_00

  # Create interface connections
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_MGMT_00_1 [get_bd_intf_ports BLP_S_AXI_CTRL_MGMT_00] [get_bd_intf_pins s_ip_axi_ctrl_mgmt_00/S_AXI]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_MGMT_01_1 [get_bd_intf_ports BLP_S_AXI_CTRL_MGMT_01] [get_bd_intf_pins s_ip_axi_ctrl_mgmt_01/S_AXI]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_00_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_00] [get_bd_intf_pins s_ip_axi_ctrl_user_00/S_AXI]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_01_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_01] [get_bd_intf_pins s_ip_axi_ctrl_user_01/S_AXI]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_02_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_02] [get_bd_intf_pins s_ip_axi_ctrl_user_02/S_AXI]
  connect_bd_intf_net -intf_net BLP_S_AXI_DATA_H2C_00_1 [get_bd_intf_ports BLP_S_AXI_DATA_H2C_00] [get_bd_intf_pins s_ip_axi_data_h2c_00/S_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_ctrl_mgmt_00_M_AXI [get_bd_intf_ports ULP_M_AXI_CTRL_MGMT_00] [get_bd_intf_pins m_ip_axi_ctrl_mgmt_00/M_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_ctrl_mgmt_01_M_AXI [get_bd_intf_ports ULP_M_AXI_CTRL_MGMT_01] [get_bd_intf_pins m_ip_axi_ctrl_mgmt_01/M_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_ctrl_user_00_M_AXI [get_bd_intf_ports ULP_M_AXI_CTRL_USER_00] [get_bd_intf_pins m_ip_axi_ctrl_user_00/M_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_ctrl_user_01_M_AXI [get_bd_intf_ports ULP_M_AXI_CTRL_USER_01] [get_bd_intf_pins m_ip_axi_ctrl_user_01/M_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_ctrl_user_02_M_AXI [get_bd_intf_ports ULP_M_AXI_CTRL_USER_02] [get_bd_intf_pins m_ip_axi_ctrl_user_02/M_AXI]
  connect_bd_intf_net -intf_net m_ip_axi_data_h2c_00_M_AXI [get_bd_intf_ports ULP_M_AXI_DATA_H2C_00] [get_bd_intf_pins m_ip_axi_data_h2c_00/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_ctrl_mgmt_00_M_AXI [get_bd_intf_pins m_ip_axi_ctrl_mgmt_00/S_AXI] [get_bd_intf_pins s_ip_axi_ctrl_mgmt_00/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_ctrl_mgmt_01_M_AXI [get_bd_intf_pins m_ip_axi_ctrl_mgmt_01/S_AXI] [get_bd_intf_pins s_ip_axi_ctrl_mgmt_01/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_ctrl_user_00_M_AXI [get_bd_intf_pins m_ip_axi_ctrl_user_00/S_AXI] [get_bd_intf_pins s_ip_axi_ctrl_user_00/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_ctrl_user_01_M_AXI [get_bd_intf_pins m_ip_axi_ctrl_user_01/S_AXI] [get_bd_intf_pins s_ip_axi_ctrl_user_01/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_ctrl_user_02_M_AXI [get_bd_intf_pins m_ip_axi_ctrl_user_02/S_AXI] [get_bd_intf_pins s_ip_axi_ctrl_user_02/M_AXI]
  connect_bd_intf_net -intf_net s_ip_axi_data_h2c_00_M_AXI [get_bd_intf_pins m_ip_axi_data_h2c_00/S_AXI] [get_bd_intf_pins s_ip_axi_data_h2c_00/M_AXI]

  # Create port connections
  connect_bd_net -net blp_s_aclk_ctrl_00_1 [get_bd_ports blp_s_aclk_ctrl_00] [get_bd_pins ip_aclk_ctrl_00/clk_in] [get_bd_pins ip_aresetn_ctrl_00/clk] [get_bd_pins ip_data_satellite_ctrl_data_00/clk] [get_bd_pins s_ip_axi_ctrl_mgmt_00/aclk] [get_bd_pins s_ip_axi_ctrl_mgmt_01/aclk] [get_bd_pins s_ip_axi_ctrl_user_00/aclk] [get_bd_pins s_ip_axi_ctrl_user_01/aclk] [get_bd_pins s_ip_axi_ctrl_user_02/aclk]
  connect_bd_net -net blp_s_aclk_freerun_ref_00_1 [get_bd_ports blp_s_aclk_freerun_ref_00] [get_bd_pins ip_aclk_freerun_ref_00/clk_in]
  connect_bd_net -net blp_s_aclk_pcie_00_1 [get_bd_ports blp_s_aclk_pcie_00] [get_bd_pins ip_aclk_pcie_00/clk_in] [get_bd_pins ip_aresetn_pcie_00/clk] [get_bd_pins s_ip_axi_data_h2c_00/aclk]
  connect_bd_net -net blp_s_aresetn_ctrl_00_1 [get_bd_ports blp_s_aresetn_ctrl_00] [get_bd_pins ip_aresetn_ctrl_00/d] [get_bd_pins ip_data_satellite_ctrl_data_00/resetn] [get_bd_pins s_ip_axi_ctrl_mgmt_00/aresetn] [get_bd_pins s_ip_axi_ctrl_mgmt_01/aresetn] [get_bd_pins s_ip_axi_ctrl_user_00/aresetn] [get_bd_pins s_ip_axi_ctrl_user_01/aresetn] [get_bd_pins s_ip_axi_ctrl_user_02/aresetn]
  connect_bd_net -net blp_s_aresetn_pcie_00_1 [get_bd_ports blp_s_aresetn_pcie_00] [get_bd_pins ip_aresetn_pcie_00/d] [get_bd_pins s_ip_axi_data_h2c_00/aresetn]
  connect_bd_net -net blp_s_data_satellite_ctrl_data_00_1 [get_bd_ports blp_s_data_satellite_ctrl_data_00] [get_bd_pins ip_data_satellite_ctrl_data_00/d]
  connect_bd_net -net ip_aclk_ctrl_00_clk_out [get_bd_ports ulp_m_aclk_ctrl_00] [get_bd_pins ip_aclk_ctrl_00/clk_out] [get_bd_pins ip_data_hbm_temp_00/clk] [get_bd_pins ip_data_hbm_temp_01/clk] [get_bd_pins ip_data_memory_calib_complete_00/clk] [get_bd_pins ip_irq_hbm_cattrip_00/clk] [get_bd_pins m_ip_axi_ctrl_mgmt_00/aclk] [get_bd_pins m_ip_axi_ctrl_mgmt_01/aclk] [get_bd_pins m_ip_axi_ctrl_user_00/aclk] [get_bd_pins m_ip_axi_ctrl_user_01/aclk] [get_bd_pins m_ip_axi_ctrl_user_02/aclk]
  connect_bd_net -net ip_aclk_freerun_ref_00_clk_out [get_bd_ports ulp_m_aclk_freerun_ref_00] [get_bd_pins ip_aclk_freerun_ref_00/clk_out]
  connect_bd_net -net ip_aclk_pcie_00_clk_out [get_bd_ports ulp_m_aclk_pcie_00] [get_bd_pins ip_aclk_pcie_00/clk_out] [get_bd_pins ip_irq_cu_00/clk] [get_bd_pins m_ip_axi_data_h2c_00/aclk]
  connect_bd_net -net ip_aresetn_ctrl_00_q [get_bd_ports ulp_m_aresetn_ctrl_00] [get_bd_pins ip_aresetn_ctrl_00/q] [get_bd_pins ip_data_hbm_temp_00/resetn] [get_bd_pins ip_data_hbm_temp_01/resetn] [get_bd_pins ip_data_memory_calib_complete_00/resetn] [get_bd_pins ip_irq_hbm_cattrip_00/resetn] [get_bd_pins m_ip_axi_ctrl_mgmt_00/aresetn] [get_bd_pins m_ip_axi_ctrl_mgmt_01/aresetn] [get_bd_pins m_ip_axi_ctrl_user_00/aresetn] [get_bd_pins m_ip_axi_ctrl_user_01/aresetn] [get_bd_pins m_ip_axi_ctrl_user_02/aresetn]
  connect_bd_net -net ip_aresetn_pcie_00_q [get_bd_ports ulp_m_aresetn_pcie_00] [get_bd_pins ip_aresetn_pcie_00/q] [get_bd_pins ip_irq_cu_00/resetn] [get_bd_pins m_ip_axi_data_h2c_00/aresetn]
  connect_bd_net -net ip_data_hbm_temp_00_q [get_bd_ports blp_m_data_hbm_temp_00] [get_bd_pins ip_data_hbm_temp_00/q]
  connect_bd_net -net ip_data_hbm_temp_01_q [get_bd_ports blp_m_data_hbm_temp_01] [get_bd_pins ip_data_hbm_temp_01/q]
  connect_bd_net -net ip_data_memory_calib_complete_00_q [get_bd_ports blp_m_data_memory_calib_complete_00] [get_bd_pins ip_data_memory_calib_complete_00/q]
  connect_bd_net -net ip_data_satellite_ctrl_data_00_q [get_bd_ports ulp_m_data_satellite_ctrl_data_00] [get_bd_pins ip_data_satellite_ctrl_data_00/q]
  connect_bd_net -net ip_irq_cu_00_q [get_bd_ports blp_m_irq_cu_00] [get_bd_pins ip_irq_cu_00/q]
  connect_bd_net -net ip_irq_hbm_cattrip_00_q [get_bd_ports blp_m_irq_hbm_cattrip_00] [get_bd_pins ip_irq_hbm_cattrip_00/q]
  connect_bd_net -net ulp_s_data_hbm_temp_00_1 [get_bd_ports ulp_s_data_hbm_temp_00] [get_bd_pins ip_data_hbm_temp_00/d]
  connect_bd_net -net ulp_s_data_hbm_temp_01_1 [get_bd_ports ulp_s_data_hbm_temp_01] [get_bd_pins ip_data_hbm_temp_01/d]
  connect_bd_net -net ulp_s_data_memory_calib_complete_00_1 [get_bd_ports ulp_s_data_memory_calib_complete_00] [get_bd_pins ip_data_memory_calib_complete_00/d]
  connect_bd_net -net ulp_s_irq_cu_00_1 [get_bd_ports ulp_s_irq_cu_00] [get_bd_pins ip_irq_cu_00/d]
  connect_bd_net -net ulp_s_irq_hbm_cattrip_00_1 [get_bd_ports ulp_s_irq_hbm_cattrip_00] [get_bd_pins ip_irq_hbm_cattrip_00/d]

  # Create address segments


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


