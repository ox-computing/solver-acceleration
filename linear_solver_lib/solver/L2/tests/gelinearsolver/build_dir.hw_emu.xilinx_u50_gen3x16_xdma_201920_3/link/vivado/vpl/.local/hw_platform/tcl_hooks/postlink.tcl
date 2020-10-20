# Proc to print identifiable debug messages
proc __dr_message {str} {
  if {1} {
    puts "System Linker post-processing: $str"
  }
}

__dr_message "Check SDx MSS Slave COnnections"
# Set up DSA-specific variables

# DDR/PLRAM memory_subsystem name 
set __postsyslink_memory_subsystem_instance "memory_subsystem"
# Number of host ports on DDR/PLRAM MSS
set __postsyslink_mss_inst_num_host_ports 2

# SC between DDR/HBM
# Will get deleted if profiling is disabled + MSS is unused
set __postsyslink_smartconnect_instance "axi_data_sc"
# Number of ports on this instance
set __postsyslink_sc_inst_expected_ports 3

# HMSS segment naming when mapped - should be HBM_MEMXX but may not be
set __postsyslink_seg_prefix "hmss_mem"

# List of IPs to delete
# Will get deleted if MSS is unused(profiling or no-profiling)
set __postsyslink_ip_delete_list [list memory_subsystem SLR0/axi_cdc_data SLR1/axi_cdc_data SLR0/regslice_data SLR1/regslice_data SLR0/axi_vip_data SLR1/axi_vip_data]

# --------------------------------------------------------------
# Get the MSS instance and figure out what's connected
# Cannot remove when there are connections other than host (kernels/profiling etc)

# Get instance
if {[llength [get_bd_cells $__postsyslink_memory_subsystem_instance]] == 0} {
   __dr_message "Post Sys Link TCL routine cannot find the MSS instance :: $__postsyslink_memory_subsystem_instance"
} elseif {[llength [get_bd_cells $__postsyslink_memory_subsystem_instance]] == 1} {
   set mss_inst [get_bd_cells $__postsyslink_memory_subsystem_instance]
} else {
   __dr_message "Post Sys Link TCL routine round too many MSS instances :: [get_bd_cells $__postsyslink_memory_subsystem_instance]"
}

set __postsyslink_mss_in_use 1
# How many slave ports
if {[llength [get_property CONFIG.NUM_SI $mss_inst]] > 0} {
   set mss_inst_num_ports [get_property CONFIG.NUM_SI [get_bd_cells $mss_inst]]
   if {$mss_inst_num_ports == $__postsyslink_mss_inst_num_host_ports} {
      __dr_message "Nothing other than host connected to $mss_inst - some cleanup will happen to free logic resources"
      set __postsyslink_mss_in_use 0
   } else {
   }
} else {
   __dr_message "NUM_SI CONFIG property not found on $mss_inst"
}

# --------------------------------------------------------------
# Only if the memory subsystem is not in use can we delete anything

