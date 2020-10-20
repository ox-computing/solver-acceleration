//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_85ad.bd
//Design : bd_85ad
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_85ad,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_85ad,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ulp_hmss_0_0.hwdef" *) 
module bd_85ad
   (DRAM_0_STAT_TEMP,
    DRAM_1_STAT_TEMP,
    DRAM_STAT_CATTRIP,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wvalid,
    aclk,
    aresetn,
    ctrl_aclk,
    ctrl_aresetn,
    hbm_aclk,
    hbm_aresetn,
    hbm_mc_init_seq_complete,
    hbm_ref_clk);
  output [6:0]DRAM_0_STAT_TEMP;
  output [6:0]DRAM_1_STAT_TEMP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.DRAM_STAT_CATTRIP INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.DRAM_STAT_CATTRIP, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output [0:0]DRAM_STAT_CATTRIP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [32:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [32:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, ADDR_WIDTH 23, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [22:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output [0:0]S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input [0:0]S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [22:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output [0:0]S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input [0:0]S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input [0:0]S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output [0:0]S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input [0:0]S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output [0:0]S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output [0:0]S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input [0:0]S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CTRL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CTRL_ACLK, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET ctrl_aresetn, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0" *) input ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CTRL_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CTRL_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_CLKEN s_sc_aclken, CLK_DOMAIN ulp_hbm_aclk_in, FREQ_HZ 450000000, INSERT_VIP 0, PHASE 0.000" *) input hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input hbm_aresetn;
  output hbm_mc_init_seq_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_REF_CLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) input hbm_ref_clk;

  wire [32:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [32:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire [0:0]S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [22:0]S_AXI_CTRL_1_ARADDR;
  wire S_AXI_CTRL_1_ARREADY;
  wire [0:0]S_AXI_CTRL_1_ARVALID;
  wire [22:0]S_AXI_CTRL_1_AWADDR;
  wire S_AXI_CTRL_1_AWREADY;
  wire [0:0]S_AXI_CTRL_1_AWVALID;
  wire [0:0]S_AXI_CTRL_1_BREADY;
  wire [1:0]S_AXI_CTRL_1_BRESP;
  wire S_AXI_CTRL_1_BVALID;
  wire [31:0]S_AXI_CTRL_1_RDATA;
  wire [0:0]S_AXI_CTRL_1_RREADY;
  wire [1:0]S_AXI_CTRL_1_RRESP;
  wire S_AXI_CTRL_1_RVALID;
  wire [31:0]S_AXI_CTRL_1_WDATA;
  wire S_AXI_CTRL_1_WREADY;
  wire [0:0]S_AXI_CTRL_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire [31:0]axi_apb_bridge_inst_APB_M2_PRDATA;
  wire axi_apb_bridge_inst_APB_M2_PREADY;
  wire [1:1]axi_apb_bridge_inst_APB_M2_PSEL;
  wire axi_apb_bridge_inst_APB_M2_PSLVERR;
  wire [22:0]axi_apb_bridge_inst_APB_M_PADDR;
  wire axi_apb_bridge_inst_APB_M_PENABLE;
  wire [31:0]axi_apb_bridge_inst_APB_M_PRDATA;
  wire axi_apb_bridge_inst_APB_M_PREADY;
  wire [0:0]axi_apb_bridge_inst_APB_M_PSEL;
  wire axi_apb_bridge_inst_APB_M_PSLVERR;
  wire [31:0]axi_apb_bridge_inst_APB_M_PWDATA;
  wire axi_apb_bridge_inst_APB_M_PWRITE;
  wire [0:0]cattrip_net;
  wire ctrl_aclk_1;
  wire ctrl_aresetn_1;
  wire hbm_aclk_1;
  wire hbm_aresetn_1;
  wire hbm_inst_DRAM_0_STAT_CATTRIP;
  wire [6:0]hbm_inst_DRAM_0_STAT_TEMP;
  wire hbm_inst_DRAM_1_STAT_CATTRIP;
  wire [6:0]hbm_inst_DRAM_1_STAT_TEMP;
  wire hbm_inst_apb_complete_0;
  wire hbm_inst_apb_complete_1;
  wire hbm_ref_clk_1;
  wire [0:0]hbm_reset_sync_SLR0_interconnect_aresetn;
  wire [0:0]hbm_reset_sync_switch1_apb_low_power_interconnect_aresetn;
  wire init_reduce_Res;
  wire [32:0]slice0_12_M_AXI_ARADDR;
  wire [1:0]slice0_12_M_AXI_ARBURST;
  wire [3:0]slice0_12_M_AXI_ARCACHE;
  wire [3:0]slice0_12_M_AXI_ARLEN;
  wire [1:0]slice0_12_M_AXI_ARLOCK;
  wire [2:0]slice0_12_M_AXI_ARPROT;
  wire [3:0]slice0_12_M_AXI_ARQOS;
  wire slice0_12_M_AXI_ARREADY;
  wire slice0_12_M_AXI_ARVALID;
  wire [32:0]slice0_12_M_AXI_AWADDR;
  wire [1:0]slice0_12_M_AXI_AWBURST;
  wire [3:0]slice0_12_M_AXI_AWCACHE;
  wire [3:0]slice0_12_M_AXI_AWLEN;
  wire [1:0]slice0_12_M_AXI_AWLOCK;
  wire [2:0]slice0_12_M_AXI_AWPROT;
  wire [3:0]slice0_12_M_AXI_AWQOS;
  wire slice0_12_M_AXI_AWREADY;
  wire slice0_12_M_AXI_AWVALID;
  wire slice0_12_M_AXI_BREADY;
  wire [1:0]slice0_12_M_AXI_BRESP;
  wire slice0_12_M_AXI_BVALID;
  wire [255:0]slice0_12_M_AXI_RDATA;
  wire slice0_12_M_AXI_RLAST;
  wire slice0_12_M_AXI_RREADY;
  wire [1:0]slice0_12_M_AXI_RRESP;
  wire slice0_12_M_AXI_RVALID;
  wire [255:0]slice0_12_M_AXI_WDATA;
  wire slice0_12_M_AXI_WLAST;
  wire slice0_12_M_AXI_WREADY;
  wire [31:0]slice0_12_M_AXI_WSTRB;
  wire slice0_12_M_AXI_WVALID;
  wire [32:0]vip_S00_M_AXI_ARADDR;
  wire [1:0]vip_S00_M_AXI_ARBURST;
  wire [3:0]vip_S00_M_AXI_ARLEN;
  wire vip_S00_M_AXI_ARREADY;
  wire vip_S00_M_AXI_ARVALID;
  wire [32:0]vip_S00_M_AXI_AWADDR;
  wire [1:0]vip_S00_M_AXI_AWBURST;
  wire [3:0]vip_S00_M_AXI_AWLEN;
  wire vip_S00_M_AXI_AWREADY;
  wire vip_S00_M_AXI_AWVALID;
  wire vip_S00_M_AXI_BREADY;
  wire [1:0]vip_S00_M_AXI_BRESP;
  wire vip_S00_M_AXI_BVALID;
  wire [255:0]vip_S00_M_AXI_RDATA;
  wire vip_S00_M_AXI_RLAST;
  wire vip_S00_M_AXI_RREADY;
  wire [1:0]vip_S00_M_AXI_RRESP;
  wire vip_S00_M_AXI_RVALID;
  wire [255:0]vip_S00_M_AXI_WDATA;
  wire vip_S00_M_AXI_WLAST;
  wire vip_S00_M_AXI_WREADY;
  wire [31:0]vip_S00_M_AXI_WSTRB;
  wire vip_S00_M_AXI_WVALID;

  assign DRAM_0_STAT_TEMP[6:0] = hbm_inst_DRAM_0_STAT_TEMP;
  assign DRAM_1_STAT_TEMP[6:0] = hbm_inst_DRAM_1_STAT_TEMP;
  assign DRAM_STAT_CATTRIP[0] = cattrip_net;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[32:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[32:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[511:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[63:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[511:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign S_AXI_CTRL_1_ARADDR = S_AXI_CTRL_araddr[22:0];
  assign S_AXI_CTRL_1_ARVALID = S_AXI_CTRL_arvalid[0];
  assign S_AXI_CTRL_1_AWADDR = S_AXI_CTRL_awaddr[22:0];
  assign S_AXI_CTRL_1_AWVALID = S_AXI_CTRL_awvalid[0];
  assign S_AXI_CTRL_1_BREADY = S_AXI_CTRL_bready[0];
  assign S_AXI_CTRL_1_RREADY = S_AXI_CTRL_rready[0];
  assign S_AXI_CTRL_1_WDATA = S_AXI_CTRL_wdata[31:0];
  assign S_AXI_CTRL_1_WVALID = S_AXI_CTRL_wvalid[0];
  assign S_AXI_CTRL_arready[0] = S_AXI_CTRL_1_ARREADY;
  assign S_AXI_CTRL_awready[0] = S_AXI_CTRL_1_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = S_AXI_CTRL_1_BRESP;
  assign S_AXI_CTRL_bvalid[0] = S_AXI_CTRL_1_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = S_AXI_CTRL_1_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = S_AXI_CTRL_1_RRESP;
  assign S_AXI_CTRL_rvalid[0] = S_AXI_CTRL_1_RVALID;
  assign S_AXI_CTRL_wready[0] = S_AXI_CTRL_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign ctrl_aclk_1 = ctrl_aclk;
  assign ctrl_aresetn_1 = ctrl_aresetn;
  assign hbm_aclk_1 = hbm_aclk;
  assign hbm_aresetn_1 = hbm_aresetn;
  assign hbm_mc_init_seq_complete = init_reduce_Res;
  assign hbm_ref_clk_1 = hbm_ref_clk;
  bd_85ad_axi_apb_bridge_inst_0 axi_apb_bridge_inst
       (.m_apb_paddr(axi_apb_bridge_inst_APB_M_PADDR),
        .m_apb_penable(axi_apb_bridge_inst_APB_M_PENABLE),
        .m_apb_prdata(axi_apb_bridge_inst_APB_M_PRDATA),
        .m_apb_prdata2(axi_apb_bridge_inst_APB_M2_PRDATA),
        .m_apb_pready({axi_apb_bridge_inst_APB_M2_PREADY,axi_apb_bridge_inst_APB_M_PREADY}),
        .m_apb_psel({axi_apb_bridge_inst_APB_M2_PSEL,axi_apb_bridge_inst_APB_M_PSEL}),
        .m_apb_pslverr({axi_apb_bridge_inst_APB_M2_PSLVERR,axi_apb_bridge_inst_APB_M_PSLVERR}),
        .m_apb_pwdata(axi_apb_bridge_inst_APB_M_PWDATA),
        .m_apb_pwrite(axi_apb_bridge_inst_APB_M_PWRITE),
        .s_axi_aclk(ctrl_aclk_1),
        .s_axi_araddr(S_AXI_CTRL_1_ARADDR),
        .s_axi_aresetn(ctrl_aresetn_1),
        .s_axi_arready(S_AXI_CTRL_1_ARREADY),
        .s_axi_arvalid(S_AXI_CTRL_1_ARVALID),
        .s_axi_awaddr(S_AXI_CTRL_1_AWADDR),
        .s_axi_awready(S_AXI_CTRL_1_AWREADY),
        .s_axi_awvalid(S_AXI_CTRL_1_AWVALID),
        .s_axi_bready(S_AXI_CTRL_1_BREADY),
        .s_axi_bresp(S_AXI_CTRL_1_BRESP),
        .s_axi_bvalid(S_AXI_CTRL_1_BVALID),
        .s_axi_rdata(S_AXI_CTRL_1_RDATA),
        .s_axi_rready(S_AXI_CTRL_1_RREADY),
        .s_axi_rresp(S_AXI_CTRL_1_RRESP),
        .s_axi_rvalid(S_AXI_CTRL_1_RVALID),
        .s_axi_wdata(S_AXI_CTRL_1_WDATA),
        .s_axi_wready(S_AXI_CTRL_1_WREADY),
        .s_axi_wvalid(S_AXI_CTRL_1_WVALID));
  bd_85ad_hbm_inst_0 hbm_inst
       (.APB_0_PADDR(axi_apb_bridge_inst_APB_M_PADDR[21:0]),
        .APB_0_PCLK(ctrl_aclk_1),
        .APB_0_PENABLE(axi_apb_bridge_inst_APB_M_PENABLE),
        .APB_0_PRDATA(axi_apb_bridge_inst_APB_M_PRDATA),
        .APB_0_PREADY(axi_apb_bridge_inst_APB_M_PREADY),
        .APB_0_PRESET_N(ctrl_aresetn_1),
        .APB_0_PSEL(axi_apb_bridge_inst_APB_M_PSEL),
        .APB_0_PSLVERR(axi_apb_bridge_inst_APB_M_PSLVERR),
        .APB_0_PWDATA(axi_apb_bridge_inst_APB_M_PWDATA),
        .APB_0_PWRITE(axi_apb_bridge_inst_APB_M_PWRITE),
        .APB_1_PADDR(axi_apb_bridge_inst_APB_M_PADDR[21:0]),
        .APB_1_PCLK(ctrl_aclk_1),
        .APB_1_PENABLE(axi_apb_bridge_inst_APB_M_PENABLE),
        .APB_1_PRDATA(axi_apb_bridge_inst_APB_M2_PRDATA),
        .APB_1_PREADY(axi_apb_bridge_inst_APB_M2_PREADY),
        .APB_1_PRESET_N(hbm_reset_sync_switch1_apb_low_power_interconnect_aresetn),
        .APB_1_PSEL(axi_apb_bridge_inst_APB_M2_PSEL),
        .APB_1_PSLVERR(axi_apb_bridge_inst_APB_M2_PSLVERR),
        .APB_1_PWDATA(axi_apb_bridge_inst_APB_M_PWDATA),
        .APB_1_PWRITE(axi_apb_bridge_inst_APB_M_PWRITE),
        .AXI_12_ACLK(hbm_aclk_1),
        .AXI_12_ARADDR(vip_S00_M_AXI_ARADDR),
        .AXI_12_ARBURST(vip_S00_M_AXI_ARBURST),
        .AXI_12_ARESET_N(hbm_reset_sync_SLR0_interconnect_aresetn),
        .AXI_12_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_ARLEN(vip_S00_M_AXI_ARLEN),
        .AXI_12_ARREADY(vip_S00_M_AXI_ARREADY),
        .AXI_12_ARSIZE({1'b1,1'b0,1'b1}),
        .AXI_12_ARVALID(vip_S00_M_AXI_ARVALID),
        .AXI_12_AWADDR(vip_S00_M_AXI_AWADDR),
        .AXI_12_AWBURST(vip_S00_M_AXI_AWBURST),
        .AXI_12_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_AWLEN(vip_S00_M_AXI_AWLEN),
        .AXI_12_AWREADY(vip_S00_M_AXI_AWREADY),
        .AXI_12_AWSIZE({1'b1,1'b0,1'b1}),
        .AXI_12_AWVALID(vip_S00_M_AXI_AWVALID),
        .AXI_12_BREADY(vip_S00_M_AXI_BREADY),
        .AXI_12_BRESP(vip_S00_M_AXI_BRESP),
        .AXI_12_BVALID(vip_S00_M_AXI_BVALID),
        .AXI_12_RDATA(vip_S00_M_AXI_RDATA),
        .AXI_12_RLAST(vip_S00_M_AXI_RLAST),
        .AXI_12_RREADY(vip_S00_M_AXI_RREADY),
        .AXI_12_RRESP(vip_S00_M_AXI_RRESP),
        .AXI_12_RVALID(vip_S00_M_AXI_RVALID),
        .AXI_12_WDATA(vip_S00_M_AXI_WDATA),
        .AXI_12_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_12_WLAST(vip_S00_M_AXI_WLAST),
        .AXI_12_WREADY(vip_S00_M_AXI_WREADY),
        .AXI_12_WSTRB(vip_S00_M_AXI_WSTRB),
        .AXI_12_WVALID(vip_S00_M_AXI_WVALID),
        .DRAM_0_STAT_CATTRIP(hbm_inst_DRAM_0_STAT_CATTRIP),
        .DRAM_0_STAT_TEMP(hbm_inst_DRAM_0_STAT_TEMP),
        .DRAM_1_STAT_CATTRIP(hbm_inst_DRAM_1_STAT_CATTRIP),
        .DRAM_1_STAT_TEMP(hbm_inst_DRAM_1_STAT_TEMP),
        .HBM_REF_CLK_0(hbm_ref_clk_1),
        .HBM_REF_CLK_1(hbm_ref_clk_1),
        .apb_complete_0(hbm_inst_apb_complete_0),
        .apb_complete_1(hbm_inst_apb_complete_1));
  bd_85ad_hbm_reset_sync_SLR0_0 hbm_reset_sync_SLR0
       (.aux_reset_in(cattrip_net),
        .dcm_locked(1'b1),
        .ext_reset_in(hbm_aresetn_1),
        .interconnect_aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(hbm_aclk_1));
  bd_85ad_hbm_reset_sync_switch1_apb_low_power_0 hbm_reset_sync_switch1_apb_low_power
       (.aux_reset_in(hbm_inst_apb_complete_0),
        .dcm_locked(1'b1),
        .ext_reset_in(ctrl_aresetn_1),
        .interconnect_aresetn(hbm_reset_sync_switch1_apb_low_power_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(ctrl_aclk_1));
  init_logic_imp_KAN0DP init_logic
       (.In0(hbm_inst_apb_complete_0),
        .In1(hbm_inst_apb_complete_1),
        .hbm_mc_init_seq_complete(init_reduce_Res));
  path_12_imp_PXRVTC path_12
       (.M_AXI_araddr(slice0_12_M_AXI_ARADDR),
        .M_AXI_arburst(slice0_12_M_AXI_ARBURST),
        .M_AXI_arcache(slice0_12_M_AXI_ARCACHE),
        .M_AXI_arlen(slice0_12_M_AXI_ARLEN),
        .M_AXI_arlock(slice0_12_M_AXI_ARLOCK),
        .M_AXI_arprot(slice0_12_M_AXI_ARPROT),
        .M_AXI_arqos(slice0_12_M_AXI_ARQOS),
        .M_AXI_arready(slice0_12_M_AXI_ARREADY),
        .M_AXI_arvalid(slice0_12_M_AXI_ARVALID),
        .M_AXI_awaddr(slice0_12_M_AXI_AWADDR),
        .M_AXI_awburst(slice0_12_M_AXI_AWBURST),
        .M_AXI_awcache(slice0_12_M_AXI_AWCACHE),
        .M_AXI_awlen(slice0_12_M_AXI_AWLEN),
        .M_AXI_awlock(slice0_12_M_AXI_AWLOCK),
        .M_AXI_awprot(slice0_12_M_AXI_AWPROT),
        .M_AXI_awqos(slice0_12_M_AXI_AWQOS),
        .M_AXI_awready(slice0_12_M_AXI_AWREADY),
        .M_AXI_awvalid(slice0_12_M_AXI_AWVALID),
        .M_AXI_bready(slice0_12_M_AXI_BREADY),
        .M_AXI_bresp(slice0_12_M_AXI_BRESP),
        .M_AXI_bvalid(slice0_12_M_AXI_BVALID),
        .M_AXI_rdata(slice0_12_M_AXI_RDATA),
        .M_AXI_rlast(slice0_12_M_AXI_RLAST),
        .M_AXI_rready(slice0_12_M_AXI_RREADY),
        .M_AXI_rresp(slice0_12_M_AXI_RRESP),
        .M_AXI_rvalid(slice0_12_M_AXI_RVALID),
        .M_AXI_wdata(slice0_12_M_AXI_WDATA),
        .M_AXI_wlast(slice0_12_M_AXI_WLAST),
        .M_AXI_wready(slice0_12_M_AXI_WREADY),
        .M_AXI_wstrb(slice0_12_M_AXI_WSTRB),
        .M_AXI_wvalid(slice0_12_M_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(aclk_1),
        .aresetn(aresetn_1),
        .aresetn1(hbm_reset_sync_SLR0_interconnect_aresetn),
        .hbm_aclk(hbm_aclk_1));
  bd_85ad_util_vector_logic_0 util_vector_logic
       (.Op1(hbm_inst_DRAM_0_STAT_CATTRIP),
        .Op2(hbm_inst_DRAM_1_STAT_CATTRIP),
        .Res(cattrip_net));
  bd_85ad_vip_S00_0 vip_S00
       (.aclk(hbm_aclk_1),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S00_M_AXI_ARADDR),
        .m_axi_arburst(vip_S00_M_AXI_ARBURST),
        .m_axi_arlen(vip_S00_M_AXI_ARLEN),
        .m_axi_arready(vip_S00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S00_M_AXI_AWADDR),
        .m_axi_awburst(vip_S00_M_AXI_AWBURST),
        .m_axi_awlen(vip_S00_M_AXI_AWLEN),
        .m_axi_awready(vip_S00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S00_M_AXI_AWVALID),
        .m_axi_bready(vip_S00_M_AXI_BREADY),
        .m_axi_bresp(vip_S00_M_AXI_BRESP),
        .m_axi_bvalid(vip_S00_M_AXI_BVALID),
        .m_axi_rdata(vip_S00_M_AXI_RDATA),
        .m_axi_rlast(vip_S00_M_AXI_RLAST),
        .m_axi_rready(vip_S00_M_AXI_RREADY),
        .m_axi_rresp(vip_S00_M_AXI_RRESP),
        .m_axi_rvalid(vip_S00_M_AXI_RVALID),
        .m_axi_wdata(vip_S00_M_AXI_WDATA),
        .m_axi_wlast(vip_S00_M_AXI_WLAST),
        .m_axi_wready(vip_S00_M_AXI_WREADY),
        .m_axi_wstrb(vip_S00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S00_M_AXI_WVALID),
        .s_axi_araddr(slice0_12_M_AXI_ARADDR),
        .s_axi_arburst(slice0_12_M_AXI_ARBURST),
        .s_axi_arcache(slice0_12_M_AXI_ARCACHE),
        .s_axi_arlen(slice0_12_M_AXI_ARLEN),
        .s_axi_arlock(slice0_12_M_AXI_ARLOCK),
        .s_axi_arprot(slice0_12_M_AXI_ARPROT),
        .s_axi_arqos(slice0_12_M_AXI_ARQOS),
        .s_axi_arready(slice0_12_M_AXI_ARREADY),
        .s_axi_arvalid(slice0_12_M_AXI_ARVALID),
        .s_axi_awaddr(slice0_12_M_AXI_AWADDR),
        .s_axi_awburst(slice0_12_M_AXI_AWBURST),
        .s_axi_awcache(slice0_12_M_AXI_AWCACHE),
        .s_axi_awlen(slice0_12_M_AXI_AWLEN),
        .s_axi_awlock(slice0_12_M_AXI_AWLOCK),
        .s_axi_awprot(slice0_12_M_AXI_AWPROT),
        .s_axi_awqos(slice0_12_M_AXI_AWQOS),
        .s_axi_awready(slice0_12_M_AXI_AWREADY),
        .s_axi_awvalid(slice0_12_M_AXI_AWVALID),
        .s_axi_bready(slice0_12_M_AXI_BREADY),
        .s_axi_bresp(slice0_12_M_AXI_BRESP),
        .s_axi_bvalid(slice0_12_M_AXI_BVALID),
        .s_axi_rdata(slice0_12_M_AXI_RDATA),
        .s_axi_rlast(slice0_12_M_AXI_RLAST),
        .s_axi_rready(slice0_12_M_AXI_RREADY),
        .s_axi_rresp(slice0_12_M_AXI_RRESP),
        .s_axi_rvalid(slice0_12_M_AXI_RVALID),
        .s_axi_wdata(slice0_12_M_AXI_WDATA),
        .s_axi_wlast(slice0_12_M_AXI_WLAST),
        .s_axi_wready(slice0_12_M_AXI_WREADY),
        .s_axi_wstrb(slice0_12_M_AXI_WSTRB),
        .s_axi_wvalid(slice0_12_M_AXI_WVALID));
endmodule

module init_logic_imp_KAN0DP
   (In0,
    In1,
    hbm_mc_init_seq_complete);
  input [0:0]In0;
  input [0:0]In1;
  output hbm_mc_init_seq_complete;

  wire [0:0]hbm_inst_apb_complete_0;
  wire [0:0]hbm_inst_apb_complete_1;
  wire [1:0]init_concat_dout;
  wire init_reduce_Res;

  assign hbm_inst_apb_complete_0 = In0[0];
  assign hbm_inst_apb_complete_1 = In1[0];
  assign hbm_mc_init_seq_complete = init_reduce_Res;
  bd_85ad_init_concat_0 init_concat
       (.In0(hbm_inst_apb_complete_0),
        .In1(hbm_inst_apb_complete_1),
        .dout(init_concat_dout));
  bd_85ad_init_reduce_0 init_reduce
       (.Op1(init_concat_dout),
        .Res(init_reduce_Res));
endmodule

module path_12_imp_PXRVTC
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    aclk,
    aresetn,
    aresetn1,
    hbm_aclk);
  output [32:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [32:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [32:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [32:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input aclk;
  input aresetn;
  input aresetn1;
  input hbm_aclk;

  wire [32:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [32:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire hbm_aclk_1;
  wire hbm_reset_sync_SLR0_interconnect_aresetn;
  wire [32:0]interconnect0_12_M00_AXI_ARADDR;
  wire [1:0]interconnect0_12_M00_AXI_ARBURST;
  wire [3:0]interconnect0_12_M00_AXI_ARCACHE;
  wire [3:0]interconnect0_12_M00_AXI_ARLEN;
  wire [1:0]interconnect0_12_M00_AXI_ARLOCK;
  wire [2:0]interconnect0_12_M00_AXI_ARPROT;
  wire [3:0]interconnect0_12_M00_AXI_ARQOS;
  wire interconnect0_12_M00_AXI_ARREADY;
  wire [2:0]interconnect0_12_M00_AXI_ARSIZE;
  wire interconnect0_12_M00_AXI_ARVALID;
  wire [32:0]interconnect0_12_M00_AXI_AWADDR;
  wire [1:0]interconnect0_12_M00_AXI_AWBURST;
  wire [3:0]interconnect0_12_M00_AXI_AWCACHE;
  wire [3:0]interconnect0_12_M00_AXI_AWLEN;
  wire [1:0]interconnect0_12_M00_AXI_AWLOCK;
  wire [2:0]interconnect0_12_M00_AXI_AWPROT;
  wire [3:0]interconnect0_12_M00_AXI_AWQOS;
  wire interconnect0_12_M00_AXI_AWREADY;
  wire [2:0]interconnect0_12_M00_AXI_AWSIZE;
  wire interconnect0_12_M00_AXI_AWVALID;
  wire interconnect0_12_M00_AXI_BREADY;
  wire [1:0]interconnect0_12_M00_AXI_BRESP;
  wire interconnect0_12_M00_AXI_BVALID;
  wire [255:0]interconnect0_12_M00_AXI_RDATA;
  wire interconnect0_12_M00_AXI_RLAST;
  wire interconnect0_12_M00_AXI_RREADY;
  wire [1:0]interconnect0_12_M00_AXI_RRESP;
  wire interconnect0_12_M00_AXI_RVALID;
  wire [255:0]interconnect0_12_M00_AXI_WDATA;
  wire interconnect0_12_M00_AXI_WLAST;
  wire interconnect0_12_M00_AXI_WREADY;
  wire [31:0]interconnect0_12_M00_AXI_WSTRB;
  wire interconnect0_12_M00_AXI_WVALID;
  wire [32:0]slice0_12_M_AXI_ARADDR;
  wire [1:0]slice0_12_M_AXI_ARBURST;
  wire [3:0]slice0_12_M_AXI_ARCACHE;
  wire [3:0]slice0_12_M_AXI_ARLEN;
  wire [1:0]slice0_12_M_AXI_ARLOCK;
  wire [2:0]slice0_12_M_AXI_ARPROT;
  wire [3:0]slice0_12_M_AXI_ARQOS;
  wire slice0_12_M_AXI_ARREADY;
  wire slice0_12_M_AXI_ARVALID;
  wire [32:0]slice0_12_M_AXI_AWADDR;
  wire [1:0]slice0_12_M_AXI_AWBURST;
  wire [3:0]slice0_12_M_AXI_AWCACHE;
  wire [3:0]slice0_12_M_AXI_AWLEN;
  wire [1:0]slice0_12_M_AXI_AWLOCK;
  wire [2:0]slice0_12_M_AXI_AWPROT;
  wire [3:0]slice0_12_M_AXI_AWQOS;
  wire slice0_12_M_AXI_AWREADY;
  wire slice0_12_M_AXI_AWVALID;
  wire slice0_12_M_AXI_BREADY;
  wire [1:0]slice0_12_M_AXI_BRESP;
  wire slice0_12_M_AXI_BVALID;
  wire [255:0]slice0_12_M_AXI_RDATA;
  wire slice0_12_M_AXI_RLAST;
  wire slice0_12_M_AXI_RREADY;
  wire [1:0]slice0_12_M_AXI_RRESP;
  wire slice0_12_M_AXI_RVALID;
  wire [255:0]slice0_12_M_AXI_WDATA;
  wire slice0_12_M_AXI_WLAST;
  wire slice0_12_M_AXI_WREADY;
  wire [31:0]slice0_12_M_AXI_WSTRB;
  wire slice0_12_M_AXI_WVALID;

  assign M_AXI_araddr[32:0] = slice0_12_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = slice0_12_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = slice0_12_M_AXI_ARCACHE;
  assign M_AXI_arlen[3:0] = slice0_12_M_AXI_ARLEN;
  assign M_AXI_arlock[1:0] = slice0_12_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = slice0_12_M_AXI_ARPROT;
  assign M_AXI_arqos[3:0] = slice0_12_M_AXI_ARQOS;
  assign M_AXI_arvalid = slice0_12_M_AXI_ARVALID;
  assign M_AXI_awaddr[32:0] = slice0_12_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = slice0_12_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = slice0_12_M_AXI_AWCACHE;
  assign M_AXI_awlen[3:0] = slice0_12_M_AXI_AWLEN;
  assign M_AXI_awlock[1:0] = slice0_12_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = slice0_12_M_AXI_AWPROT;
  assign M_AXI_awqos[3:0] = slice0_12_M_AXI_AWQOS;
  assign M_AXI_awvalid = slice0_12_M_AXI_AWVALID;
  assign M_AXI_bready = slice0_12_M_AXI_BREADY;
  assign M_AXI_rready = slice0_12_M_AXI_RREADY;
  assign M_AXI_wdata[255:0] = slice0_12_M_AXI_WDATA;
  assign M_AXI_wlast = slice0_12_M_AXI_WLAST;
  assign M_AXI_wstrb[31:0] = slice0_12_M_AXI_WSTRB;
  assign M_AXI_wvalid = slice0_12_M_AXI_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[32:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[32:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[511:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[63:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[511:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign hbm_aclk_1 = hbm_aclk;
  assign hbm_reset_sync_SLR0_interconnect_aresetn = aresetn1;
  assign slice0_12_M_AXI_ARREADY = M_AXI_arready;
  assign slice0_12_M_AXI_AWREADY = M_AXI_awready;
  assign slice0_12_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign slice0_12_M_AXI_BVALID = M_AXI_bvalid;
  assign slice0_12_M_AXI_RDATA = M_AXI_rdata[255:0];
  assign slice0_12_M_AXI_RLAST = M_AXI_rlast;
  assign slice0_12_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign slice0_12_M_AXI_RVALID = M_AXI_rvalid;
  assign slice0_12_M_AXI_WREADY = M_AXI_wready;
  bd_85ad_interconnect0_12_0 interconnect0_12
       (.M00_AXI_araddr(interconnect0_12_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect0_12_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect0_12_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect0_12_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect0_12_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect0_12_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect0_12_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect0_12_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect0_12_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect0_12_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect0_12_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect0_12_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect0_12_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect0_12_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect0_12_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect0_12_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect0_12_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect0_12_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect0_12_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect0_12_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect0_12_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect0_12_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect0_12_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect0_12_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect0_12_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect0_12_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect0_12_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect0_12_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect0_12_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect0_12_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect0_12_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect0_12_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect0_12_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(aclk_1),
        .aclk1(hbm_aclk_1),
        .aresetn(aresetn_1));
  bd_85ad_slice0_12_0 slice0_12
       (.aclk(hbm_aclk_1),
        .aresetn(hbm_reset_sync_SLR0_interconnect_aresetn),
        .m_axi_araddr(slice0_12_M_AXI_ARADDR),
        .m_axi_arburst(slice0_12_M_AXI_ARBURST),
        .m_axi_arcache(slice0_12_M_AXI_ARCACHE),
        .m_axi_arlen(slice0_12_M_AXI_ARLEN),
        .m_axi_arlock(slice0_12_M_AXI_ARLOCK),
        .m_axi_arprot(slice0_12_M_AXI_ARPROT),
        .m_axi_arqos(slice0_12_M_AXI_ARQOS),
        .m_axi_arready(slice0_12_M_AXI_ARREADY),
        .m_axi_arvalid(slice0_12_M_AXI_ARVALID),
        .m_axi_awaddr(slice0_12_M_AXI_AWADDR),
        .m_axi_awburst(slice0_12_M_AXI_AWBURST),
        .m_axi_awcache(slice0_12_M_AXI_AWCACHE),
        .m_axi_awlen(slice0_12_M_AXI_AWLEN),
        .m_axi_awlock(slice0_12_M_AXI_AWLOCK),
        .m_axi_awprot(slice0_12_M_AXI_AWPROT),
        .m_axi_awqos(slice0_12_M_AXI_AWQOS),
        .m_axi_awready(slice0_12_M_AXI_AWREADY),
        .m_axi_awvalid(slice0_12_M_AXI_AWVALID),
        .m_axi_bready(slice0_12_M_AXI_BREADY),
        .m_axi_bresp(slice0_12_M_AXI_BRESP),
        .m_axi_bvalid(slice0_12_M_AXI_BVALID),
        .m_axi_rdata(slice0_12_M_AXI_RDATA),
        .m_axi_rlast(slice0_12_M_AXI_RLAST),
        .m_axi_rready(slice0_12_M_AXI_RREADY),
        .m_axi_rresp(slice0_12_M_AXI_RRESP),
        .m_axi_rvalid(slice0_12_M_AXI_RVALID),
        .m_axi_wdata(slice0_12_M_AXI_WDATA),
        .m_axi_wlast(slice0_12_M_AXI_WLAST),
        .m_axi_wready(slice0_12_M_AXI_WREADY),
        .m_axi_wstrb(slice0_12_M_AXI_WSTRB),
        .m_axi_wvalid(slice0_12_M_AXI_WVALID),
        .s_axi_araddr(interconnect0_12_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect0_12_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect0_12_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect0_12_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect0_12_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect0_12_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect0_12_M00_AXI_ARQOS),
        .s_axi_arready(interconnect0_12_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect0_12_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect0_12_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect0_12_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect0_12_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect0_12_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect0_12_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect0_12_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect0_12_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect0_12_M00_AXI_AWQOS),
        .s_axi_awready(interconnect0_12_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect0_12_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect0_12_M00_AXI_AWVALID),
        .s_axi_bready(interconnect0_12_M00_AXI_BREADY),
        .s_axi_bresp(interconnect0_12_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect0_12_M00_AXI_BVALID),
        .s_axi_rdata(interconnect0_12_M00_AXI_RDATA),
        .s_axi_rlast(interconnect0_12_M00_AXI_RLAST),
        .s_axi_rready(interconnect0_12_M00_AXI_RREADY),
        .s_axi_rresp(interconnect0_12_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect0_12_M00_AXI_RVALID),
        .s_axi_wdata(interconnect0_12_M00_AXI_WDATA),
        .s_axi_wlast(interconnect0_12_M00_AXI_WLAST),
        .s_axi_wready(interconnect0_12_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect0_12_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect0_12_M00_AXI_WVALID));
endmodule
