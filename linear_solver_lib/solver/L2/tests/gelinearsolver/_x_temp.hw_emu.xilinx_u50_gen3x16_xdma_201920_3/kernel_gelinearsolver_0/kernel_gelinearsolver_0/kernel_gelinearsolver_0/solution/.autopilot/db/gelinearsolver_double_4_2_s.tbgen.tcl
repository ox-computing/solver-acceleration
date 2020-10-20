set moduleName gelinearsolver_double_4_2_s
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
set C_modelName {gelinearsolver<double, 4, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 64 regular {axi_master 2}  }
	{ n int 32 regular  }
	{ A int 64 regular  }
	{ B int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ n sc_in sc_lv 32 signal 1 } 
	{ A sc_in sc_lv 64 signal 2 } 
	{ B sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "30", "35", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "gelinearsolver_double_4_2_s",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getrf_core_double_2_4_2_s_fu_570"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getrf_core_double_2_4_2_s_fu_570"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_trisolver_U_double_4_2_s_fu_588"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_trisolver_L_double_4_2_s_fu_602"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "matA_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_trisolver_L_double_4_2_s_fu_602", "Port" : "matA_1"},
					{"ID" : "5", "SubInstance" : "grp_getrf_core_double_2_4_2_s_fu_570", "Port" : "matA_1"},
					{"ID" : "30", "SubInstance" : "grp_trisolver_U_double_4_2_s_fu_588", "Port" : "matA_1"}]},
			{"Name" : "matA_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_trisolver_L_double_4_2_s_fu_602", "Port" : "matA_0"},
					{"ID" : "5", "SubInstance" : "grp_getrf_core_double_2_4_2_s_fu_570", "Port" : "matA_0"},
					{"ID" : "30", "SubInstance" : "grp_trisolver_U_double_4_2_s_fu_588", "Port" : "matA_0"}]},
			{"Name" : "matB_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "matB_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "matB_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "matB_0_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matA_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matA_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataC_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.rows_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.rows_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.cols_0_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.cols_1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.dsub_64ns_64ns_64_8_full_dsp_1_U1", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.dmul_64ns_64ns_64_8_max_dsp_1_U2", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.ddiv_64ns_64ns_64_31_no_dsp_1_U3", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.dcmp_64ns_64ns_1_2_no_dsp_1_U4", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mul_32s_32s_32_2_1_U5", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U6", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U7", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U8", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U9", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U10", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U11", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U12", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U13", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U14", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mux_42_32_1_1_U15", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.udiv_32ns_32ns_2_36_1_U16", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.urem_32ns_32ns_3_36_1_U17", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.mul_32s_32s_32_2_1_U18", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.udiv_32ns_32ns_2_36_1_U19", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getrf_core_double_2_4_2_s_fu_570.urem_32ns_32ns_3_36_1_U20", "Parent" : "5"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_U_double_4_2_s_fu_588", "Parent" : "0", "Child" : ["31", "32", "33", "34"],
		"CDFG" : "trisolver_U_double_4_2_s",
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
			{"FromInitialState" : "ap_enable_state46_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_242", "FromInitialSV" : "45", "FromFinalState" : "ap_enable_state47_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_245", "FromFinalSV" : "46", "FromAddress" : "dataB_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state57_pp0_iter9_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter9", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter10", "ToInitialOperation" : "ap_enable_operation_267", "ToInitialSV" : "56", "ToFinalState" : "ap_enable_state57_pp0_iter9_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_267", "ToFinalSV" : "56", "ToAddress" : "dataB_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:62:54)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state48_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_249", "FromInitialSV" : "47", "FromFinalState" : "ap_enable_state49_pp0_iter5_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_252", "FromFinalSV" : "48", "FromAddress" : "dataB_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state59_pp0_iter10_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter10", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_270", "ToInitialSV" : "58", "ToFinalState" : "ap_enable_state59_pp0_iter10_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter10", "ToFinalOperation" : "ap_enable_operation_270", "ToFinalSV" : "58", "ToAddress" : "dataB_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:62:54)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state57_pp0_iter9_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter9", "FromInitialOperation" : "ap_enable_operation_267", "FromInitialSV" : "56", "FromFinalState" : "ap_enable_state57_pp0_iter9_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_267", "FromFinalSV" : "56", "FromAddress" : "dataB_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state46_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_242", "ToInitialSV" : "45", "ToFinalState" : "ap_enable_state47_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_245", "ToFinalSV" : "46", "ToAddress" : "dataB_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:62:54)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state46_pp0_iter4_stage0", "ap_enable_state48_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state59_pp0_iter10_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter10", "FromInitialOperation" : "ap_enable_operation_270", "FromInitialSV" : "58", "FromFinalState" : "ap_enable_state59_pp0_iter10_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter10", "FromFinalOperation" : "ap_enable_operation_270", "FromFinalSV" : "58", "FromAddress" : "dataB_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state48_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_249", "ToInitialSV" : "47", "ToFinalState" : "ap_enable_state49_pp0_iter5_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_252", "ToFinalSV" : "48", "ToAddress" : "dataB_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "2", "II" : "2", "Pragma" : "(/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include/hw/LinearSolver/gelinearsolver.hpp:62:54)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state48_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataB", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "matA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matA_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_U_double_4_2_s_fu_588.dsub_64ns_64ns_64_8_full_dsp_1_U47", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_U_double_4_2_s_fu_588.dmul_64ns_64ns_64_8_max_dsp_1_U48", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_U_double_4_2_s_fu_588.ddiv_64ns_64ns_64_31_no_dsp_1_U49", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_U_double_4_2_s_fu_588.mux_42_64_1_1_U50", "Parent" : "30"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_L_double_4_2_s_fu_602", "Parent" : "0", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_L_double_4_2_s_fu_602.dsub_64ns_64ns_64_8_full_dsp_1_U38", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trisolver_L_double_4_2_s_fu_602.dmul_64ns_64ns_64_8_max_dsp_1_U39", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_2_1_U60", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32ns_61_2_1_U61", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U62", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U63", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U64", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U65", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gelinearsolver_double_4_2_s {
		gmem0 {Type IO LastRead 78 FirstWrite 18}
		n {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		matA_1 {Type IO LastRead -1 FirstWrite -1}
		matA_0 {Type IO LastRead -1 FirstWrite -1}
		matB_1_0 {Type IO LastRead -1 FirstWrite -1}
		matB_1_1 {Type IO LastRead -1 FirstWrite -1}
		matB_0_0 {Type IO LastRead -1 FirstWrite -1}
		matB_0_1 {Type IO LastRead -1 FirstWrite -1}}
	getrf_core_double_2_4_2_s {
		m {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		matA_1 {Type IO LastRead 60 FirstWrite 11}
		matA_0 {Type IO LastRead 56 FirstWrite 11}}
	trisolver_U_double_4_2_s {
		n {Type I LastRead 0 FirstWrite -1}
		dataB {Type IO LastRead 47 FirstWrite 56}
		p_read {Type I LastRead 35 FirstWrite -1}
		p_read1 {Type I LastRead 35 FirstWrite -1}
		p_read2 {Type I LastRead 35 FirstWrite -1}
		p_read3 {Type I LastRead 35 FirstWrite -1}
		matA_1 {Type I LastRead 39 FirstWrite -1}
		matA_0 {Type I LastRead 39 FirstWrite -1}}
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
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 32 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 64 }  { m_axi_gmem0_WSTRB STRB 1 8 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 32 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 64 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	n { ap_none {  { n in_data 0 32 } } }
	A { ap_none {  { A in_data 0 64 } } }
	B { ap_none {  { B in_data 0 64 } } }
}