if {$__postsyslink_mss_in_use == 0} {

   # --------------------------------------------------------------
   # Remove specified IPs - loosely
   foreach __postsyslink_ip $__postsyslink_ip_delete_list {
      if {[llength [get_bd_cells $__postsyslink_ip]] > 0} {
         delete_bd_objs [get_bd_cells $__postsyslink_ip]
         __dr_message "Deleting IP $__postsyslink_ip as unused"
      } else {
         __dr_message "IP $__postsyslink_ip not found for delete"
      }
   }
   

   # --------------------------------------------------------------
   # Get the SmartConnect instance and figure out what's connected
   # Profiling is enabled when there are more than expected ports
   
   # Get instance
   if {[llength [get_bd_cells $__postsyslink_smartconnect_instance]] == 0} {
      __dr_message "Post Sys Link TCL routine cannot find the SC instance :: $__postsyslink_smartconnect_instance"
   } elseif {[llength [get_bd_cells $__postsyslink_smartconnect_instance]] == 1} {
      set sc_inst [get_bd_cells $__postsyslink_smartconnect_instance]
   } else {
      __dr_message "Post Sys Link TCL routine found too many SC instances :: [get_bd_cells $__postsyslink_smartconnect_instance]"
   }

   set __postsyslink_profiling_enabled 1
   # How many master ports
   if {[llength [get_property CONFIG.NUM_MI $sc_inst]] > 0} {
      set num_ports_sc_inst [get_property CONFIG.NUM_MI $sc_inst]
      if {$num_ports_sc_inst > $__postsyslink_sc_inst_expected_ports} {
         __dr_message "Profiling port is enabled on $sc_inst - $sc_inst will be preserved"
         set __postsyslink_profiling_enabled 1
      } elseif {$num_ports_sc_inst == $__postsyslink_sc_inst_expected_ports} {
         __dr_message "Profiling port is not enabled on $sc_inst - $sc_inst will be removed"
         set __postsyslink_profiling_enabled 0
      } else {
         __dr_message "Unexpected number of ports on $sc_inst, expected $__postsyslink_sc_inst_expected_ports or above, got $num_ports_sc_inst"
      }
   } else {
      __dr_message "NUM_MI CONFIG property not found on $sc_inst"
   }

   # --------------------------------------------------------------
   # If profiling is enabled then leave the port hanging - safer
   # Otherwise delete the Smartconnect entirely
   # Assumption that HBM is connected to lowest port

   if {$__postsyslink_profiling_enabled == 0} {

      # Find the ports currently connected to slave and master port zero - assumption (also direction connection assumption
      # in case of hmss)
      set __postsyslink_sc_inst_slave_port [get_bd_intf_pins $sc_inst/S00_AXI]
      set __postsyslink_sc_inst_master_port [get_bd_intf_pins $sc_inst/M00_AXI]
      set __postsyslink_sc_inst_slave_port_to [find_bd_objs -thru_hier -relation connected_to $__postsyslink_sc_inst_slave_port]
      set __postsyslink_sc_inst_master_port_to [find_bd_objs -thru_hier -relation connected_to $__postsyslink_sc_inst_master_port]
      
      # Now find all the addressing segments and their offsets/ranges
      set __postsyslink_addr_segs        [get_bd_addr_segs -addressing -of $__postsyslink_sc_inst_master_port_to]
      set __postsyslink_addr_seg_sources [get_bd_addr_segs -addressable -of $__postsyslink_sc_inst_master_port_to]

      # Match source segs to destination segs and capture all of the RANGEs and OFFSET and NAMES
      # This is required as we want to remap to the same addresses after (normally controlled by HMSS)
      # HBM offsets are fixed 
      set __postsyslink_addr_seg_dict [dict create]
      foreach __postsyslink_addressable_seg $__postsyslink_addr_seg_sources {
         set __postsyslink_key [get_property NAME $__postsyslink_addressable_seg]
         set __postsyslink_key_match [regsub "HBM_MEM" $__postsyslink_key $__postsyslink_seg_prefix]
         foreach __postsyslink_addressing_seg $__postsyslink_addr_segs {
            set dest_name [get_property NAME $__postsyslink_addressing_seg]
            # Names will match *HBM_MEMXX
            if {[regexp -- $__postsyslink_key_match $dest_name]} {
               dict set __postsyslink_addr_seg_dict $__postsyslink_key name       $dest_name
               dict set __postsyslink_addr_seg_dict $__postsyslink_key offset     [get_property OFFSET $__postsyslink_addressing_seg]
               dict set __postsyslink_addr_seg_dict $__postsyslink_key range      [get_property RANGE $__postsyslink_addressing_seg]
               dict set __postsyslink_addr_seg_dict $__postsyslink_key addr_space [get_bd_addr_spaces -of $__postsyslink_addressing_seg]
               dict set __postsyslink_addr_seg_dict $__postsyslink_key addr_seg   [get_bd_addr_segs $__postsyslink_sc_inst_master_port_to/$__postsyslink_key]
            }
         }
      }

      # Delete the Smartconnect
      delete_bd_objs $sc_inst
      
      # Connect the identified nets
      connect_bd_intf_net [get_bd_intf_pins $__postsyslink_sc_inst_slave_port_to] [get_bd_intf_pins $__postsyslink_sc_inst_master_port_to]
      
      # Remap all of the same segments to the same locations (don't want HBM segments to shift)
      foreach __postsyslink_key [dict keys $__postsyslink_addr_seg_dict] {
         set __postsyslink_name       [dict get $__postsyslink_addr_seg_dict $__postsyslink_key name]
         set __postsyslink_offset     [dict get $__postsyslink_addr_seg_dict $__postsyslink_key offset]
         set __postsyslink_range      [dict get $__postsyslink_addr_seg_dict $__postsyslink_key range]
         set __postsyslink_addr_space [dict get $__postsyslink_addr_seg_dict $__postsyslink_key addr_space]
         set __postsyslink_addr_seg   [dict get $__postsyslink_addr_seg_dict $__postsyslink_key addr_seg]
         create_bd_addr_seg -range $__postsyslink_range -offset $__postsyslink_offset [get_bd_addr_spaces $__postsyslink_addr_space] [get_bd_addr_segs $__postsyslink_addr_seg] $__postsyslink_name
      }

      assign_bd_address
   }

}





# Connect available interrupt pins on compute units to the interrupt vector
# -------------------------------------------------------------------------

