
################################################################
# This is a generated script based on design: bd_b35e
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
# source bd_b35e_script.tcl

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
set design_name bd_b35e

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


# Hierarchical cell: reset
proc create_hier_cell_reset { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_reset() - Empty argument(s)!"}
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
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn1

  # Create instance: psr_aclk_SLR0, and set properties
  set psr_aclk_SLR0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_aclk_SLR0 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $psr_aclk_SLR0

  # Create instance: psr_aclk_SLR1, and set properties
  set psr_aclk_SLR1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_aclk_SLR1 ]
  set_property -dict [ list \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $psr_aclk_SLR1

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins psr_aclk_SLR0/slowest_sync_clk] [get_bd_pins psr_aclk_SLR1/slowest_sync_clk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins psr_aclk_SLR0/ext_reset_in] [get_bd_pins psr_aclk_SLR1/ext_reset_in]
  connect_bd_net -net psr_aclk_SLR0_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins psr_aclk_SLR0/interconnect_aresetn]
  connect_bd_net -net psr_aclk_SLR1_interconnect_aresetn [get_bd_pins interconnect_aresetn1] [get_bd_pins psr_aclk_SLR1/interconnect_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: memory
proc create_hier_cell_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_memory() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir O -from 0 -to 0 ddr4_mem_calib_complete
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I -type rst s_axi_aresetn1

  # Create instance: calib_const, and set properties
  set calib_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 calib_const ]

  # Create instance: plram_mem00, and set properties
  set plram_mem00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 plram_mem00 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $plram_mem00

  # Create instance: plram_mem00_bram, and set properties
  set plram_mem00_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plram_mem00_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $plram_mem00_bram

  # Create instance: plram_mem01, and set properties
  set plram_mem01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 plram_mem01 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $plram_mem01

  # Create instance: plram_mem01_bram, and set properties
  set plram_mem01_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plram_mem01_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $plram_mem01_bram

  # Create instance: plram_mem02, and set properties
  set plram_mem02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 plram_mem02 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $plram_mem02

  # Create instance: plram_mem02_bram, and set properties
  set plram_mem02_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plram_mem02_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $plram_mem02_bram

  # Create instance: plram_mem03, and set properties
  set plram_mem03 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 plram_mem03 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $plram_mem03

  # Create instance: plram_mem03_bram, and set properties
  set plram_mem03_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plram_mem03_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.SLR_ASSIGNMENTS {SLR1} \
 ] $plram_mem03_bram

  # Create instance: vip_PLRAM_MEM00, and set properties
  set vip_PLRAM_MEM00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_PLRAM_MEM00 ]

  # Create instance: vip_PLRAM_MEM01, and set properties
  set vip_PLRAM_MEM01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_PLRAM_MEM01 ]

  # Create instance: vip_PLRAM_MEM02, and set properties
  set vip_PLRAM_MEM02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_PLRAM_MEM02 ]

  # Create instance: vip_PLRAM_MEM03, and set properties
  set vip_PLRAM_MEM03 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_PLRAM_MEM03 ]

  # Create interface connections
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM00_M00_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins vip_PLRAM_MEM00/S_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM01_M00_AXI [get_bd_intf_pins S_AXI1] [get_bd_intf_pins vip_PLRAM_MEM01/S_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM02_M00_AXI [get_bd_intf_pins S_AXI2] [get_bd_intf_pins vip_PLRAM_MEM02/S_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM03_M00_AXI [get_bd_intf_pins S_AXI3] [get_bd_intf_pins vip_PLRAM_MEM03/S_AXI]
  connect_bd_intf_net -intf_net plram_mem00_BRAM_PORTA [get_bd_intf_pins plram_mem00/BRAM_PORTA] [get_bd_intf_pins plram_mem00_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net plram_mem00_BRAM_PORTB [get_bd_intf_pins plram_mem00/BRAM_PORTB] [get_bd_intf_pins plram_mem00_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net plram_mem01_BRAM_PORTA [get_bd_intf_pins plram_mem01/BRAM_PORTA] [get_bd_intf_pins plram_mem01_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net plram_mem01_BRAM_PORTB [get_bd_intf_pins plram_mem01/BRAM_PORTB] [get_bd_intf_pins plram_mem01_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net plram_mem02_BRAM_PORTA [get_bd_intf_pins plram_mem02/BRAM_PORTA] [get_bd_intf_pins plram_mem02_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net plram_mem02_BRAM_PORTB [get_bd_intf_pins plram_mem02/BRAM_PORTB] [get_bd_intf_pins plram_mem02_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net plram_mem03_BRAM_PORTA [get_bd_intf_pins plram_mem03/BRAM_PORTA] [get_bd_intf_pins plram_mem03_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net plram_mem03_BRAM_PORTB [get_bd_intf_pins plram_mem03/BRAM_PORTB] [get_bd_intf_pins plram_mem03_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net vip_PLRAM_MEM00_M_AXI [get_bd_intf_pins plram_mem00/S_AXI] [get_bd_intf_pins vip_PLRAM_MEM00/M_AXI]
  connect_bd_intf_net -intf_net vip_PLRAM_MEM01_M_AXI [get_bd_intf_pins plram_mem01/S_AXI] [get_bd_intf_pins vip_PLRAM_MEM01/M_AXI]
  connect_bd_intf_net -intf_net vip_PLRAM_MEM02_M_AXI [get_bd_intf_pins plram_mem02/S_AXI] [get_bd_intf_pins vip_PLRAM_MEM02/M_AXI]
  connect_bd_intf_net -intf_net vip_PLRAM_MEM03_M_AXI [get_bd_intf_pins plram_mem03/S_AXI] [get_bd_intf_pins vip_PLRAM_MEM03/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins plram_mem00/s_axi_aclk] [get_bd_pins plram_mem01/s_axi_aclk] [get_bd_pins plram_mem02/s_axi_aclk] [get_bd_pins plram_mem03/s_axi_aclk] [get_bd_pins vip_PLRAM_MEM00/aclk] [get_bd_pins vip_PLRAM_MEM01/aclk] [get_bd_pins vip_PLRAM_MEM02/aclk] [get_bd_pins vip_PLRAM_MEM03/aclk]
  connect_bd_net -net calib_const_dout [get_bd_pins ddr4_mem_calib_complete] [get_bd_pins calib_const/dout]
  connect_bd_net -net psr_aclk_SLR0_interconnect_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins plram_mem00/s_axi_aresetn] [get_bd_pins plram_mem01/s_axi_aresetn] [get_bd_pins vip_PLRAM_MEM00/aresetn] [get_bd_pins vip_PLRAM_MEM01/aresetn]
  connect_bd_net -net psr_aclk_SLR1_interconnect_aresetn [get_bd_pins s_axi_aresetn1] [get_bd_pins plram_mem02/s_axi_aresetn] [get_bd_pins plram_mem03/s_axi_aresetn] [get_bd_pins vip_PLRAM_MEM02/aresetn] [get_bd_pins vip_PLRAM_MEM03/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: interconnect
proc create_hier_cell_interconnect { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_interconnect() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type rst aresetn1

  # Create instance: interconnect_plram_mem00, and set properties
  set interconnect_plram_mem00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_plram_mem00 ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {} \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_plram_mem00

  # Create instance: interconnect_plram_mem01, and set properties
  set interconnect_plram_mem01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_plram_mem01 ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {} \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_plram_mem01

  # Create instance: interconnect_plram_mem02, and set properties
  set interconnect_plram_mem02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_plram_mem02 ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {} \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_plram_mem02

  # Create instance: interconnect_plram_mem03, and set properties
  set interconnect_plram_mem03 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_plram_mem03 ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {} \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_plram_mem03

  # Create instance: interconnect_s00_axi, and set properties
  set interconnect_s00_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_s00_axi ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {__view__ {functional {S00_Buffer {R_SIZE 512 W_SIZE 512} S00_Entry {PKT_R_THR 512 PKT_W_THR 64}}}} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_s00_axi

  # Create instance: interconnect_s01_axi, and set properties
  set interconnect_s01_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 interconnect_s01_axi ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {__view__ {functional {S00_Buffer {R_SIZE 512 W_SIZE 512} S00_Entry {PKT_R_THR 512 PKT_W_THR 64}}}} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $interconnect_s01_axi

  # Create instance: vip_s00_axi, and set properties
  set vip_s00_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_s00_axi ]

  # Create instance: vip_s01_axi, and set properties
  set vip_s01_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 vip_s01_axi ]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins vip_s00_axi/S_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins S01_AXI] [get_bd_intf_pins vip_s01_axi/S_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM00_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins interconnect_plram_mem00/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM01_M00_AXI [get_bd_intf_pins M00_AXI1] [get_bd_intf_pins interconnect_plram_mem01/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM02_M00_AXI [get_bd_intf_pins M00_AXI2] [get_bd_intf_pins interconnect_plram_mem02/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM03_M00_AXI [get_bd_intf_pins M00_AXI3] [get_bd_intf_pins interconnect_plram_mem03/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_S00_AXI_M00_AXI [get_bd_intf_pins interconnect_plram_mem00/S00_AXI] [get_bd_intf_pins interconnect_s00_axi/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_S00_AXI_M01_AXI [get_bd_intf_pins interconnect_plram_mem01/S00_AXI] [get_bd_intf_pins interconnect_s00_axi/M01_AXI]
  connect_bd_intf_net -intf_net interconnect_S01_AXI_M00_AXI [get_bd_intf_pins interconnect_plram_mem02/S00_AXI] [get_bd_intf_pins interconnect_s01_axi/M00_AXI]
  connect_bd_intf_net -intf_net interconnect_S01_AXI_M01_AXI [get_bd_intf_pins interconnect_plram_mem03/S00_AXI] [get_bd_intf_pins interconnect_s01_axi/M01_AXI]
  connect_bd_intf_net -intf_net vip_S00_AXI_M_AXI [get_bd_intf_pins interconnect_s00_axi/S00_AXI] [get_bd_intf_pins vip_s00_axi/M_AXI]
  connect_bd_intf_net -intf_net vip_S01_AXI_M_AXI [get_bd_intf_pins interconnect_s01_axi/S00_AXI] [get_bd_intf_pins vip_s01_axi/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins interconnect_plram_mem00/aclk] [get_bd_pins interconnect_plram_mem01/aclk] [get_bd_pins interconnect_plram_mem02/aclk] [get_bd_pins interconnect_plram_mem03/aclk] [get_bd_pins interconnect_s00_axi/aclk] [get_bd_pins interconnect_s01_axi/aclk] [get_bd_pins vip_s00_axi/aclk] [get_bd_pins vip_s01_axi/aclk]
  connect_bd_net -net psr_aclk_SLR0_interconnect_aresetn [get_bd_pins aresetn] [get_bd_pins interconnect_plram_mem00/aresetn] [get_bd_pins interconnect_plram_mem01/aresetn] [get_bd_pins interconnect_s00_axi/aresetn] [get_bd_pins vip_s00_axi/aresetn]
  connect_bd_net -net psr_aclk_SLR1_interconnect_aresetn [get_bd_pins aresetn1] [get_bd_pins interconnect_plram_mem02/aresetn] [get_bd_pins interconnect_plram_mem03/aresetn] [get_bd_pins interconnect_s01_axi/aresetn] [get_bd_pins vip_s01_axi/aresetn]

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
   CONFIG.ADDR_WIDTH {34} \
   ] $S00_AXI

  set S01_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {34} \
   ] $S01_AXI


  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI:S01_AXI} \
 ] $aclk
  set aclk1 [ create_bd_port -dir I -type clk aclk1 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $aclk1
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set ddr4_mem_calib_complete [ create_bd_port -dir O -from 0 -to 0 -type data ddr4_mem_calib_complete ]

  # Create instance: interconnect
  create_hier_cell_interconnect [current_bd_instance .] interconnect

  # Create instance: memory
  create_hier_cell_memory [current_bd_instance .] memory

  # Create instance: reset
  create_hier_cell_reset [current_bd_instance .] reset

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins interconnect/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_ports S01_AXI] [get_bd_intf_pins interconnect/S01_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM00_M00_AXI [get_bd_intf_pins interconnect/M00_AXI] [get_bd_intf_pins memory/S_AXI]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM01_M00_AXI [get_bd_intf_pins interconnect/M00_AXI1] [get_bd_intf_pins memory/S_AXI1]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM02_M00_AXI [get_bd_intf_pins interconnect/M00_AXI2] [get_bd_intf_pins memory/S_AXI2]
  connect_bd_intf_net -intf_net interconnect_PLRAM_MEM03_M00_AXI [get_bd_intf_pins interconnect/M00_AXI3] [get_bd_intf_pins memory/S_AXI3]

  # Create port connections
  connect_bd_net -net aclk1_1 [get_bd_ports aclk1]
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins interconnect/aclk] [get_bd_pins memory/aclk] [get_bd_pins reset/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins reset/aresetn]
  connect_bd_net -net calib_const_dout [get_bd_ports ddr4_mem_calib_complete] [get_bd_pins memory/ddr4_mem_calib_complete]
  connect_bd_net -net psr_aclk_SLR0_interconnect_aresetn [get_bd_pins interconnect/aresetn] [get_bd_pins memory/s_axi_aresetn] [get_bd_pins reset/interconnect_aresetn]
  connect_bd_net -net psr_aclk_SLR1_interconnect_aresetn [get_bd_pins interconnect/aresetn1] [get_bd_pins memory/s_axi_aresetn1] [get_bd_pins reset/interconnect_aresetn1]

  # Create address segments
  assign_bd_address -offset 0x000200000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs memory/plram_mem00/S_AXI/Mem0] -force
  assign_bd_address -offset 0x000200400000 -range 0x00020000 -target_address_space [get_bd_addr_spaces S00_AXI] [get_bd_addr_segs memory/plram_mem01/S_AXI/Mem0] -force
  assign_bd_address -offset 0x000201000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces S01_AXI] [get_bd_addr_segs memory/plram_mem02/S_AXI/Mem0] -force
  assign_bd_address -offset 0x000201400000 -range 0x00020000 -target_address_space [get_bd_addr_spaces S01_AXI] [get_bd_addr_segs memory/plram_mem03/S_AXI/Mem0] -force


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


