namespace eval ::optrace {
  variable script "/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/build_dir.hw_emu.xilinx_u50_gen3x16_xdma_201920_3/link/vivado/vpl/vpl.tcl"
  variable category "vivado_impl"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

set VPL_ERROR_LOGGED 707
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set startMsg "\[[clock format [clock seconds] -format %H:%M:%S]\] Run vpl: Step $step: Started"
  send_msg_id {101-1} {status} $startMsg
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set completeMsg "\[[clock format [clock seconds] -format %H:%M:%S]\] Run vpl: Step $step: Completed\n"
  send_msg_id {101-1} {status} $completeMsg
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set failMsg "\[[clock format [clock seconds] -format %H:%M:%S]\] Run vpl: Step $step: Failed\n"
  send_msg_id {101-1} {status} $failMsg
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

proc tear_down {} {
  OPTRACE "Implementation" END { }
  if {$::dispatch::connected} { vitis_log::disconnect_client }
}

OPTRACE "Implementation" START { ROLLUP_1 }
if {[catch {source -notrace ./ipirun.tcl} catch_result return_options_dict]} {
  set sw_persona_msg "Failed to source project settings from ipirun.tcl script. "
  if [dict exists $return_options_dict "-errorinfo"] {
    set msg_with_stack [dict get $return_options_dict "-errorinfo"]
    puts "ERROR: caught error: $msg_with_stack"
  } elseif { $catch_result ne "" } {
    puts "ERROR: caught error: $catch_result"
  }
  send_msg_id {100-1} {status} $sw_persona_msg
  tear_down 
  return -code error [dict get $return_options_dict "-code"]
}
if {[catch {
  # One frame up is 'eval' type, two frames up is 'source' type 
  ocl_util::steps_append $steps_log [ocl_util::frame2log "source -notrace ./ipirun.tcl" [info frame -2] [info frame 0]]
  set dsa_platform_state  [dict get $hw_platform_info hw_platform_state]
  set project_name        [dict get $config_info proj_name]
  set webtalk_flag        [dict get $config_info webtalk_flag]
  set design_name         [dict get $config_info design_name]
  set steps_log           [dict get $config_info steps_log]
  set output_dir          [dict get $config_info output_dir]
  set vivado_output_dir   [dict get $config_info vivado_output_dir]
  set vpl_output_dir      [dict get $config_info vpl_output_dir]
  set impl_from_step      [dict get $config_info impl_from_step]
  set impl_to_step        [dict get $config_info impl_to_step]
  set reconfig_module     [dict get $config_info reconfig_module]
  set scripts_dir         [dict get $config_info scripts_dir]
  set kernel_clock_freqs  [dict get $clk_info kernel_clock_freqs]

  ocl_util::steps_append $steps_log [ocl_util::frame2log "source $scripts_dir/_vivado_params.tcl" [info frame -2] [info frame 0]]
  if {[catch {source $scripts_dir/_vivado_params.tcl} catch_result return_options_dict]} {
    set sw_persona_msg "Failed to set vivado parameters in the $scripts_dir/_vivado_params.tcl script. "
    ocl_util::log_exception $output_dir $sw_persona_msg $catch_result $return_options_dict
  }
} catch_result return_options_dict]} {
  set sw_persona_msg "Failed to configure project settings in the ipirun.tcl script. "
  ocl_util::log_exception $output_dir $sw_persona_msg $catch_result $return_options_dict
}

start_step create_project
set ACTIVE_STEP create_project
ocl_util::add_to_steps_log $steps_log "current step: vpl.create_project" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
set rc [catch {
  send_msg_id {101-1} {status} {Creating Vivado project.}
  ocl_util::create_vivado_project $hw_platform_info $config_info

} RESULT return_options_dict]
if {$rc} {
  set myerrorcode $errorCode
  if {$myerrorcode ne $VPL_ERROR_LOGGED} {
    set sw_persona_msg "Step failed: create_project"
    catch {ocl_util::log_exception $output_dir $sw_persona_msg $RESULT $return_options_dict} RESULT
  }
  step_failed create_project
  ocl_util::add_to_steps_log $steps_log "current step: vpl.create_project failed. To rerun the existing project please use --from_step vpl.create_project" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  tear_down
  return -code error $RESULT
} else {
  end_step create_project
  unset ACTIVE_STEP 
}

start_step create_bd
set ACTIVE_STEP create_bd
ocl_util::add_to_steps_log $steps_log "current step: vpl.create_bd" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
set rc [catch {
  set synth_xdc           [dict get $hw_platform_info synth_xdc]
  set dr_bd_tcl           [dict get $config_info dr_bd_tcl]
  set aie_archive         [dict get $config_info aie_archive_file]
  ocl_util::set_board_part_repo_and_connections $hw_platform_info $config_info
  ocl_util::set_ip_repo_and_caching $hw_platform_info $config_info

OPTRACE "Import/add dynamic BD" START { }
  ocl_util::import_dr_bd $hw_platform_info $config_info
  set bd_file [ocl_util::get_bd_file $hw_platform_info $config_info]
  set_property synth_checkpoint_mode Hierarchical [get_files $bd_file] 
OPTRACE "Import/add dynamic BD" END { }

OPTRACE "Open BD and insert kernels" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: open_bd_design -auto_upgrade \[get_files $bd_file\]" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  open_bd_design -auto_upgrade [get_files $bd_file]

  ocl_util::report_ips_drc $config_info
  set pre_sys_link_overlay_tcl    [dict get $hw_platform_info pre_sys_link_overlay_tcl]
  if { ![string equal $pre_sys_link_overlay_tcl ""] && [file exists $pre_sys_link_overlay_tcl] } {
    ocl_util::add_to_steps_log $steps_log "internal step: source $pre_sys_link_overlay_tcl" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
    if { [catch {source $pre_sys_link_overlay_tcl} catch_res return_options_dict] } {
      set sw_persona_msg "Failed to update block diagram in project required for hardware synthesis. "
      append sw_persona_msg "The project is '$project_name'. The update script is "
      append sw_persona_msg "'$pre_sys_link_overlay_tcl'. The script was delivered as "
      append sw_persona_msg "part of the hardware platform."
      ocl_util::log_exception $output_dir $sw_persona_msg $catch_res $return_options_dict
    }
  }

  ocl_util::source_user_pre_sys_link_tcl $hw_platform_info $config_info
  set user_pre_sys_link_overlay_tcl    [dict get $hw_platform_info user_pre_sys_link_overlay_tcl]
  if { ![string equal $user_pre_sys_link_overlay_tcl ""] && [file exists $user_pre_sys_link_overlay_tcl] } {
    ocl_util::add_to_steps_log $steps_log "internal step: source $user_pre_sys_link_overlay_tcl" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
    if { [catch {source $user_pre_sys_link_overlay_tcl} catch_result return_options_dict] } {
      set sw_persona_msg "Failed to update block diagram in project required for hardware synthesis. "
      append sw_persona_msg "The project is '$project_name'. The user supplied update script is "
      append sw_persona_msg "'$user_pre_sys_link_overlay_tcl'. The update script was set using param 'compiler.userPreSysLinkOverlayTcl'"
      ocl_util::log_exception $output_dir $sw_persona_msg $catch_result $return_options_dict
    }
  }

  ocl_util::add_to_steps_log $steps_log "internal step: source $dr_bd_tcl" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  if { [catch {source $dr_bd_tcl} result return_options_dict] } {
    set sw_persona_msg "Failed to update block diagram in project required for hardware synthesis."
    append sw_persona_msg "The project is '$project_name'. The block diagram update script is "
    append sw_persona_msg "'$dr_bd_tcl'. The block diagram update script was generated by system linker."
OPTRACE "Open BD and insert kernels" END { }
    ocl_util::log_exception $output_dir $sw_persona_msg $result $return_options_dict
  }
  ocl_util::add_to_steps_log $steps_log "internal step: save_bd_design" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  save_bd_design

  set post_sys_link_overlay_tcl    [dict get $hw_platform_info post_sys_link_overlay_tcl]
  if { ![string equal $post_sys_link_overlay_tcl ""] && [file exists $post_sys_link_overlay_tcl] } {
    ocl_util::add_to_steps_log $steps_log "internal step: source $post_sys_link_overlay_tcl" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
    if { [catch {source $post_sys_link_overlay_tcl} catch_res return_options_dict] } {
      set sw_persona_msg "Failed to update block diagram in project required for hardware synthesis. "
      append sw_persona_msg "The project is '$project_name'. The update script is "
      append sw_persona_msg "'$post_sys_link_overlay_tcl'. The script was delivered as "
      append sw_persona_msg "part of the hardware platform."
      ocl_util::log_exception $output_dir $sw_persona_msg $catch_res $return_options_dict
    }
  }

  set user_post_sys_link_overlay_tcl    [dict get $hw_platform_info user_post_sys_link_overlay_tcl]
  if { ![string equal $user_post_sys_link_overlay_tcl ""] && [file exists $user_post_sys_link_overlay_tcl] } {
    ocl_util::add_to_steps_log $steps_log "internal step: source $user_post_sys_link_overlay_tcl" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
    if { [catch {source $user_post_sys_link_overlay_tcl} catch_result return_options_dict] } {
      set sw_persona_msg "Failed to update block diagram in project required for hardware synthesis. "
      append sw_persona_msg "The project is '$project_name'. The user supplied update script is "
      append sw_persona_msg "'$user_post_sys_link_overlay_tcl'. The update script was set using param 'compiler.userPostSysLinkOverlayTcl'"
      ocl_util::log_exception $output_dir $sw_persona_msg $catch_result $return_options_dict
    }
  }

  ocl_util::add_xdc_files $synth_xdc $steps_log
  ocl_util::add_to_steps_log $steps_log "internal step: updating kernel clocks" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  if { [catch {ocl_util::update_kernel_clocks $kernel_clock_freqs } catch_result return_options_dict] } {
OPTRACE "Open BD and insert kernels" END { }
    ocl_util::log_exception $output_dir "Could not change the kernel frequencies provided using --kernel_frequency" $catch_result $return_options_dict
  }
OPTRACE "Open BD and insert kernels" END { }

} RESULT return_options_dict]
if {$rc} {
  set myerrorcode $errorCode
  if {$myerrorcode ne $VPL_ERROR_LOGGED} {
    set sw_persona_msg "Step failed: create_bd"
    catch {ocl_util::log_exception $output_dir $sw_persona_msg $RESULT $return_options_dict} RESULT
  }
  step_failed create_bd
  ocl_util::add_to_steps_log $steps_log "current step: vpl.create_bd failed. To rerun the existing project please use --from_step vpl.create_bd" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  tear_down
  return -code error $RESULT
} else {
  end_step create_bd
  unset ACTIVE_STEP 
}

start_step update_bd
set ACTIVE_STEP update_bd
ocl_util::add_to_steps_log $steps_log "current step: vpl.update_bd" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
set rc [catch {
OPTRACE "Add debug/profiling support" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: inserting profiling and debug cores" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  set xdpFileName [debug_profile::add_debug_profile_support $hw_platform_info $config_info $debug_profile_info]
  if {[file exists $xdpFileName]} {
    if { [catch {source $xdpFileName} catch_result return_options_dict] } {
      set sw_persona_msg "Failed to insert debug profile support. "
      append sw_persona_msg "The project is '$project_name'. The internal debug profile support script is "
      append sw_persona_msg "'$xdpFileName'. The script was generated by VPL."
      ocl_util::log_exception $output_dir $sw_persona_msg $catch_result $return_options_dict
    }
  }
OPTRACE "Add debug/profiling support" END { }
OPTRACE "IPI address assignments" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: assign_bd_address" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  assign_bd_address
OPTRACE "IPI address assignments" END { }
  ocl_util::source_post_sys_link_tcls $hw_platform_info $config_info
  if { $webtalk_flag ne "" } {
    regenerate_bd_layout
    puts "INFO: \[OCL_UTIL\] bd::util_cmd set_bd_source $webtalk_flag \[current_bd_design\]"
    bd::util_cmd set_bd_source $webtalk_flag [current_bd_design]
  }
OPTRACE "Save BD" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: save_bd_design" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  save_bd_design
OPTRACE "Save BD" END { }
OPTRACE "Create address map and debug IP profile files" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: writing address_map.xml" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  ocl_util::write_address_map $vpl_output_dir
OPTRACE "Create address map and debug IP profile files" END { }

} RESULT return_options_dict]
if {$rc} {
  set myerrorcode $errorCode
  if {$myerrorcode ne $VPL_ERROR_LOGGED} {
    set sw_persona_msg "Step failed: update_bd"
    catch {ocl_util::log_exception $output_dir $sw_persona_msg $RESULT $return_options_dict} RESULT
  }
  step_failed update_bd
  ocl_util::add_to_steps_log $steps_log "current step: vpl.update_bd failed. To rerun the existing project please use --from_step vpl.update_bd" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  tear_down
  return -code error $RESULT
} else {
  end_step update_bd
  unset ACTIVE_STEP 
}

start_step generate_target
set ACTIVE_STEP generate_target
ocl_util::add_to_steps_log $steps_log "current step: vpl.generate_target" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
set rc [catch {
OPTRACE "Generate output products" START { }
  ocl_util::add_to_steps_log $steps_log "internal step: generate_target all \[get_files $bd_file\]" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  generate_target all [get_files $bd_file]
  ocl_util::ip_cache_export_and_report $config_info $bd_file
  ocl_util::copy_ooc_xdc_files $bd_file $kernel_clock_freqs $config_info
  set new_clk_freq_file "$vpl_output_dir/_new_clk_freq"
  ocl_util::write_orig_clk_freq $new_clk_freq_file $clk_info
OPTRACE "Generate output products" END { }
} RESULT return_options_dict]
if {$rc} {
  set myerrorcode $errorCode
  if {$myerrorcode ne $VPL_ERROR_LOGGED} {
    set sw_persona_msg "Step failed: generate_target"
    catch {ocl_util::log_exception $output_dir $sw_persona_msg $RESULT $return_options_dict} RESULT
  }
  step_failed generate_target
  ocl_util::add_to_steps_log $steps_log "current step: vpl.generate_target failed. To rerun the existing project please use --from_step vpl.generate_target" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  tear_down
  return -code error $RESULT
} else {
  end_step generate_target
  unset ACTIVE_STEP 
}

start_step config_hw_emulation
set ACTIVE_STEP config_hw_emulation
ocl_util::add_to_steps_log $steps_log "current step: vpl.config_hw_emulation" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
set rc [catch {
  ### Create and run emulation scripts
  dict set config_info debug_level OFF
  dict set config_info sc_debug_level NONE
  dict set config_info simulator Xsim
  dict set config_info simulator_install_path ""
  dict set config_info aie_shim_sol_path ""
  dict set config_info json_device_file_path ""
  dict set config_info clibs ""
  dict set config_info kernel_debug false

  dict set config_info plKernelDbg wdb

  dict set config_info simulation_runtime all
  dict set config_info is_disable_profile_src 0
OPTRACE "Generate simulation scripts & compile" START { }
  set explicit_emu_data   [dict get $config_info enable_explicit_emu_data]
  if {!$explicit_emu_data} {
    ocl_util::add_to_steps_log $steps_log "internal step: add_files -norecurse \[make_wrapper -top -files \[get_files emu.bd \]\]" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
    add_files -norecurse [make_wrapper -top -files [get_files emu.bd] ]
    update_compile_order -fileset sources_1
  }
  dict set config_info top_bd_name emu
  dict set config_info dr_bd emu.bd
  dict set config_info top_bd emu.bd
  dict set config_info dr_bd_inst_path ""

  ocl_util::add_to_steps_log $steps_log "internal step: hw_emu_common_util::generate_simulation_scripts_and_compile" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  hw_emu_common_util::generate_simulation_scripts_and_compile $config_info
OPTRACE "Generate simulation scripts & compile" END { }
  ocl_util::generate_kernel_inst_path_data $config_info

  set is_hw_export [dict get $config_info is_hw_export]
  set fixed_xsa [dict get $config_info fixed_xsa]
  if {$is_hw_export} {
    write_hw_platform -fixed $vpl_output_dir/$fixed_xsa
  }
  close_project
} RESULT return_options_dict]
if {$rc} {
  set myerrorcode $errorCode
  if {$myerrorcode ne $VPL_ERROR_LOGGED} {
    set sw_persona_msg "Step failed: config_hw_emulation"
    catch {ocl_util::log_exception $output_dir $sw_persona_msg $RESULT $return_options_dict} RESULT
  }
  step_failed config_hw_emulation
  ocl_util::add_to_steps_log $steps_log "current step: vpl.config_hw_emulation failed. To rerun the existing project please use --from_step vpl.config_hw_emulation" [ocl_util::extFileName]:[expr {[dict get [info frame -1] line] + [dict get [info frame 0] line]}]
  tear_down
  return -code error $RESULT
} else {
  end_step config_hw_emulation
  unset ACTIVE_STEP 
}

OPTRACE "Implementation" END { }
if {$::dispatch::connected} { vitis_log::disconnect_client }
