`define PSEUDO
`define PS4G
`define NODP
`define INIT_MEM_LOW
`ifdef MODEL_TECH
  `include "HBM_questa.vp"
`elsif INCA
  `include "HBM_nc.vp"
`elsif VCS
  `include "HBM_vcs.vp"
`endif
