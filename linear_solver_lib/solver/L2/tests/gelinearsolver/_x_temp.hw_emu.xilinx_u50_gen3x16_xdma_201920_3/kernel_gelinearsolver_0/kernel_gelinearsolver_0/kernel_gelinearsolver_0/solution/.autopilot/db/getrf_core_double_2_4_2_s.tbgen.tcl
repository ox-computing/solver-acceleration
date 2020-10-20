set moduleName getrf_core_double_2_4_2_s
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
set C_modelName {getrf_core<double, 2, 4, 2>}
set C_modelType { int 128 }
set C_modelArgList {
	{ m int 32 regular  }
	{ n int 32 regular  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 32 regular  }
	{ matA_1 double 64 regular {array 8 { 2 2 } 2 1 } {global 2}  }
	{ matA_0 double 64 regular {array 8 { 2 2 } 2 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "matA_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "matA_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m sc_in sc_lv 32 signal 0 } 
	{ n sc_in sc_lv 32 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ p_read1 sc_in sc_lv 32 signal 3 } 
	{ p_read2 sc_in sc_lv 32 signal 4 } 
	{ p_read3 sc_in sc_lv 32 signal 5 } 
	{ matA_1_address0 sc_out sc_lv 3 signal 6 } 
	{ matA_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ matA_1_we0 sc_out sc_logic 1 signal 6 } 
	{ matA_1_d0 sc_out sc_lv 64 signal 6 } 
	{ matA_1_q0 sc_in sc_lv 64 signal 6 } 
	{ matA_1_address1 sc_out sc_lv 3 signal 6 } 
	{ matA_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ matA_1_we1 sc_out sc_logic 1 signal 6 } 
	{ matA_1_d1 sc_out sc_lv 64 signal 6 } 
	{ matA_1_q1 sc_in sc_lv 64 signal 6 } 
	{ matA_0_address0 sc_out sc_lv 3 signal 7 } 
	{ matA_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ matA_0_we0 sc_out sc_logic 1 signal 7 } 
	{ matA_0_d0 sc_out sc_lv 64 signal 7 } 
	{ matA_0_q0 sc_in sc_lv 64 signal 7 } 
	{ matA_0_address1 sc_out sc_lv 3 signal 7 } 
	{ matA_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ matA_0_we1 sc_out sc_logic 1 signal 7 } 
	{ matA_0_d1 sc_out sc_lv 64 signal 7 } 
	{ matA_0_q1 sc_in sc_lv 64 signal 7 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "matA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_1", "role": "address0" }} , 
 	{ "name": "matA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_1", "role": "ce0" }} , 
 	{ "name": "matA_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_1", "role": "we0" }} , 
 	{ "name": "matA_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_1", "role": "d0" }} , 
 	{ "name": "matA_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_1", "role": "q0" }} , 
 	{ "name": "matA_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_1", "role": "address1" }} , 
 	{ "name": "matA_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_1", "role": "ce1" }} , 
 	{ "name": "matA_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_1", "role": "we1" }} , 
 	{ "name": "matA_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_1", "role": "d1" }} , 
 	{ "name": "matA_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_1", "role": "q1" }} , 
 	{ "name": "matA_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_0", "role": "address0" }} , 
 	{ "name": "matA_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_0", "role": "ce0" }} , 
 	{ "name": "matA_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_0", "role": "we0" }} , 
 	{ "name": "matA_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_0", "role": "d0" }} , 
 	{ "name": "matA_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_0", "role": "q0" }} , 
 	{ "name": "matA_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "matA_0", "role": "address1" }} , 
 	{ "name": "matA_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_0", "role": "ce1" }} , 
 	{ "name": "matA_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matA_0", "role": "we1" }} , 
 	{ "name": "matA_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_0", "role": "d1" }} , 
 	{ "name": "matA_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matA_0", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "getrf_core_double_2_4_2_s",
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
			{"FromInitialState" : "ap_enable_state98_pp3_iter43_stage0", "FromInitialIteration" : "ap_enable_reg_pp3_iter43", "FromInitialOperation" : "ap_enable_operation_516", "FromInitialSV" : "56", "FromFinalState" : "ap_enable_state100_pp3_iter45_stage0", "FromFinalIteration" : "ap_enable_reg_pp3_iter45", "FromFinalOperation" : "ap_enable_operation_520", "FromFinalSV" : "58", "FromAddress" : "matA_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state109_pp3_iter54_stage0", "ToInitialIteration" : "ap_enable_reg_pp3_iter54", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_533", "ToInitialSV" : "67", "ToFinalState" : "ap_enable_state109_pp3_iter54_stage0", "ToFinalIteration" : "ap_enable_reg_pp3_iter54", "ToFinalOperation" : "ap_enable_operation_533", "ToFinalSV" : "67", "ToAddress" : "matA_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp3", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/MatrixDecomposition/getrf.hpp:43:54)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state109_pp3_iter54_stage0", "FromInitialIteration" : "ap_enable_reg_pp3_iter54", "FromInitialOperation" : "ap_enable_operation_533", "FromInitialSV" : "67", "FromFinalState" : "ap_enable_state109_pp3_iter54_stage0", "FromFinalIteration" : "ap_enable_reg_pp3_iter54", "FromFinalOperation" : "ap_enable_operation_533", "FromFinalSV" : "67", "FromAddress" : "matA_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state98_pp3_iter43_stage0", "ToInitialIteration" : "ap_enable_reg_pp3_iter43", "ToInitialNextIteration" : "ap_enable_reg_pp3_iter44", "ToInitialOperation" : "ap_enable_operation_516", "ToInitialSV" : "56", "ToFinalState" : "ap_enable_state100_pp3_iter45_stage0", "ToFinalIteration" : "ap_enable_reg_pp3_iter45", "ToFinalOperation" : "ap_enable_operation_520", "ToFinalSV" : "58", "ToAddress" : "matA_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp3", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/MatrixDecomposition/getrf.hpp:43:54)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state98_pp3_iter43_stage0", "ap_enable_state100_pp3_iter45_stage0", "ap_enable_state109_pp3_iter54_stage0"]},
			{"FromInitialState" : "ap_enable_state156_pp4_iter43_stage0", "FromInitialIteration" : "ap_enable_reg_pp4_iter43", "FromInitialOperation" : "ap_enable_operation_639", "FromInitialSV" : "60", "FromFinalState" : "ap_enable_state158_pp4_iter45_stage0", "FromFinalIteration" : "ap_enable_reg_pp4_iter45", "FromFinalOperation" : "ap_enable_operation_643", "FromFinalSV" : "62", "FromAddress" : "matA_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state167_pp4_iter54_stage0", "ToInitialIteration" : "ap_enable_reg_pp4_iter54", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_656", "ToInitialSV" : "71", "ToFinalState" : "ap_enable_state167_pp4_iter54_stage0", "ToFinalIteration" : "ap_enable_reg_pp4_iter54", "ToFinalOperation" : "ap_enable_operation_656", "ToFinalSV" : "71", "ToAddress" : "matA_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp4", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/MatrixDecomposition/getrf.hpp:43:54)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state167_pp4_iter54_stage0", "FromInitialIteration" : "ap_enable_reg_pp4_iter54", "FromInitialOperation" : "ap_enable_operation_656", "FromInitialSV" : "71", "FromFinalState" : "ap_enable_state167_pp4_iter54_stage0", "FromFinalIteration" : "ap_enable_reg_pp4_iter54", "FromFinalOperation" : "ap_enable_operation_656", "FromFinalSV" : "71", "FromAddress" : "matA_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state156_pp4_iter43_stage0", "ToInitialIteration" : "ap_enable_reg_pp4_iter43", "ToInitialNextIteration" : "ap_enable_reg_pp4_iter44", "ToInitialOperation" : "ap_enable_operation_639", "ToInitialSV" : "60", "ToFinalState" : "ap_enable_state158_pp4_iter45_stage0", "ToFinalIteration" : "ap_enable_reg_pp4_iter45", "ToFinalOperation" : "ap_enable_operation_643", "ToFinalSV" : "62", "ToAddress" : "matA_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp4", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/MatrixDecomposition/getrf.hpp:43:54)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state156_pp4_iter43_stage0", "ap_enable_state158_pp4_iter45_stage0", "ap_enable_state167_pp4_iter54_stage0"]}],
		"Port" : [
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "matA_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matA_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_8_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_31_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_2_36_1_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_3_36_1_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U18", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_2_36_1_U19", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_3_36_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getrf_core_double_2_4_2_s {
		m {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		matA_1 {Type IO LastRead 60 FirstWrite 11}
		matA_0 {Type IO LastRead 56 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	m { ap_none {  { m in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	matA_1 { ap_memory {  { matA_1_address0 mem_address 1 3 }  { matA_1_ce0 mem_ce 1 1 }  { matA_1_we0 mem_we 1 1 }  { matA_1_d0 mem_din 1 64 }  { matA_1_q0 mem_dout 0 64 }  { matA_1_address1 MemPortADDR2 1 3 }  { matA_1_ce1 MemPortCE2 1 1 }  { matA_1_we1 MemPortWE2 1 1 }  { matA_1_d1 MemPortDIN2 1 64 }  { matA_1_q1 MemPortDOUT2 0 64 } } }
	matA_0 { ap_memory {  { matA_0_address0 mem_address 1 3 }  { matA_0_ce0 mem_ce 1 1 }  { matA_0_we0 mem_we 1 1 }  { matA_0_d0 mem_din 1 64 }  { matA_0_q0 mem_dout 0 64 }  { matA_0_address1 MemPortADDR2 1 3 }  { matA_0_ce1 MemPortCE2 1 1 }  { matA_0_we1 MemPortWE2 1 1 }  { matA_0_d1 MemPortDIN2 1 64 }  { matA_0_q1 MemPortDOUT2 0 64 } } }
}
