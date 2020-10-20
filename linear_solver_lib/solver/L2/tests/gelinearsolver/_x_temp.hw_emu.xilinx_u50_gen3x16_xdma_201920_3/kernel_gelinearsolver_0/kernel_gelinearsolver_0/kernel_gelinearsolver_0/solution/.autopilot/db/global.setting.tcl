
set TopModule "kernel_gelinearsolver_0"
set ClockPeriod 3.333
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix kernel_gelinearsolver_0_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcu50:-fsvh2104:-2-e
set SourceFiles {sc {} c /home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/kernel_gelinearsolver.cpp}
set SourceFlags {sc {} c {{-I/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver -I/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/include -I/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/ext -I/home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver}}}
set DirectiveFile /home/jacksoncd/solver-acceleration/linear_solver_lib/solver/L2/tests/gelinearsolver/_x_temp.hw_emu.xilinx_u50_gen3x16_xdma_201920_3/kernel_gelinearsolver_0/kernel_gelinearsolver_0/kernel_gelinearsolver_0/solution/solution.directive
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus xilinx/virtexuplus/virtexuplus_fpv7}}}
set HPFPO 0