# The wiring proc takes in the CU's interrupt BD pin and the overall interrupt index
proc wire_cu_to_xlconcat_intr {__cu_inst_intr_pin __intr_pin_num} {
  # Set number of xlconcat blocks and number of interrupts per block
  set __num_xlconcat 4
  set __num_pin_per_xlconcat 32

  # Get the xlconcat instance and pin number to work on now
  set __xlconcat_inst_num [expr {$__intr_pin_num / $__num_pin_per_xlconcat}]
  set __xlconcat_pin_num [expr {$__intr_pin_num - ($__xlconcat_inst_num * $__num_pin_per_xlconcat)}]

  # Ensure that the xlconcat instance and its pin exist, then get those objects
  if {($__xlconcat_pin_num < $__num_pin_per_xlconcat) && ($__xlconcat_inst_num < $__num_xlconcat)} {
    set __xlconcat_inst [get_bd_cells -hierarchical -quiet -filter NAME=~xlconcat_interrupt_${__xlconcat_inst_num}]
    set __xlconcat_pin [get_bd_pins -of_objects $__xlconcat_inst -quiet -filter NAME=~In${__xlconcat_pin_num}]

    # If the xlconcat pin object exists, disconnect it from ground and connect the CU's interrupt BD pin to it
    if {[llength $__xlconcat_pin] == 1} {
      disconnect_bd_net /interrupt_concat/xlconstant_gnd_dout $__xlconcat_pin -quiet
      connect_bd_net $__cu_inst_intr_pin $__xlconcat_pin -quiet
    } else {
      puts "(Post-linking XSA Tcl hook) No available xlconcat pins found"
    }
  } else {
    puts "(Post-linking XSA Tcl hook) No remaining xlconcat pins to connect to"
  }
}

# Make sure the kernel key in the config_info dict exists
if {[dict exists $config_info kernels]} {
  # Make sure that list of kernels is populated
  set __k_list [dict get $config_info kernels]
  if {[llength $__k_list] > 0} {
    # Translate the list of kernels to a list of BD cells and their AXI-Lite address offsets
    set __cu_inst_addr_list {}
    # Iterate over each kernel
    foreach __k_inst $__k_list {
      puts "(Post-linking XSA Tcl hook) Found kernel: ($__k_inst)"
      set __cu_bd_cell_list [get_bd_cells -quiet -filter "VLNV=~*:*:${__k_inst}:*"]
      # Iterate over each compute unit for the current kernel
      if {[llength $__cu_bd_cell_list] > 0} {
        foreach __cu_bd_cell $__cu_bd_cell_list {
          puts "(Post-linking XSA Tcl hook) Found BD CELL: ($__cu_bd_cell)"
          set __cu_bd_cell_sub [string range $__cu_bd_cell 1 [string length $__cu_bd_cell]]
          set __cu_bd_cell_segs [get_bd_addr_segs -of_objects [get_bd_addr_spaces ii_level0_wire/ULP_M_AXI_CTRL_USER_*] -filter "NAME =~ *${__cu_bd_cell_sub}_*"]
          if {[llength ${__cu_bd_cell_segs}] > 0} {
            set __cu_offset [get_property OFFSET [get_bd_addr_segs -of_objects [get_bd_addr_spaces ii_level0_wire/ULP_M_AXI_CTRL_USER_*] -filter "NAME =~ *${__cu_bd_cell_sub}_*"]]
            lappend __cu_inst_addr_list "$__cu_bd_cell $__cu_offset"
          } else {
            puts "(Post-linking XSA Tcl hook) WARNING: Did not find any bd_addr_segs for CELL:($__cu_bd_cell)"
          }
        }        
      } else {
        puts "(Post-linking XSA Tcl hook) ERROR: Unable to find kernel ($__k_inst) with VLNV pattern (*:*:${__k_inst}:*)"
      }
    }
    # Make sure the list of BD cells and their AXI-Lite address offsets is populated
    if {[llength $__cu_inst_addr_list] > 0} {
      # Order the list by increasing AXI-Lite address offsets, then extract just ordered BD cells
      set __cu_inst_list {}
      unset __cu_inst_list
      set __cu_inst_addr_list_ordered [lsort -index 1 $__cu_inst_addr_list]
      foreach __cu_pair $__cu_inst_addr_list_ordered {
        lappend __cu_inst_list [lindex $__cu_pair 0]
      }
      # Of the BD cells, iterate through those with an interrupt BD pin
      set __intr_pin_num 0
      foreach __cu_inst_intr $__cu_inst_list {
        puts "(Post-linking XSA Tcl hook) Attempting to connect CU ($__cu_inst_intr) to interrupt handler"
        set __cu_inst_intr_pin [get_bd_pins -of_objects [get_bd_cells $__cu_inst_intr] -quiet -filter "TYPE=~intr"]
        if {[llength $__cu_inst_intr_pin] == 1} {
          # When a BD cell has an interrupt BD pin, wire it to the next available xlconcat pin
          wire_cu_to_xlconcat_intr $__cu_inst_intr_pin $__intr_pin_num
          puts "(Post-linking XSA Tcl hook) Connected ($__cu_inst_intr) to interrupt ($__intr_pin_num)"          
          incr __intr_pin_num
        } else {
          puts "(Post-linking XSA Tcl hook) No interrupt interfaces found on ($__cu_inst_intr)"
        }
      }
    } else {
      puts "(Post-linking XSA Tcl hook) ERROR: No BD cells found for interrupt wiring. Did not fine *any* mapped kernels."
    }
  } else {
    puts "(Post-linking XSA Tcl hook) WARNING: No CUs found for interrupt wiring. VPL returned a NULL list of kernels in the config_info dictonary"
  }
} else {
  puts "(Post-linking XSA Tcl hook) No kernels key in config_info dict for interrupt wiring"
}
