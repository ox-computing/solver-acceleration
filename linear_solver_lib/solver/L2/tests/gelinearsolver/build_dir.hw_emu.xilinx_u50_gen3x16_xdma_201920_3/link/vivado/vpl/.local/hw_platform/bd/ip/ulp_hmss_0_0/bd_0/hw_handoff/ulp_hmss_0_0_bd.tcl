
################################################################
# This is a generated script based on design: bd_85ad
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
# source bd_85ad_script.tcl

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
set design_name bd_85ad

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


# Hierarchical cell: path_12
proc create_hier_cell_path_12 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_path_12() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type rst aresetn1
  create_bd_pin -dir I -type clk hbm_aclk

  # Create instance: interconnect0_12, and set properties
  set interconnect0_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect0_12 ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {__view__ {functional {S00_Entry {SUPPORTS_WRAP 0}} timing {S00_Entry {MMU_REGSLICE 1} M00_Exit {REGSLICE 1}}}} \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_SI {1} \
 ] $interconnect0_12

  # Create instance: slice0_12, and set properties
  set slice0_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 slice0_12 ]
  set_property -dict [ list \
   CONFIG.REG_AR {7} \
   CONFIG.REG_AW {7} \
   CONFIG.REG_B {7} \
   CONFIG.REG_R {1} \
   CONFIG.REG_W {1} \
 ] $slice0_12

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins interconnect0_12/S00_AXI]
  connect_bd_intf_net -intf_net interconnect0_12_M00_AXI [get_bd_intf_pins interconnect0_12/M00_AXI] [get_bd_intf_pins slice0_12/S_AXI]
  connect_bd_intf_net -intf_net slice0_12_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins slice0_12/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins interconnect0_12/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins interconnect0_12/aresetn]
  connect_bd_net -net hbm_aclk_1 [get_bd_pins hbm_aclk] [get_bd_pins interconnect0_12/aclk1] [get_bd_pins slice0_12/aclk]
  connect_bd_net -net hbm_reset_sync_SLR0_interconnect_aresetn [get_bd_pins aresetn1] [get_bd_pins slice0_12/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: init_logic
proc create_hier_cell_init_logic { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_init_logic() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir O hbm_mc_init_seq_complete

  # Create instance: init_concat, and set properties
  set init_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 init_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $init_concat

  # Create instance: init_reduce, and set properties
  set init_reduce [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 init_reduce ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {2} \
 ] $init_reduce

  # Create port connections
  connect_bd_net -net hbm_inst_apb_complete_0 [get_bd_pins In0] [get_bd_pins init_concat/In0]
  connect_bd_net -net hbm_inst_apb_complete_1 [get_bd_pins In1] [get_bd_pins init_concat/In1]
  connect_bd_net -net init_concat_dout [get_bd_pins init_concat/dout] [get_bd_pins init_reduce/Op1]
  connect_bd_net -net init_reduce_Res [get_bd_pins hbm_mc_init_seq_complete] [get_bd_pins init_reduce/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {33} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.SLR_ASSIGNMENT {} \
   ] $S00_AXI

  set S_AXI_CTRL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTRL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {23} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $S_AXI_CTRL


  # Create ports
  set DRAM_0_STAT_TEMP [ create_bd_port -dir O -from 6 -to 0 DRAM_0_STAT_TEMP ]
  set DRAM_1_STAT_TEMP [ create_bd_port -dir O -from 6 -to 0 DRAM_1_STAT_TEMP ]
  set DRAM_STAT_CATTRIP [ create_bd_port -dir O -from 0 -to 0 -type intr DRAM_STAT_CATTRIP ]
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
 ] $aclk
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $aresetn
  set ctrl_aclk [ create_bd_port -dir I -type clk ctrl_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXI_CTRL} \
   CONFIG.ASSOCIATED_RESET {ctrl_aresetn} \
 ] $ctrl_aclk
  set ctrl_aresetn [ create_bd_port -dir I -type rst ctrl_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $ctrl_aresetn
  set hbm_aclk [ create_bd_port -dir I -type clk hbm_aclk ]
  set hbm_aresetn [ create_bd_port -dir I -type rst hbm_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $hbm_aresetn
  set hbm_mc_init_seq_complete [ create_bd_port -dir O hbm_mc_init_seq_complete ]
  set hbm_ref_clk [ create_bd_port -dir I -type clk hbm_ref_clk ]

  # Create instance: axi_apb_bridge_inst, and set properties
  set axi_apb_bridge_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_apb_bridge:3.0 axi_apb_bridge_inst ]
  set_property -dict [ list \
   CONFIG.C_APB_NUM_SLAVES {2} \
   CONFIG.C_M_APB_PROTOCOL {apb3} \
 ] $axi_apb_bridge_inst

  # Create instance: hbm_inst, and set properties
  set hbm_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:hbm:1.0 hbm_inst ]
  set_property -dict [ list \
   CONFIG.USER_CLK_SEL_LIST0 {AXI_12_ACLK} \
   CONFIG.USER_DIS_REF_CLK_BUFG {TRUE} \
   CONFIG.USER_HBM_DENSITY {8GB} \
   CONFIG.USER_HBM_STACK {2} \
   CONFIG.USER_INIT_TIMEOUT_VAL {0} \
   CONFIG.USER_MC0_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC0_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC0_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC0_EN_DATA_MASK {false} \
   CONFIG.USER_MC0_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC0_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC10_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC10_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC10_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC10_EN_DATA_MASK {false} \
   CONFIG.USER_MC10_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC10_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC11_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC11_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC11_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC11_EN_DATA_MASK {false} \
   CONFIG.USER_MC11_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC11_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC12_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC12_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC12_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC12_EN_DATA_MASK {false} \
   CONFIG.USER_MC12_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC12_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC13_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC13_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC13_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC13_EN_DATA_MASK {false} \
   CONFIG.USER_MC13_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC13_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC14_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC14_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC14_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC14_EN_DATA_MASK {false} \
   CONFIG.USER_MC14_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC14_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC15_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC15_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC15_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC15_EN_DATA_MASK {false} \
   CONFIG.USER_MC15_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC15_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC1_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC1_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC1_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC1_EN_DATA_MASK {false} \
   CONFIG.USER_MC1_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC1_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC2_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC2_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC2_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC2_EN_DATA_MASK {false} \
   CONFIG.USER_MC2_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC2_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC3_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC3_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC3_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC3_EN_DATA_MASK {false} \
   CONFIG.USER_MC3_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC3_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC4_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC4_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC4_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC4_EN_DATA_MASK {false} \
   CONFIG.USER_MC4_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC4_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC5_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC5_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC5_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC5_EN_DATA_MASK {false} \
   CONFIG.USER_MC5_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC5_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC6_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC6_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC6_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC6_EN_DATA_MASK {false} \
   CONFIG.USER_MC6_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC6_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC7_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC7_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC7_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC7_EN_DATA_MASK {false} \
   CONFIG.USER_MC7_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC7_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC8_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC8_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC8_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC8_EN_DATA_MASK {false} \
   CONFIG.USER_MC8_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC8_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC9_ECC_SCRUB_PERIOD {0x0032} \
   CONFIG.USER_MC9_ENABLE_ECC_CORRECTION {true} \
   CONFIG.USER_MC9_ENABLE_ECC_SCRUBBING {true} \
   CONFIG.USER_MC9_EN_DATA_MASK {false} \
   CONFIG.USER_MC9_INITILIZE_MEM_USING_ECC_SCRUB {true} \
   CONFIG.USER_MC9_TEMP_CTRL_SELF_REF_INTVL {true} \
   CONFIG.USER_MC_ENABLE_00 {TRUE} \
   CONFIG.USER_MC_ENABLE_01 {TRUE} \
   CONFIG.USER_MC_ENABLE_02 {TRUE} \
   CONFIG.USER_MC_ENABLE_03 {TRUE} \
   CONFIG.USER_MC_ENABLE_04 {TRUE} \
   CONFIG.USER_MC_ENABLE_05 {TRUE} \
   CONFIG.USER_MC_ENABLE_06 {TRUE} \
   CONFIG.USER_MC_ENABLE_07 {TRUE} \
   CONFIG.USER_MC_ENABLE_08 {TRUE} \
   CONFIG.USER_MC_ENABLE_09 {TRUE} \
   CONFIG.USER_MC_ENABLE_10 {TRUE} \
   CONFIG.USER_MC_ENABLE_11 {TRUE} \
   CONFIG.USER_MC_ENABLE_12 {TRUE} \
   CONFIG.USER_MC_ENABLE_13 {TRUE} \
   CONFIG.USER_MC_ENABLE_14 {TRUE} \
   CONFIG.USER_MC_ENABLE_15 {TRUE} \
   CONFIG.USER_SAXI_00 {false} \
   CONFIG.USER_SAXI_01 {false} \
   CONFIG.USER_SAXI_02 {false} \
   CONFIG.USER_SAXI_03 {false} \
   CONFIG.USER_SAXI_04 {false} \
   CONFIG.USER_SAXI_05 {false} \
   CONFIG.USER_SAXI_06 {false} \
   CONFIG.USER_SAXI_07 {false} \
   CONFIG.USER_SAXI_08 {false} \
   CONFIG.USER_SAXI_09 {false} \
   CONFIG.USER_SAXI_10 {false} \
   CONFIG.USER_SAXI_11 {false} \
   CONFIG.USER_SAXI_12 {true} \
   CONFIG.USER_SAXI_13 {false} \
   CONFIG.USER_SAXI_14 {false} \
   CONFIG.USER_SAXI_15 {false} \
   CONFIG.USER_SAXI_16 {false} \
   CONFIG.USER_SAXI_17 {false} \
   CONFIG.USER_SAXI_18 {false} \
   CONFIG.USER_SAXI_19 {false} \
   CONFIG.USER_SAXI_20 {false} \
   CONFIG.USER_SAXI_21 {false} \
   CONFIG.USER_SAXI_22 {false} \
   CONFIG.USER_SAXI_23 {false} \
   CONFIG.USER_SAXI_24 {false} \
   CONFIG.USER_SAXI_25 {false} \
   CONFIG.USER_SAXI_26 {false} \
   CONFIG.USER_SAXI_27 {false} \
   CONFIG.USER_SAXI_28 {false} \
   CONFIG.USER_SAXI_29 {false} \
   CONFIG.USER_SAXI_30 {false} \
   CONFIG.USER_SAXI_31 {false} \
   CONFIG.USER_SWITCH_ENABLE_01 {TRUE} \
 ] $hbm_inst

  # Create instance: hbm_reset_sync_SLR0, and set properties
  set hbm_reset_sync_SLR0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 hbm_reset_sync_SLR0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $hbm_reset_sync_SLR0

  # Create instance: hbm_reset_sync_switch1_apb_low_power, and set properties
  set hbm_reset_sync_switch1_apb_low_power [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 hbm_reset_sync_switch1_apb_low_power ]

  # Create instance: init_logic
  create_hier_cell_init_logic [current_bd_instance .] init_logic

  # Create instance: path_12
  create_hier_cell_path_12 [current_bd_instance .] path_12

  # Create instance: util_vector_logic, and set properties
  set util_vector_logic [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic

  # Create instance: vip_S00, and set properties
  set vip_S00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_S00 ]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins path_12/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_CTRL_1 [get_bd_intf_ports S_AXI_CTRL] [get_bd_intf_pins axi_apb_bridge_inst/AXI4_LITE]
  connect_bd_intf_net -intf_net axi_apb_bridge_inst_APB_M [get_bd_intf_pins axi_apb_bridge_inst/APB_M] [get_bd_intf_pins hbm_inst/SAPB_0]
  connect_bd_intf_net -intf_net axi_apb_bridge_inst_APB_M2 [get_bd_intf_pins axi_apb_bridge_inst/APB_M2] [get_bd_intf_pins hbm_inst/SAPB_1]
  connect_bd_intf_net -intf_net slice0_12_M_AXI [get_bd_intf_pins path_12/M_AXI] [get_bd_intf_pins vip_S00/S_AXI]
  connect_bd_intf_net -intf_net vip_S00_M_AXI [get_bd_intf_pins hbm_inst/SAXI_12] [get_bd_intf_pins vip_S00/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins path_12/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins path_12/aresetn]
  connect_bd_net -net cattrip_net [get_bd_ports DRAM_STAT_CATTRIP] [get_bd_pins hbm_reset_sync_SLR0/aux_reset_in] [get_bd_pins util_vector_logic/Res]
  connect_bd_net -net ctrl_aclk_1 [get_bd_ports ctrl_aclk] [get_bd_pins axi_apb_bridge_inst/s_axi_aclk] [get_bd_pins hbm_inst/APB_0_PCLK] [get_bd_pins hbm_inst/APB_1_PCLK] [get_bd_pins hbm_reset_sync_switch1_apb_low_power/slowest_sync_clk]
  connect_bd_net -net ctrl_aresetn_1 [get_bd_ports ctrl_aresetn] [get_bd_pins axi_apb_bridge_inst/s_axi_aresetn] [get_bd_pins hbm_inst/APB_0_PRESET_N] [get_bd_pins hbm_reset_sync_switch1_apb_low_power/ext_reset_in]
  connect_bd_net -net hbm_aclk_1 [get_bd_ports hbm_aclk] [get_bd_pins hbm_inst/AXI_12_ACLK] [get_bd_pins hbm_reset_sync_SLR0/slowest_sync_clk] [get_bd_pins path_12/hbm_aclk] [get_bd_pins vip_S00/aclk]
  connect_bd_net -net hbm_aresetn_1 [get_bd_ports hbm_aresetn] [get_bd_pins hbm_reset_sync_SLR0/ext_reset_in]
  connect_bd_net -net hbm_inst_DRAM_0_STAT_CATTRIP [get_bd_pins hbm_inst/DRAM_0_STAT_CATTRIP] [get_bd_pins util_vector_logic/Op1]
  connect_bd_net -net hbm_inst_DRAM_0_STAT_TEMP [get_bd_ports DRAM_0_STAT_TEMP] [get_bd_pins hbm_inst/DRAM_0_STAT_TEMP]
  connect_bd_net -net hbm_inst_DRAM_1_STAT_CATTRIP [get_bd_pins hbm_inst/DRAM_1_STAT_CATTRIP] [get_bd_pins util_vector_logic/Op2]
  connect_bd_net -net hbm_inst_DRAM_1_STAT_TEMP [get_bd_ports DRAM_1_STAT_TEMP] [get_bd_pins hbm_inst/DRAM_1_STAT_TEMP]
  connect_bd_net -net hbm_inst_apb_complete_0 [get_bd_pins hbm_inst/apb_complete_0] [get_bd_pins hbm_reset_sync_switch1_apb_low_power/aux_reset_in] [get_bd_pins init_logic/In0]
  connect_bd_net -net hbm_inst_apb_complete_1 [get_bd_pins hbm_inst/apb_complete_1] [get_bd_pins init_logic/In1]
  connect_bd_net -net hbm_ref_clk_1 [get_bd_ports hbm_ref_clk] [get_bd_pins hbm_inst/HBM_REF_CLK_0] [get_bd_pins hbm_inst/HBM_REF_CLK_1]
  connect_bd_net -net hbm_reset_sync_SLR0_interconnect_aresetn [get_bd_pins hbm_inst/AXI_12_ARESET_N] [get_bd_pins hbm_reset_sync_SLR0/interconnect_aresetn] [get_bd_pins path_12/aresetn1] [get_bd_pins vip_S00/aresetn]
  connect_bd_net -net hbm_reset_sync_switch1_apb_low_power_interconnect_aresetn [get_bd_pins hbm_inst/APB_1_PRESET_N] [get_bd_pins hbm_reset_sync_switch1_apb_low_power/interconnect_aresetn]
  connect_bd_net -net init_reduce_Res [get_bd_ports hbm_mc_init_seq_complete] [get_bd_pins init_logic/hbm_mc_init_seq_complete]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00400000 -target_address_space [get_bd_addr_spaces S_AXI_CTRL] [get_bd_addr_segs hbm_inst/SAPB_0/Reg] -force
  assign_bd_address -offset 0x00400000 -range 0x00400000 -target_address_space [get_bd_addr_spaces S_AXI_CTRL] [get_bd_addr_segs hbm_inst/SAPB_1/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM00] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM01] -force
  assign_bd_address -offset 0x20000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM02] -force
  assign_bd_address -offset 0x30000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM03] -force
  assign_bd_address -offset 0x40000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM04] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM05] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM06] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM07] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM08] -force
  assign_bd_address -offset 0x90000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM09] -force
  assign_bd_address -offset 0xA0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM10] -force
  assign_bd_address -offset 0xB0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM11] -force
  assign_bd_address -offset 0xC0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM12] -force
  assign_bd_address -offset 0xD0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM13] -force
  assign_bd_address -offset 0xE0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM14] -force
  assign_bd_address -offset 0xF0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM15] -force
  assign_bd_address -offset 0x000100000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM16] -force
  assign_bd_address -offset 0x000110000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM17] -force
  assign_bd_address -offset 0x000120000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM18] -force
  assign_bd_address -offset 0x000130000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM19] -force
  assign_bd_address -offset 0x000140000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM20] -force
  assign_bd_address -offset 0x000150000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM21] -force
  assign_bd_address -offset 0x000160000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM22] -force
  assign_bd_address -offset 0x000170000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM23] -force
  assign_bd_address -offset 0x000180000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM24] -force
  assign_bd_address -offset 0x000190000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM25] -force
  assign_bd_address -offset 0x0001A0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM26] -force
  assign_bd_address -offset 0x0001B0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM27] -force
  assign_bd_address -offset 0x0001C0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM28] -force
  assign_bd_address -offset 0x0001D0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM29] -force
  assign_bd_address -offset 0x0001E0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM30] -force
  assign_bd_address -offset 0x0001F0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs hbm_inst/SAXI_12/HBM_MEM31] -force


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


