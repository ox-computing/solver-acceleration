set moduleName trisolver_L_double_4_2_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {trisolver_L<double, 4, 2>}
set C_modelType { int 256 }
set C_modelArgList {
	{ n int 32 regular  }
	{ dataB double 64 regular {array 4 { 2 2 } 1 1 }  }
	{ p_read1 double 64 regular  }
	{ p_read2 double 64 regular  }
	{ p_read3 double 64 regular  }
	{ matA_0 double 64 regular {array 8 { 1 3 } 2 1 } {global 0}  }
	{ matA_1 double 64 regular {array 8 { 1 3 } 2 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dataB", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "matA_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "matA_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 32 signal 0 } 
	{ dataB_address0 sc_out sc_lv 2 signal 1 } 
	{ dataB_ce0 sc_out sc_logic 1 signal 1 } 
	{ dataB_we0 sc_out sc_logic 1 signal 1 } 
	{ dataB_d0 sc_out sc_lv 64 signal 1 } 
	{ dataB_q0 sc_in sc_lv 64 signal 1 } 
	{ dataB_address1 sc_out sc_lv 2 signal 1 } 
	{ dataB_ce1 sc_out sc_logic 1 signal 1 } 
	{ dataB_we1 sc_out sc_logic 1 signal 1 } 
	{ dataB_d1 sc_out sc_lv 64 signal 1 } 
	{ dataB_q1 sc_in sc_lv 64 signal 1 } 
	{ p_read1 sc_in sc_lv 64 signal 2 } 
	{ p_read2 sc_in sc_lv 64 signal 3 } 
	{ p_read3 sc_in sc_lv 64 signal 4 } 
	{ matA_0_address0 sc_out sc_lv 3 signal 5 } 
	{ matA_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ matA_0_q0 sc_in sc_lv 64 signal 5 } 
	{ matA_1_address0 sc_out sc_lv 3 signal 6 } 
	{ matA_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ matA_1_q0 sc_in sc_lv 64 signal 6 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "dataB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dataB", "role": "address0" }} , 
 	{ "name": "dataB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataB", "role": "ce0" }} , 
 	{ "name": "dataB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataB", "role": "we0" }} , 
 	{ "name": "dataB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataB", "role": "d0" }} , 
 	{ "name": "dataB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataB", "role": "q0" }} , 
 	{ "name": "dataB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dataB", "role": "address1" }} , 
 	{ "name": "dataB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataB", "role": "ce1" }} , 
 	{ "name": "dataB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataB", "role": "we1" }} , 
 	{ "name": "dataB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataB", "role": "d1" }} , 
 	{ "name": "dataB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataB", "role": "q1" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "matA_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_0", "role": "address0" }} , 
 	{ "name": "matA_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_0", "role": "ce0" }} , 
 	{ "name": "matA_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_0", "role": "q0" }} , 
 	{ "name": "matA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_1", "role": "address0" }} , 
 	{ "name": "matA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_1", "role": "ce0" }} , 
 	{ "name": "matA_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_1", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "trisolver_L_double_4_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state12_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state13_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_129", "FromFinalSV" : "12", "FromAddress" : "dataB_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp0_iter9_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter9", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter10", "ToInitialOperation" : "ap_enable_operation_151", "ToInitialSV" : "22", "ToFinalState" : "ap_enable_state23_pp0_iter9_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_151", "ToFinalSV" : "22", "ToAddress" : "dataB_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:39:49)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state14_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_133", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state15_pp0_iter5_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_136", "FromFinalSV" : "14", "FromAddress" : "dataB_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state25_pp0_iter10_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter10", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_154", "ToInitialSV" : "24", "ToFinalState" : "ap_enable_state25_pp0_iter10_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter10", "ToFinalOperation" : "ap_enable_operation_154", "ToFinalSV" : "24", "ToAddress" : "dataB_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:39:49)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp0_iter9_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter9", "FromInitialOperation" : "ap_enable_operation_151", "FromInitialSV" : "22", "FromFinalState" : "ap_enable_state23_pp0_iter9_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_151", "FromFinalSV" : "22", "FromAddress" : "dataB_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state12_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state13_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_129", "ToFinalSV" : "12", "ToAddress" : "dataB_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:39:49)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state12_pp0_iter4_stage0", "ap_enable_state14_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state25_pp0_iter10_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter10", "FromInitialOperation" : "ap_enable_operation_154", "FromInitialSV" : "24", "FromFinalState" : "ap_enable_state25_pp0_iter10_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter10", "FromFinalOperation" : "ap_enable_operation_154", "FromFinalSV" : "24", "FromAddress" : "dataB_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state14_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_133", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state15_pp0_iter5_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_136", "ToFinalSV" : "14", "ToAddress" : "dataB_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:39:49)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state14_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataB", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "matA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matA_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_8_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	trisolver_L_double_4_2_s {
		n {Type I LastRead 1 FirstWrite -1}
		dataB {Type IO LastRead 13 FirstWrite 22}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		matA_0 {Type I LastRead 3 FirstWrite -1}
		matA_1 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	dataB { ap_memory {  { dataB_address0 mem_address 1 2 }  { dataB_ce0 mem_ce 1 1 }  { dataB_we0 mem_we 1 1 }  { dataB_d0 mem_din 1 64 }  { dataB_q0 mem_dout 0 64 }  { dataB_address1 MemPortADDR2 1 2 }  { dataB_ce1 MemPortCE2 1 1 }  { dataB_we1 MemPortWE2 1 1 }  { dataB_d1 MemPortDIN2 1 64 }  { dataB_q1 MemPortDOUT2 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 64 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 64 } } }
	matA_0 { ap_memory {  { matA_0_address0 mem_address 1 3 }  { matA_0_ce0 mem_ce 1 1 }  { matA_0_q0 mem_dout 0 64 } } }
	matA_1 { ap_memory {  { matA_1_address0 mem_address 1 3 }  { matA_1_ce0 mem_ce 1 1 }  { matA_1_q0 mem_dout 0 64 } } }
}
