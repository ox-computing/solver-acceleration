//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_5941.bd
//Design : bd_5941
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_5941,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_5941,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=23,numReposBlks=23,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ii_level0_wire_pxi_ii_core_0.hwdef" *) 
module bd_5941
   (BLP_S_AXI_CTRL_MGMT_00_araddr,
    BLP_S_AXI_CTRL_MGMT_00_arprot,
    BLP_S_AXI_CTRL_MGMT_00_arready,
    BLP_S_AXI_CTRL_MGMT_00_arvalid,
    BLP_S_AXI_CTRL_MGMT_00_awaddr,
    BLP_S_AXI_CTRL_MGMT_00_awprot,
    BLP_S_AXI_CTRL_MGMT_00_awready,
    BLP_S_AXI_CTRL_MGMT_00_awvalid,
    BLP_S_AXI_CTRL_MGMT_00_bready,
    BLP_S_AXI_CTRL_MGMT_00_bresp,
    BLP_S_AXI_CTRL_MGMT_00_bvalid,
    BLP_S_AXI_CTRL_MGMT_00_rdata,
    BLP_S_AXI_CTRL_MGMT_00_rready,
    BLP_S_AXI_CTRL_MGMT_00_rresp,
    BLP_S_AXI_CTRL_MGMT_00_rvalid,
    BLP_S_AXI_CTRL_MGMT_00_wdata,
    BLP_S_AXI_CTRL_MGMT_00_wready,
    BLP_S_AXI_CTRL_MGMT_00_wstrb,
    BLP_S_AXI_CTRL_MGMT_00_wvalid,
    BLP_S_AXI_CTRL_MGMT_01_araddr,
    BLP_S_AXI_CTRL_MGMT_01_arprot,
    BLP_S_AXI_CTRL_MGMT_01_arready,
    BLP_S_AXI_CTRL_MGMT_01_arvalid,
    BLP_S_AXI_CTRL_MGMT_01_awaddr,
    BLP_S_AXI_CTRL_MGMT_01_awprot,
    BLP_S_AXI_CTRL_MGMT_01_awready,
    BLP_S_AXI_CTRL_MGMT_01_awvalid,
    BLP_S_AXI_CTRL_MGMT_01_bready,
    BLP_S_AXI_CTRL_MGMT_01_bresp,
    BLP_S_AXI_CTRL_MGMT_01_bvalid,
    BLP_S_AXI_CTRL_MGMT_01_rdata,
    BLP_S_AXI_CTRL_MGMT_01_rready,
    BLP_S_AXI_CTRL_MGMT_01_rresp,
    BLP_S_AXI_CTRL_MGMT_01_rvalid,
    BLP_S_AXI_CTRL_MGMT_01_wdata,
    BLP_S_AXI_CTRL_MGMT_01_wready,
    BLP_S_AXI_CTRL_MGMT_01_wstrb,
    BLP_S_AXI_CTRL_MGMT_01_wvalid,
    BLP_S_AXI_CTRL_USER_00_araddr,
    BLP_S_AXI_CTRL_USER_00_arprot,
    BLP_S_AXI_CTRL_USER_00_arready,
    BLP_S_AXI_CTRL_USER_00_arvalid,
    BLP_S_AXI_CTRL_USER_00_awaddr,
    BLP_S_AXI_CTRL_USER_00_awprot,
    BLP_S_AXI_CTRL_USER_00_awready,
    BLP_S_AXI_CTRL_USER_00_awvalid,
    BLP_S_AXI_CTRL_USER_00_bready,
    BLP_S_AXI_CTRL_USER_00_bresp,
    BLP_S_AXI_CTRL_USER_00_bvalid,
    BLP_S_AXI_CTRL_USER_00_rdata,
    BLP_S_AXI_CTRL_USER_00_rready,
    BLP_S_AXI_CTRL_USER_00_rresp,
    BLP_S_AXI_CTRL_USER_00_rvalid,
    BLP_S_AXI_CTRL_USER_00_wdata,
    BLP_S_AXI_CTRL_USER_00_wready,
    BLP_S_AXI_CTRL_USER_00_wstrb,
    BLP_S_AXI_CTRL_USER_00_wvalid,
    BLP_S_AXI_CTRL_USER_01_araddr,
    BLP_S_AXI_CTRL_USER_01_arprot,
    BLP_S_AXI_CTRL_USER_01_arready,
    BLP_S_AXI_CTRL_USER_01_arvalid,
    BLP_S_AXI_CTRL_USER_01_awaddr,
    BLP_S_AXI_CTRL_USER_01_awprot,
    BLP_S_AXI_CTRL_USER_01_awready,
    BLP_S_AXI_CTRL_USER_01_awvalid,
    BLP_S_AXI_CTRL_USER_01_bready,
    BLP_S_AXI_CTRL_USER_01_bresp,
    BLP_S_AXI_CTRL_USER_01_bvalid,
    BLP_S_AXI_CTRL_USER_01_rdata,
    BLP_S_AXI_CTRL_USER_01_rready,
    BLP_S_AXI_CTRL_USER_01_rresp,
    BLP_S_AXI_CTRL_USER_01_rvalid,
    BLP_S_AXI_CTRL_USER_01_wdata,
    BLP_S_AXI_CTRL_USER_01_wready,
    BLP_S_AXI_CTRL_USER_01_wstrb,
    BLP_S_AXI_CTRL_USER_01_wvalid,
    BLP_S_AXI_CTRL_USER_02_araddr,
    BLP_S_AXI_CTRL_USER_02_arprot,
    BLP_S_AXI_CTRL_USER_02_arready,
    BLP_S_AXI_CTRL_USER_02_arvalid,
    BLP_S_AXI_CTRL_USER_02_awaddr,
    BLP_S_AXI_CTRL_USER_02_awprot,
    BLP_S_AXI_CTRL_USER_02_awready,
    BLP_S_AXI_CTRL_USER_02_awvalid,
    BLP_S_AXI_CTRL_USER_02_bready,
    BLP_S_AXI_CTRL_USER_02_bresp,
    BLP_S_AXI_CTRL_USER_02_bvalid,
    BLP_S_AXI_CTRL_USER_02_rdata,
    BLP_S_AXI_CTRL_USER_02_rready,
    BLP_S_AXI_CTRL_USER_02_rresp,
    BLP_S_AXI_CTRL_USER_02_rvalid,
    BLP_S_AXI_CTRL_USER_02_wdata,
    BLP_S_AXI_CTRL_USER_02_wready,
    BLP_S_AXI_CTRL_USER_02_wstrb,
    BLP_S_AXI_CTRL_USER_02_wvalid,
    BLP_S_AXI_DATA_H2C_00_araddr,
    BLP_S_AXI_DATA_H2C_00_arburst,
    BLP_S_AXI_DATA_H2C_00_arcache,
    BLP_S_AXI_DATA_H2C_00_arid,
    BLP_S_AXI_DATA_H2C_00_arlen,
    BLP_S_AXI_DATA_H2C_00_arlock,
    BLP_S_AXI_DATA_H2C_00_arprot,
    BLP_S_AXI_DATA_H2C_00_arready,
    BLP_S_AXI_DATA_H2C_00_arvalid,
    BLP_S_AXI_DATA_H2C_00_awaddr,
    BLP_S_AXI_DATA_H2C_00_awburst,
    BLP_S_AXI_DATA_H2C_00_awcache,
    BLP_S_AXI_DATA_H2C_00_awid,
    BLP_S_AXI_DATA_H2C_00_awlen,
    BLP_S_AXI_DATA_H2C_00_awlock,
    BLP_S_AXI_DATA_H2C_00_awprot,
    BLP_S_AXI_DATA_H2C_00_awready,
    BLP_S_AXI_DATA_H2C_00_awvalid,
    BLP_S_AXI_DATA_H2C_00_bid,
    BLP_S_AXI_DATA_H2C_00_bready,
    BLP_S_AXI_DATA_H2C_00_bresp,
    BLP_S_AXI_DATA_H2C_00_bvalid,
    BLP_S_AXI_DATA_H2C_00_rdata,
    BLP_S_AXI_DATA_H2C_00_rid,
    BLP_S_AXI_DATA_H2C_00_rlast,
    BLP_S_AXI_DATA_H2C_00_rready,
    BLP_S_AXI_DATA_H2C_00_rresp,
    BLP_S_AXI_DATA_H2C_00_rvalid,
    BLP_S_AXI_DATA_H2C_00_wdata,
    BLP_S_AXI_DATA_H2C_00_wlast,
    BLP_S_AXI_DATA_H2C_00_wready,
    BLP_S_AXI_DATA_H2C_00_wstrb,
    BLP_S_AXI_DATA_H2C_00_wvalid,
    ULP_M_AXI_CTRL_MGMT_00_araddr,
    ULP_M_AXI_CTRL_MGMT_00_arprot,
    ULP_M_AXI_CTRL_MGMT_00_arready,
    ULP_M_AXI_CTRL_MGMT_00_arvalid,
    ULP_M_AXI_CTRL_MGMT_00_awaddr,
    ULP_M_AXI_CTRL_MGMT_00_awprot,
    ULP_M_AXI_CTRL_MGMT_00_awready,
    ULP_M_AXI_CTRL_MGMT_00_awvalid,
    ULP_M_AXI_CTRL_MGMT_00_bready,
    ULP_M_AXI_CTRL_MGMT_00_bresp,
    ULP_M_AXI_CTRL_MGMT_00_bvalid,
    ULP_M_AXI_CTRL_MGMT_00_rdata,
    ULP_M_AXI_CTRL_MGMT_00_rready,
    ULP_M_AXI_CTRL_MGMT_00_rresp,
    ULP_M_AXI_CTRL_MGMT_00_rvalid,
    ULP_M_AXI_CTRL_MGMT_00_wdata,
    ULP_M_AXI_CTRL_MGMT_00_wready,
    ULP_M_AXI_CTRL_MGMT_00_wstrb,
    ULP_M_AXI_CTRL_MGMT_00_wvalid,
    ULP_M_AXI_CTRL_MGMT_01_araddr,
    ULP_M_AXI_CTRL_MGMT_01_arprot,
    ULP_M_AXI_CTRL_MGMT_01_arready,
    ULP_M_AXI_CTRL_MGMT_01_arvalid,
    ULP_M_AXI_CTRL_MGMT_01_awaddr,
    ULP_M_AXI_CTRL_MGMT_01_awprot,
    ULP_M_AXI_CTRL_MGMT_01_awready,
    ULP_M_AXI_CTRL_MGMT_01_awvalid,
    ULP_M_AXI_CTRL_MGMT_01_bready,
    ULP_M_AXI_CTRL_MGMT_01_bresp,
    ULP_M_AXI_CTRL_MGMT_01_bvalid,
    ULP_M_AXI_CTRL_MGMT_01_rdata,
    ULP_M_AXI_CTRL_MGMT_01_rready,
    ULP_M_AXI_CTRL_MGMT_01_rresp,
    ULP_M_AXI_CTRL_MGMT_01_rvalid,
    ULP_M_AXI_CTRL_MGMT_01_wdata,
    ULP_M_AXI_CTRL_MGMT_01_wready,
    ULP_M_AXI_CTRL_MGMT_01_wstrb,
    ULP_M_AXI_CTRL_MGMT_01_wvalid,
    ULP_M_AXI_CTRL_USER_00_araddr,
    ULP_M_AXI_CTRL_USER_00_arprot,
    ULP_M_AXI_CTRL_USER_00_arready,
    ULP_M_AXI_CTRL_USER_00_arvalid,
    ULP_M_AXI_CTRL_USER_00_awaddr,
    ULP_M_AXI_CTRL_USER_00_awprot,
    ULP_M_AXI_CTRL_USER_00_awready,
    ULP_M_AXI_CTRL_USER_00_awvalid,
    ULP_M_AXI_CTRL_USER_00_bready,
    ULP_M_AXI_CTRL_USER_00_bresp,
    ULP_M_AXI_CTRL_USER_00_bvalid,
    ULP_M_AXI_CTRL_USER_00_rdata,
    ULP_M_AXI_CTRL_USER_00_rready,
    ULP_M_AXI_CTRL_USER_00_rresp,
    ULP_M_AXI_CTRL_USER_00_rvalid,
    ULP_M_AXI_CTRL_USER_00_wdata,
    ULP_M_AXI_CTRL_USER_00_wready,
    ULP_M_AXI_CTRL_USER_00_wstrb,
    ULP_M_AXI_CTRL_USER_00_wvalid,
    ULP_M_AXI_CTRL_USER_01_araddr,
    ULP_M_AXI_CTRL_USER_01_arprot,
    ULP_M_AXI_CTRL_USER_01_arready,
    ULP_M_AXI_CTRL_USER_01_arvalid,
    ULP_M_AXI_CTRL_USER_01_awaddr,
    ULP_M_AXI_CTRL_USER_01_awprot,
    ULP_M_AXI_CTRL_USER_01_awready,
    ULP_M_AXI_CTRL_USER_01_awvalid,
    ULP_M_AXI_CTRL_USER_01_bready,
    ULP_M_AXI_CTRL_USER_01_bresp,
    ULP_M_AXI_CTRL_USER_01_bvalid,
    ULP_M_AXI_CTRL_USER_01_rdata,
    ULP_M_AXI_CTRL_USER_01_rready,
    ULP_M_AXI_CTRL_USER_01_rresp,
    ULP_M_AXI_CTRL_USER_01_rvalid,
    ULP_M_AXI_CTRL_USER_01_wdata,
    ULP_M_AXI_CTRL_USER_01_wready,
    ULP_M_AXI_CTRL_USER_01_wstrb,
    ULP_M_AXI_CTRL_USER_01_wvalid,
    ULP_M_AXI_CTRL_USER_02_araddr,
    ULP_M_AXI_CTRL_USER_02_arprot,
    ULP_M_AXI_CTRL_USER_02_arready,
    ULP_M_AXI_CTRL_USER_02_arvalid,
    ULP_M_AXI_CTRL_USER_02_awaddr,
    ULP_M_AXI_CTRL_USER_02_awprot,
    ULP_M_AXI_CTRL_USER_02_awready,
    ULP_M_AXI_CTRL_USER_02_awvalid,
    ULP_M_AXI_CTRL_USER_02_bready,
    ULP_M_AXI_CTRL_USER_02_bresp,
    ULP_M_AXI_CTRL_USER_02_bvalid,
    ULP_M_AXI_CTRL_USER_02_rdata,
    ULP_M_AXI_CTRL_USER_02_rready,
    ULP_M_AXI_CTRL_USER_02_rresp,
    ULP_M_AXI_CTRL_USER_02_rvalid,
    ULP_M_AXI_CTRL_USER_02_wdata,
    ULP_M_AXI_CTRL_USER_02_wready,
    ULP_M_AXI_CTRL_USER_02_wstrb,
    ULP_M_AXI_CTRL_USER_02_wvalid,
    ULP_M_AXI_DATA_H2C_00_araddr,
    ULP_M_AXI_DATA_H2C_00_arburst,
    ULP_M_AXI_DATA_H2C_00_arcache,
    ULP_M_AXI_DATA_H2C_00_arid,
    ULP_M_AXI_DATA_H2C_00_arlen,
    ULP_M_AXI_DATA_H2C_00_arlock,
    ULP_M_AXI_DATA_H2C_00_arprot,
    ULP_M_AXI_DATA_H2C_00_arready,
    ULP_M_AXI_DATA_H2C_00_arvalid,
    ULP_M_AXI_DATA_H2C_00_awaddr,
    ULP_M_AXI_DATA_H2C_00_awburst,
    ULP_M_AXI_DATA_H2C_00_awcache,
    ULP_M_AXI_DATA_H2C_00_awid,
    ULP_M_AXI_DATA_H2C_00_awlen,
    ULP_M_AXI_DATA_H2C_00_awlock,
    ULP_M_AXI_DATA_H2C_00_awprot,
    ULP_M_AXI_DATA_H2C_00_awready,
    ULP_M_AXI_DATA_H2C_00_awvalid,
    ULP_M_AXI_DATA_H2C_00_bid,
    ULP_M_AXI_DATA_H2C_00_bready,
    ULP_M_AXI_DATA_H2C_00_bresp,
    ULP_M_AXI_DATA_H2C_00_bvalid,
    ULP_M_AXI_DATA_H2C_00_rdata,
    ULP_M_AXI_DATA_H2C_00_rid,
    ULP_M_AXI_DATA_H2C_00_rlast,
    ULP_M_AXI_DATA_H2C_00_rready,
    ULP_M_AXI_DATA_H2C_00_rresp,
    ULP_M_AXI_DATA_H2C_00_rvalid,
    ULP_M_AXI_DATA_H2C_00_wdata,
    ULP_M_AXI_DATA_H2C_00_wlast,
    ULP_M_AXI_DATA_H2C_00_wready,
    ULP_M_AXI_DATA_H2C_00_wstrb,
    ULP_M_AXI_DATA_H2C_00_wvalid,
    blp_m_data_hbm_temp_00,
    blp_m_data_hbm_temp_01,
    blp_m_data_memory_calib_complete_00,
    blp_m_irq_cu_00,
    blp_m_irq_hbm_cattrip_00,
    blp_s_aclk_ctrl_00,
    blp_s_aclk_freerun_ref_00,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_ctrl_00,
    blp_s_aresetn_pcie_00,
    blp_s_data_satellite_ctrl_data_00,
    ulp_m_aclk_ctrl_00,
    ulp_m_aclk_freerun_ref_00,
    ulp_m_aclk_pcie_00,
    ulp_m_aresetn_ctrl_00,
    ulp_m_aresetn_pcie_00,
    ulp_m_data_satellite_ctrl_data_00,
    ulp_s_data_hbm_temp_00,
    ulp_s_data_hbm_temp_01,
    ulp_s_data_memory_calib_complete_00,
    ulp_s_irq_cu_00,
    ulp_s_irq_hbm_cattrip_00);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_MGMT_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_MGMT_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARREADY" *) output BLP_S_AXI_CTRL_MGMT_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 ARVALID" *) input BLP_S_AXI_CTRL_MGMT_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_MGMT_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWREADY" *) output BLP_S_AXI_CTRL_MGMT_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 AWVALID" *) input BLP_S_AXI_CTRL_MGMT_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BREADY" *) input BLP_S_AXI_CTRL_MGMT_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 BVALID" *) output BLP_S_AXI_CTRL_MGMT_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_MGMT_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RREADY" *) input BLP_S_AXI_CTRL_MGMT_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 RVALID" *) output BLP_S_AXI_CTRL_MGMT_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_MGMT_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WREADY" *) output BLP_S_AXI_CTRL_MGMT_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_MGMT_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_00 WVALID" *) input BLP_S_AXI_CTRL_MGMT_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_MGMT_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_MGMT_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARREADY" *) output BLP_S_AXI_CTRL_MGMT_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 ARVALID" *) input BLP_S_AXI_CTRL_MGMT_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_MGMT_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_MGMT_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWREADY" *) output BLP_S_AXI_CTRL_MGMT_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 AWVALID" *) input BLP_S_AXI_CTRL_MGMT_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BREADY" *) input BLP_S_AXI_CTRL_MGMT_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 BVALID" *) output BLP_S_AXI_CTRL_MGMT_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_MGMT_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RREADY" *) input BLP_S_AXI_CTRL_MGMT_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_MGMT_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 RVALID" *) output BLP_S_AXI_CTRL_MGMT_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_MGMT_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WREADY" *) output BLP_S_AXI_CTRL_MGMT_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_MGMT_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_MGMT_01 WVALID" *) input BLP_S_AXI_CTRL_MGMT_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY" *) output BLP_S_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID" *) input BLP_S_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY" *) output BLP_S_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID" *) input BLP_S_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY" *) input BLP_S_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID" *) output BLP_S_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY" *) input BLP_S_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID" *) output BLP_S_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY" *) output BLP_S_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID" *) input BLP_S_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARREADY" *) output BLP_S_AXI_CTRL_USER_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARVALID" *) input BLP_S_AXI_CTRL_USER_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWREADY" *) output BLP_S_AXI_CTRL_USER_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWVALID" *) input BLP_S_AXI_CTRL_USER_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BREADY" *) input BLP_S_AXI_CTRL_USER_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BVALID" *) output BLP_S_AXI_CTRL_USER_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RREADY" *) input BLP_S_AXI_CTRL_USER_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RVALID" *) output BLP_S_AXI_CTRL_USER_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WREADY" *) output BLP_S_AXI_CTRL_USER_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WVALID" *) input BLP_S_AXI_CTRL_USER_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *) output BLP_S_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *) input BLP_S_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *) output BLP_S_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *) input BLP_S_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *) input BLP_S_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *) output BLP_S_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *) output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *) output BLP_S_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *) input BLP_S_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *) output BLP_S_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *) input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *) input BLP_S_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *) output BLP_S_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *) input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *) input BLP_S_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_MGMT_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_MGMT_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARREADY" *) input ULP_M_AXI_CTRL_MGMT_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 ARVALID" *) output ULP_M_AXI_CTRL_MGMT_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_MGMT_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWREADY" *) input ULP_M_AXI_CTRL_MGMT_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 AWVALID" *) output ULP_M_AXI_CTRL_MGMT_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BREADY" *) output ULP_M_AXI_CTRL_MGMT_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 BVALID" *) input ULP_M_AXI_CTRL_MGMT_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_MGMT_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RREADY" *) output ULP_M_AXI_CTRL_MGMT_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 RVALID" *) input ULP_M_AXI_CTRL_MGMT_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_MGMT_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WREADY" *) input ULP_M_AXI_CTRL_MGMT_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_MGMT_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_00 WVALID" *) output ULP_M_AXI_CTRL_MGMT_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_MGMT_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_MGMT_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARREADY" *) input ULP_M_AXI_CTRL_MGMT_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 ARVALID" *) output ULP_M_AXI_CTRL_MGMT_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_MGMT_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_MGMT_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWREADY" *) input ULP_M_AXI_CTRL_MGMT_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 AWVALID" *) output ULP_M_AXI_CTRL_MGMT_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BREADY" *) output ULP_M_AXI_CTRL_MGMT_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 BVALID" *) input ULP_M_AXI_CTRL_MGMT_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RDATA" *) input [31:0]ULP_M_AXI_CTRL_MGMT_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RREADY" *) output ULP_M_AXI_CTRL_MGMT_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RRESP" *) input [1:0]ULP_M_AXI_CTRL_MGMT_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 RVALID" *) input ULP_M_AXI_CTRL_MGMT_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WDATA" *) output [31:0]ULP_M_AXI_CTRL_MGMT_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WREADY" *) input ULP_M_AXI_CTRL_MGMT_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_MGMT_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_MGMT_01 WVALID" *) output ULP_M_AXI_CTRL_MGMT_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *) input ULP_M_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *) output ULP_M_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *) input ULP_M_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *) output ULP_M_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *) output ULP_M_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *) input ULP_M_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *) output ULP_M_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *) input ULP_M_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *) input ULP_M_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *) output ULP_M_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARREADY" *) input ULP_M_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARVALID" *) output ULP_M_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWREADY" *) input ULP_M_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWVALID" *) output ULP_M_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BREADY" *) output ULP_M_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BVALID" *) input ULP_M_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RREADY" *) output ULP_M_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RVALID" *) input ULP_M_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WREADY" *) input ULP_M_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WVALID" *) output ULP_M_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARREADY" *) input ULP_M_AXI_CTRL_USER_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARVALID" *) output ULP_M_AXI_CTRL_USER_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWREADY" *) input ULP_M_AXI_CTRL_USER_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWVALID" *) output ULP_M_AXI_CTRL_USER_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BREADY" *) output ULP_M_AXI_CTRL_USER_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BVALID" *) input ULP_M_AXI_CTRL_USER_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RREADY" *) output ULP_M_AXI_CTRL_USER_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RVALID" *) input ULP_M_AXI_CTRL_USER_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WREADY" *) input ULP_M_AXI_CTRL_USER_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WVALID" *) output ULP_M_AXI_CTRL_USER_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *) output [1:0]ULP_M_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *) input ULP_M_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *) output ULP_M_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *) output [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *) output [1:0]ULP_M_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *) input ULP_M_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *) output ULP_M_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *) input [1:0]ULP_M_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *) output ULP_M_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *) input ULP_M_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *) input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *) input [1:0]ULP_M_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *) input ULP_M_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *) output ULP_M_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *) input ULP_M_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *) output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *) output ULP_M_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *) input ULP_M_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *) output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *) output ULP_M_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_HBM_TEMP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_HBM_TEMP_00, LAYERED_METADATA undef" *) output [6:0]blp_m_data_hbm_temp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_HBM_TEMP_01 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_HBM_TEMP_01, LAYERED_METADATA undef" *) output [6:0]blp_m_data_hbm_temp_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) output [0:0]blp_m_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PortWidth 128, SENSITIVITY level_high" *) output [127:0]blp_m_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_HBM_CATTRIP_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_HBM_CATTRIP_00, PortWidth 1, SENSITIVITY level_high" *) output [0:0]blp_m_irq_hbm_cattrip_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_MGMT_00:BLP_S_AXI_CTRL_MGMT_01:BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_S_AXI_CTRL_USER_02:blp_m_data_hbm_temp_00:blp_m_data_hbm_temp_01:blp_m_data_memory_calib_complete_00:blp_m_irq_hbm_cattrip_00:blp_s_data_satellite_ctrl_data_00, ASSOCIATED_RESET BLP_S_ARESETN_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_FREERUN_REF_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_FREERUN_REF_00, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_freerun_ref_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, ASSOCIATED_BUSIF BLP_S_AXI_DATA_H2C_00:blp_m_irq_cu_00, ASSOCIATED_RESET BLP_S_ARESETN_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input [0:0]blp_s_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input [0:0]blp_s_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SATELLITE_CTRL_DATA_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_SATELLITE_CTRL_DATA_00, LAYERED_METADATA undef" *) input [1:0]blp_s_data_satellite_ctrl_data_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_MGMT_00:ULP_M_AXI_CTRL_MGMT_01:ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_CTRL_USER_01:ULP_M_AXI_CTRL_USER_02:ulp_m_data_satellite_ctrl_data_00:ulp_s_data_memory_calib_complete_00:ulp_s_data_hbm_temp_00:ulp_s_data_hbm_temp_01:ulp_s_irq_hbm_cattrip_00, ASSOCIATED_RESET ULP_M_ARESETN_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_FREERUN_REF_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_FREERUN_REF_00, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_freerun_ref_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_PCIE_00, ASSOCIATED_BUSIF ULP_M_AXI_DATA_H2C_00:ulp_s_irq_cu_00, ASSOCIATED_RESET ULP_M_ARESETN_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_SATELLITE_CTRL_DATA_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_SATELLITE_CTRL_DATA_00, LAYERED_METADATA undef" *) output [1:0]ulp_m_data_satellite_ctrl_data_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_HBM_TEMP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_HBM_TEMP_00, LAYERED_METADATA undef" *) input [6:0]ulp_s_data_hbm_temp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_HBM_TEMP_01 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_HBM_TEMP_01, LAYERED_METADATA undef" *) input [6:0]ulp_s_data_hbm_temp_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) input [0:0]ulp_s_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_CU_00, PortWidth 128, SENSITIVITY level_high" *) input [127:0]ulp_s_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_HBM_CATTRIP_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_HBM_CATTRIP_00, PortWidth 1, SENSITIVITY level_high" *) input [0:0]ulp_s_irq_hbm_cattrip_00;

  wire [24:0]BLP_S_AXI_CTRL_MGMT_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_MGMT_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_MGMT_00_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_MGMT_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_MGMT_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_MGMT_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_00_1_BRESP;
  wire BLP_S_AXI_CTRL_MGMT_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_00_1_RDATA;
  wire BLP_S_AXI_CTRL_MGMT_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_00_1_RRESP;
  wire BLP_S_AXI_CTRL_MGMT_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_00_1_WDATA;
  wire BLP_S_AXI_CTRL_MGMT_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_MGMT_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_MGMT_00_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_01_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_01_1_ARPROT;
  wire BLP_S_AXI_CTRL_MGMT_01_1_ARREADY;
  wire BLP_S_AXI_CTRL_MGMT_01_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_01_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_01_1_AWPROT;
  wire BLP_S_AXI_CTRL_MGMT_01_1_AWREADY;
  wire BLP_S_AXI_CTRL_MGMT_01_1_AWVALID;
  wire BLP_S_AXI_CTRL_MGMT_01_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_01_1_BRESP;
  wire BLP_S_AXI_CTRL_MGMT_01_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_01_1_RDATA;
  wire BLP_S_AXI_CTRL_MGMT_01_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_01_1_RRESP;
  wire BLP_S_AXI_CTRL_MGMT_01_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_01_1_WDATA;
  wire BLP_S_AXI_CTRL_MGMT_01_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_MGMT_01_1_WSTRB;
  wire BLP_S_AXI_CTRL_MGMT_01_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_00_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_01_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_01_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_01_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_02_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_02_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_02_1_WVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_ARCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_ARVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_AWCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_AWVALID;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_BID;
  wire BLP_S_AXI_DATA_H2C_00_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_BVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_RDATA;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_RID;
  wire BLP_S_AXI_DATA_H2C_00_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_RVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_00_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_WREADY;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_00_1_WVALID;
  wire blp_s_aclk_ctrl_00_1;
  wire blp_s_aclk_freerun_ref_00_1;
  wire blp_s_aclk_pcie_00_1;
  wire [0:0]blp_s_aresetn_ctrl_00_1;
  wire [0:0]blp_s_aresetn_pcie_00_1;
  wire [1:0]blp_s_data_satellite_ctrl_data_00_1;
  wire ip_aclk_ctrl_00_clk_out;
  wire ip_aclk_freerun_ref_00_clk_out;
  wire ip_aclk_pcie_00_clk_out;
  wire [0:0]ip_aresetn_ctrl_00_q;
  wire [0:0]ip_aresetn_pcie_00_q;
  wire [6:0]ip_data_hbm_temp_00_q;
  wire [6:0]ip_data_hbm_temp_01_q;
  wire [0:0]ip_data_memory_calib_complete_00_q;
  wire [1:0]ip_data_satellite_ctrl_data_00_q;
  wire [127:0]ip_irq_cu_00_q;
  wire [0:0]ip_irq_hbm_cattrip_00_q;
  wire [24:0]m_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_mgmt_00_M_AXI_BRESP;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_mgmt_00_M_AXI_RDATA;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_mgmt_00_M_AXI_RRESP;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_mgmt_00_M_AXI_WDATA;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_mgmt_00_M_AXI_WVALID;
  wire [24:0]m_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_mgmt_01_M_AXI_BRESP;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_mgmt_01_M_AXI_RDATA;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_mgmt_01_M_AXI_RRESP;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_mgmt_01_M_AXI_WDATA;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_mgmt_01_M_AXI_WVALID;
  wire [24:0]m_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_user_00_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_user_00_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_user_00_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_user_00_M_AXI_BRESP;
  wire m_ip_axi_ctrl_user_00_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_user_00_M_AXI_RDATA;
  wire m_ip_axi_ctrl_user_00_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_user_00_M_AXI_RRESP;
  wire m_ip_axi_ctrl_user_00_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_user_00_M_AXI_WDATA;
  wire m_ip_axi_ctrl_user_00_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_user_00_M_AXI_WVALID;
  wire [24:0]m_ip_axi_ctrl_user_01_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_user_01_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_user_01_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_user_01_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_user_01_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_user_01_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_user_01_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_user_01_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_user_01_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_user_01_M_AXI_BRESP;
  wire m_ip_axi_ctrl_user_01_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_user_01_M_AXI_RDATA;
  wire m_ip_axi_ctrl_user_01_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_user_01_M_AXI_RRESP;
  wire m_ip_axi_ctrl_user_01_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_user_01_M_AXI_WDATA;
  wire m_ip_axi_ctrl_user_01_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_user_01_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_user_01_M_AXI_WVALID;
  wire [24:0]m_ip_axi_ctrl_user_02_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_user_02_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_user_02_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_user_02_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_user_02_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_user_02_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_user_02_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_user_02_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_user_02_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_user_02_M_AXI_BRESP;
  wire m_ip_axi_ctrl_user_02_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_user_02_M_AXI_RDATA;
  wire m_ip_axi_ctrl_user_02_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_user_02_M_AXI_RRESP;
  wire m_ip_axi_ctrl_user_02_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_user_02_M_AXI_WDATA;
  wire m_ip_axi_ctrl_user_02_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_user_02_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_user_02_M_AXI_WVALID;
  wire [38:0]m_ip_axi_data_h2c_00_M_AXI_ARADDR;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_ARBURST;
  wire [3:0]m_ip_axi_data_h2c_00_M_AXI_ARCACHE;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_ARID;
  wire [7:0]m_ip_axi_data_h2c_00_M_AXI_ARLEN;
  wire [0:0]m_ip_axi_data_h2c_00_M_AXI_ARLOCK;
  wire [2:0]m_ip_axi_data_h2c_00_M_AXI_ARPROT;
  wire m_ip_axi_data_h2c_00_M_AXI_ARREADY;
  wire m_ip_axi_data_h2c_00_M_AXI_ARVALID;
  wire [38:0]m_ip_axi_data_h2c_00_M_AXI_AWADDR;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_AWBURST;
  wire [3:0]m_ip_axi_data_h2c_00_M_AXI_AWCACHE;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_AWID;
  wire [7:0]m_ip_axi_data_h2c_00_M_AXI_AWLEN;
  wire [0:0]m_ip_axi_data_h2c_00_M_AXI_AWLOCK;
  wire [2:0]m_ip_axi_data_h2c_00_M_AXI_AWPROT;
  wire m_ip_axi_data_h2c_00_M_AXI_AWREADY;
  wire m_ip_axi_data_h2c_00_M_AXI_AWVALID;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_BID;
  wire m_ip_axi_data_h2c_00_M_AXI_BREADY;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_BRESP;
  wire m_ip_axi_data_h2c_00_M_AXI_BVALID;
  wire [511:0]m_ip_axi_data_h2c_00_M_AXI_RDATA;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_RID;
  wire m_ip_axi_data_h2c_00_M_AXI_RLAST;
  wire m_ip_axi_data_h2c_00_M_AXI_RREADY;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_RRESP;
  wire m_ip_axi_data_h2c_00_M_AXI_RVALID;
  wire [511:0]m_ip_axi_data_h2c_00_M_AXI_WDATA;
  wire m_ip_axi_data_h2c_00_M_AXI_WLAST;
  wire m_ip_axi_data_h2c_00_M_AXI_WREADY;
  wire [63:0]m_ip_axi_data_h2c_00_M_AXI_WSTRB;
  wire m_ip_axi_data_h2c_00_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_mgmt_00_M_AXI_BRESP;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_mgmt_00_M_AXI_RDATA;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_mgmt_00_M_AXI_RRESP;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_mgmt_00_M_AXI_WDATA;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_mgmt_00_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_mgmt_01_M_AXI_BRESP;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_mgmt_01_M_AXI_RDATA;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_mgmt_01_M_AXI_RRESP;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_mgmt_01_M_AXI_WDATA;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_mgmt_01_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_user_00_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_user_00_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_user_00_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_user_00_M_AXI_BRESP;
  wire s_ip_axi_ctrl_user_00_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_user_00_M_AXI_RDATA;
  wire s_ip_axi_ctrl_user_00_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_user_00_M_AXI_RRESP;
  wire s_ip_axi_ctrl_user_00_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_user_00_M_AXI_WDATA;
  wire s_ip_axi_ctrl_user_00_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_user_00_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_user_01_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_user_01_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_user_01_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_user_01_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_user_01_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_user_01_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_user_01_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_user_01_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_user_01_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_user_01_M_AXI_BRESP;
  wire s_ip_axi_ctrl_user_01_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_user_01_M_AXI_RDATA;
  wire s_ip_axi_ctrl_user_01_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_user_01_M_AXI_RRESP;
  wire s_ip_axi_ctrl_user_01_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_user_01_M_AXI_WDATA;
  wire s_ip_axi_ctrl_user_01_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_user_01_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_user_01_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_user_02_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_user_02_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_user_02_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_user_02_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_user_02_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_user_02_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_user_02_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_user_02_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_user_02_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_user_02_M_AXI_BRESP;
  wire s_ip_axi_ctrl_user_02_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_user_02_M_AXI_RDATA;
  wire s_ip_axi_ctrl_user_02_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_user_02_M_AXI_RRESP;
  wire s_ip_axi_ctrl_user_02_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_user_02_M_AXI_WDATA;
  wire s_ip_axi_ctrl_user_02_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_user_02_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_user_02_M_AXI_WVALID;
  wire [38:0]s_ip_axi_data_h2c_00_M_AXI_ARADDR;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_ARBURST;
  wire [3:0]s_ip_axi_data_h2c_00_M_AXI_ARCACHE;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_ARID;
  wire [7:0]s_ip_axi_data_h2c_00_M_AXI_ARLEN;
  wire [0:0]s_ip_axi_data_h2c_00_M_AXI_ARLOCK;
  wire [2:0]s_ip_axi_data_h2c_00_M_AXI_ARPROT;
  wire s_ip_axi_data_h2c_00_M_AXI_ARREADY;
  wire s_ip_axi_data_h2c_00_M_AXI_ARVALID;
  wire [38:0]s_ip_axi_data_h2c_00_M_AXI_AWADDR;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_AWBURST;
  wire [3:0]s_ip_axi_data_h2c_00_M_AXI_AWCACHE;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_AWID;
  wire [7:0]s_ip_axi_data_h2c_00_M_AXI_AWLEN;
  wire [0:0]s_ip_axi_data_h2c_00_M_AXI_AWLOCK;
  wire [2:0]s_ip_axi_data_h2c_00_M_AXI_AWPROT;
  wire s_ip_axi_data_h2c_00_M_AXI_AWREADY;
  wire s_ip_axi_data_h2c_00_M_AXI_AWVALID;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_BID;
  wire s_ip_axi_data_h2c_00_M_AXI_BREADY;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_BRESP;
  wire s_ip_axi_data_h2c_00_M_AXI_BVALID;
  wire [511:0]s_ip_axi_data_h2c_00_M_AXI_RDATA;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_RID;
  wire s_ip_axi_data_h2c_00_M_AXI_RLAST;
  wire s_ip_axi_data_h2c_00_M_AXI_RREADY;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_RRESP;
  wire s_ip_axi_data_h2c_00_M_AXI_RVALID;
  wire [511:0]s_ip_axi_data_h2c_00_M_AXI_WDATA;
  wire s_ip_axi_data_h2c_00_M_AXI_WLAST;
  wire s_ip_axi_data_h2c_00_M_AXI_WREADY;
  wire [63:0]s_ip_axi_data_h2c_00_M_AXI_WSTRB;
  wire s_ip_axi_data_h2c_00_M_AXI_WVALID;
  wire [6:0]ulp_s_data_hbm_temp_00_1;
  wire [6:0]ulp_s_data_hbm_temp_01_1;
  wire [0:0]ulp_s_data_memory_calib_complete_00_1;
  wire [127:0]ulp_s_irq_cu_00_1;
  wire [0:0]ulp_s_irq_hbm_cattrip_00_1;

  assign BLP_S_AXI_CTRL_MGMT_00_1_ARADDR = BLP_S_AXI_CTRL_MGMT_00_araddr[24:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_ARPROT = BLP_S_AXI_CTRL_MGMT_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_ARVALID = BLP_S_AXI_CTRL_MGMT_00_arvalid;
  assign BLP_S_AXI_CTRL_MGMT_00_1_AWADDR = BLP_S_AXI_CTRL_MGMT_00_awaddr[24:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_AWPROT = BLP_S_AXI_CTRL_MGMT_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_AWVALID = BLP_S_AXI_CTRL_MGMT_00_awvalid;
  assign BLP_S_AXI_CTRL_MGMT_00_1_BREADY = BLP_S_AXI_CTRL_MGMT_00_bready;
  assign BLP_S_AXI_CTRL_MGMT_00_1_RREADY = BLP_S_AXI_CTRL_MGMT_00_rready;
  assign BLP_S_AXI_CTRL_MGMT_00_1_WDATA = BLP_S_AXI_CTRL_MGMT_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_WSTRB = BLP_S_AXI_CTRL_MGMT_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_MGMT_00_1_WVALID = BLP_S_AXI_CTRL_MGMT_00_wvalid;
  assign BLP_S_AXI_CTRL_MGMT_00_arready = BLP_S_AXI_CTRL_MGMT_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_MGMT_00_awready = BLP_S_AXI_CTRL_MGMT_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_MGMT_00_bresp[1:0] = BLP_S_AXI_CTRL_MGMT_00_1_BRESP;
  assign BLP_S_AXI_CTRL_MGMT_00_bvalid = BLP_S_AXI_CTRL_MGMT_00_1_BVALID;
  assign BLP_S_AXI_CTRL_MGMT_00_rdata[31:0] = BLP_S_AXI_CTRL_MGMT_00_1_RDATA;
  assign BLP_S_AXI_CTRL_MGMT_00_rresp[1:0] = BLP_S_AXI_CTRL_MGMT_00_1_RRESP;
  assign BLP_S_AXI_CTRL_MGMT_00_rvalid = BLP_S_AXI_CTRL_MGMT_00_1_RVALID;
  assign BLP_S_AXI_CTRL_MGMT_00_wready = BLP_S_AXI_CTRL_MGMT_00_1_WREADY;
  assign BLP_S_AXI_CTRL_MGMT_01_1_ARADDR = BLP_S_AXI_CTRL_MGMT_01_araddr[24:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_ARPROT = BLP_S_AXI_CTRL_MGMT_01_arprot[2:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_ARVALID = BLP_S_AXI_CTRL_MGMT_01_arvalid;
  assign BLP_S_AXI_CTRL_MGMT_01_1_AWADDR = BLP_S_AXI_CTRL_MGMT_01_awaddr[24:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_AWPROT = BLP_S_AXI_CTRL_MGMT_01_awprot[2:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_AWVALID = BLP_S_AXI_CTRL_MGMT_01_awvalid;
  assign BLP_S_AXI_CTRL_MGMT_01_1_BREADY = BLP_S_AXI_CTRL_MGMT_01_bready;
  assign BLP_S_AXI_CTRL_MGMT_01_1_RREADY = BLP_S_AXI_CTRL_MGMT_01_rready;
  assign BLP_S_AXI_CTRL_MGMT_01_1_WDATA = BLP_S_AXI_CTRL_MGMT_01_wdata[31:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_WSTRB = BLP_S_AXI_CTRL_MGMT_01_wstrb[3:0];
  assign BLP_S_AXI_CTRL_MGMT_01_1_WVALID = BLP_S_AXI_CTRL_MGMT_01_wvalid;
  assign BLP_S_AXI_CTRL_MGMT_01_arready = BLP_S_AXI_CTRL_MGMT_01_1_ARREADY;
  assign BLP_S_AXI_CTRL_MGMT_01_awready = BLP_S_AXI_CTRL_MGMT_01_1_AWREADY;
  assign BLP_S_AXI_CTRL_MGMT_01_bresp[1:0] = BLP_S_AXI_CTRL_MGMT_01_1_BRESP;
  assign BLP_S_AXI_CTRL_MGMT_01_bvalid = BLP_S_AXI_CTRL_MGMT_01_1_BVALID;
  assign BLP_S_AXI_CTRL_MGMT_01_rdata[31:0] = BLP_S_AXI_CTRL_MGMT_01_1_RDATA;
  assign BLP_S_AXI_CTRL_MGMT_01_rresp[1:0] = BLP_S_AXI_CTRL_MGMT_01_1_RRESP;
  assign BLP_S_AXI_CTRL_MGMT_01_rvalid = BLP_S_AXI_CTRL_MGMT_01_1_RVALID;
  assign BLP_S_AXI_CTRL_MGMT_01_wready = BLP_S_AXI_CTRL_MGMT_01_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_00_1_ARADDR = BLP_S_AXI_CTRL_USER_00_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARPROT = BLP_S_AXI_CTRL_USER_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARVALID = BLP_S_AXI_CTRL_USER_00_arvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_AWADDR = BLP_S_AXI_CTRL_USER_00_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWPROT = BLP_S_AXI_CTRL_USER_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWVALID = BLP_S_AXI_CTRL_USER_00_awvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_BREADY = BLP_S_AXI_CTRL_USER_00_bready;
  assign BLP_S_AXI_CTRL_USER_00_1_RREADY = BLP_S_AXI_CTRL_USER_00_rready;
  assign BLP_S_AXI_CTRL_USER_00_1_WDATA = BLP_S_AXI_CTRL_USER_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WSTRB = BLP_S_AXI_CTRL_USER_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WVALID = BLP_S_AXI_CTRL_USER_00_wvalid;
  assign BLP_S_AXI_CTRL_USER_00_arready = BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_00_awready = BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_00_bresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_00_bvalid = BLP_S_AXI_CTRL_USER_00_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_00_rdata[31:0] = BLP_S_AXI_CTRL_USER_00_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_00_rresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_00_rvalid = BLP_S_AXI_CTRL_USER_00_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_00_wready = BLP_S_AXI_CTRL_USER_00_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_01_1_ARADDR = BLP_S_AXI_CTRL_USER_01_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARPROT = BLP_S_AXI_CTRL_USER_01_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARVALID = BLP_S_AXI_CTRL_USER_01_arvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_AWADDR = BLP_S_AXI_CTRL_USER_01_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWPROT = BLP_S_AXI_CTRL_USER_01_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWVALID = BLP_S_AXI_CTRL_USER_01_awvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_BREADY = BLP_S_AXI_CTRL_USER_01_bready;
  assign BLP_S_AXI_CTRL_USER_01_1_RREADY = BLP_S_AXI_CTRL_USER_01_rready;
  assign BLP_S_AXI_CTRL_USER_01_1_WDATA = BLP_S_AXI_CTRL_USER_01_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WSTRB = BLP_S_AXI_CTRL_USER_01_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WVALID = BLP_S_AXI_CTRL_USER_01_wvalid;
  assign BLP_S_AXI_CTRL_USER_01_arready = BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_01_awready = BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_01_bresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_01_bvalid = BLP_S_AXI_CTRL_USER_01_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_01_rdata[31:0] = BLP_S_AXI_CTRL_USER_01_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_01_rresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_01_rvalid = BLP_S_AXI_CTRL_USER_01_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_01_wready = BLP_S_AXI_CTRL_USER_01_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_02_1_ARADDR = BLP_S_AXI_CTRL_USER_02_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARPROT = BLP_S_AXI_CTRL_USER_02_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARVALID = BLP_S_AXI_CTRL_USER_02_arvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_AWADDR = BLP_S_AXI_CTRL_USER_02_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWPROT = BLP_S_AXI_CTRL_USER_02_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWVALID = BLP_S_AXI_CTRL_USER_02_awvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_BREADY = BLP_S_AXI_CTRL_USER_02_bready;
  assign BLP_S_AXI_CTRL_USER_02_1_RREADY = BLP_S_AXI_CTRL_USER_02_rready;
  assign BLP_S_AXI_CTRL_USER_02_1_WDATA = BLP_S_AXI_CTRL_USER_02_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WSTRB = BLP_S_AXI_CTRL_USER_02_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WVALID = BLP_S_AXI_CTRL_USER_02_wvalid;
  assign BLP_S_AXI_CTRL_USER_02_arready = BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_02_awready = BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_02_bresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_02_bvalid = BLP_S_AXI_CTRL_USER_02_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_02_rdata[31:0] = BLP_S_AXI_CTRL_USER_02_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_02_rresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_02_rvalid = BLP_S_AXI_CTRL_USER_02_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_02_wready = BLP_S_AXI_CTRL_USER_02_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_00_1_ARADDR = BLP_S_AXI_DATA_H2C_00_araddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARBURST = BLP_S_AXI_DATA_H2C_00_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARCACHE = BLP_S_AXI_DATA_H2C_00_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARID = BLP_S_AXI_DATA_H2C_00_arid[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLEN = BLP_S_AXI_DATA_H2C_00_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLOCK = BLP_S_AXI_DATA_H2C_00_arlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARPROT = BLP_S_AXI_DATA_H2C_00_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARVALID = BLP_S_AXI_DATA_H2C_00_arvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_AWADDR = BLP_S_AXI_DATA_H2C_00_awaddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWBURST = BLP_S_AXI_DATA_H2C_00_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWCACHE = BLP_S_AXI_DATA_H2C_00_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWID = BLP_S_AXI_DATA_H2C_00_awid[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLEN = BLP_S_AXI_DATA_H2C_00_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLOCK = BLP_S_AXI_DATA_H2C_00_awlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWPROT = BLP_S_AXI_DATA_H2C_00_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWVALID = BLP_S_AXI_DATA_H2C_00_awvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_BREADY = BLP_S_AXI_DATA_H2C_00_bready;
  assign BLP_S_AXI_DATA_H2C_00_1_RREADY = BLP_S_AXI_DATA_H2C_00_rready;
  assign BLP_S_AXI_DATA_H2C_00_1_WDATA = BLP_S_AXI_DATA_H2C_00_wdata[511:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WLAST = BLP_S_AXI_DATA_H2C_00_wlast;
  assign BLP_S_AXI_DATA_H2C_00_1_WSTRB = BLP_S_AXI_DATA_H2C_00_wstrb[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WVALID = BLP_S_AXI_DATA_H2C_00_wvalid;
  assign BLP_S_AXI_DATA_H2C_00_arready = BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_00_awready = BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_00_bid[1:0] = BLP_S_AXI_DATA_H2C_00_1_BID;
  assign BLP_S_AXI_DATA_H2C_00_bresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_00_bvalid = BLP_S_AXI_DATA_H2C_00_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_00_rdata[511:0] = BLP_S_AXI_DATA_H2C_00_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_00_rid[1:0] = BLP_S_AXI_DATA_H2C_00_1_RID;
  assign BLP_S_AXI_DATA_H2C_00_rlast = BLP_S_AXI_DATA_H2C_00_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_00_rresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_00_rvalid = BLP_S_AXI_DATA_H2C_00_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_00_wready = BLP_S_AXI_DATA_H2C_00_1_WREADY;
  assign ULP_M_AXI_CTRL_MGMT_00_araddr[24:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_MGMT_00_arprot[2:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_MGMT_00_arvalid = m_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_MGMT_00_awaddr[24:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_MGMT_00_awprot[2:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_MGMT_00_awvalid = m_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_MGMT_00_bready = m_ip_axi_ctrl_mgmt_00_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_MGMT_00_rready = m_ip_axi_ctrl_mgmt_00_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_MGMT_00_wdata[31:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_MGMT_00_wstrb[3:0] = m_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_MGMT_00_wvalid = m_ip_axi_ctrl_mgmt_00_M_AXI_WVALID;
  assign ULP_M_AXI_CTRL_MGMT_01_araddr[24:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_MGMT_01_arprot[2:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_MGMT_01_arvalid = m_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_MGMT_01_awaddr[24:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_MGMT_01_awprot[2:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_MGMT_01_awvalid = m_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_MGMT_01_bready = m_ip_axi_ctrl_mgmt_01_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_MGMT_01_rready = m_ip_axi_ctrl_mgmt_01_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_MGMT_01_wdata[31:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_MGMT_01_wstrb[3:0] = m_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_MGMT_01_wvalid = m_ip_axi_ctrl_mgmt_01_M_AXI_WVALID;
  assign ULP_M_AXI_CTRL_USER_00_araddr[24:0] = m_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_USER_00_arprot[2:0] = m_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_USER_00_arvalid = m_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_USER_00_awaddr[24:0] = m_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_USER_00_awprot[2:0] = m_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_USER_00_awvalid = m_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_USER_00_bready = m_ip_axi_ctrl_user_00_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_USER_00_rready = m_ip_axi_ctrl_user_00_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_USER_00_wdata[31:0] = m_ip_axi_ctrl_user_00_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_USER_00_wstrb[3:0] = m_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_USER_00_wvalid = m_ip_axi_ctrl_user_00_M_AXI_WVALID;
  assign ULP_M_AXI_CTRL_USER_01_araddr[24:0] = m_ip_axi_ctrl_user_01_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_USER_01_arprot[2:0] = m_ip_axi_ctrl_user_01_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_USER_01_arvalid = m_ip_axi_ctrl_user_01_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_USER_01_awaddr[24:0] = m_ip_axi_ctrl_user_01_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_USER_01_awprot[2:0] = m_ip_axi_ctrl_user_01_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_USER_01_awvalid = m_ip_axi_ctrl_user_01_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_USER_01_bready = m_ip_axi_ctrl_user_01_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_USER_01_rready = m_ip_axi_ctrl_user_01_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_USER_01_wdata[31:0] = m_ip_axi_ctrl_user_01_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_USER_01_wstrb[3:0] = m_ip_axi_ctrl_user_01_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_USER_01_wvalid = m_ip_axi_ctrl_user_01_M_AXI_WVALID;
  assign ULP_M_AXI_CTRL_USER_02_araddr[24:0] = m_ip_axi_ctrl_user_02_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_USER_02_arprot[2:0] = m_ip_axi_ctrl_user_02_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_USER_02_arvalid = m_ip_axi_ctrl_user_02_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_USER_02_awaddr[24:0] = m_ip_axi_ctrl_user_02_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_USER_02_awprot[2:0] = m_ip_axi_ctrl_user_02_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_USER_02_awvalid = m_ip_axi_ctrl_user_02_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_USER_02_bready = m_ip_axi_ctrl_user_02_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_USER_02_rready = m_ip_axi_ctrl_user_02_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_USER_02_wdata[31:0] = m_ip_axi_ctrl_user_02_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_USER_02_wstrb[3:0] = m_ip_axi_ctrl_user_02_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_USER_02_wvalid = m_ip_axi_ctrl_user_02_M_AXI_WVALID;
  assign ULP_M_AXI_DATA_H2C_00_araddr[38:0] = m_ip_axi_data_h2c_00_M_AXI_ARADDR;
  assign ULP_M_AXI_DATA_H2C_00_arburst[1:0] = m_ip_axi_data_h2c_00_M_AXI_ARBURST;
  assign ULP_M_AXI_DATA_H2C_00_arcache[3:0] = m_ip_axi_data_h2c_00_M_AXI_ARCACHE;
  assign ULP_M_AXI_DATA_H2C_00_arid[1:0] = m_ip_axi_data_h2c_00_M_AXI_ARID;
  assign ULP_M_AXI_DATA_H2C_00_arlen[7:0] = m_ip_axi_data_h2c_00_M_AXI_ARLEN;
  assign ULP_M_AXI_DATA_H2C_00_arlock[0] = m_ip_axi_data_h2c_00_M_AXI_ARLOCK;
  assign ULP_M_AXI_DATA_H2C_00_arprot[2:0] = m_ip_axi_data_h2c_00_M_AXI_ARPROT;
  assign ULP_M_AXI_DATA_H2C_00_arvalid = m_ip_axi_data_h2c_00_M_AXI_ARVALID;
  assign ULP_M_AXI_DATA_H2C_00_awaddr[38:0] = m_ip_axi_data_h2c_00_M_AXI_AWADDR;
  assign ULP_M_AXI_DATA_H2C_00_awburst[1:0] = m_ip_axi_data_h2c_00_M_AXI_AWBURST;
  assign ULP_M_AXI_DATA_H2C_00_awcache[3:0] = m_ip_axi_data_h2c_00_M_AXI_AWCACHE;
  assign ULP_M_AXI_DATA_H2C_00_awid[1:0] = m_ip_axi_data_h2c_00_M_AXI_AWID;
  assign ULP_M_AXI_DATA_H2C_00_awlen[7:0] = m_ip_axi_data_h2c_00_M_AXI_AWLEN;
  assign ULP_M_AXI_DATA_H2C_00_awlock[0] = m_ip_axi_data_h2c_00_M_AXI_AWLOCK;
  assign ULP_M_AXI_DATA_H2C_00_awprot[2:0] = m_ip_axi_data_h2c_00_M_AXI_AWPROT;
  assign ULP_M_AXI_DATA_H2C_00_awvalid = m_ip_axi_data_h2c_00_M_AXI_AWVALID;
  assign ULP_M_AXI_DATA_H2C_00_bready = m_ip_axi_data_h2c_00_M_AXI_BREADY;
  assign ULP_M_AXI_DATA_H2C_00_rready = m_ip_axi_data_h2c_00_M_AXI_RREADY;
  assign ULP_M_AXI_DATA_H2C_00_wdata[511:0] = m_ip_axi_data_h2c_00_M_AXI_WDATA;
  assign ULP_M_AXI_DATA_H2C_00_wlast = m_ip_axi_data_h2c_00_M_AXI_WLAST;
  assign ULP_M_AXI_DATA_H2C_00_wstrb[63:0] = m_ip_axi_data_h2c_00_M_AXI_WSTRB;
  assign ULP_M_AXI_DATA_H2C_00_wvalid = m_ip_axi_data_h2c_00_M_AXI_WVALID;
  assign blp_m_data_hbm_temp_00[6:0] = ip_data_hbm_temp_00_q;
  assign blp_m_data_hbm_temp_01[6:0] = ip_data_hbm_temp_01_q;
  assign blp_m_data_memory_calib_complete_00[0] = ip_data_memory_calib_complete_00_q;
  assign blp_m_irq_cu_00[127:0] = ip_irq_cu_00_q;
  assign blp_m_irq_hbm_cattrip_00[0] = ip_irq_hbm_cattrip_00_q;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_freerun_ref_00_1 = blp_s_aclk_freerun_ref_00;
  assign blp_s_aclk_pcie_00_1 = blp_s_aclk_pcie_00;
  assign blp_s_aresetn_ctrl_00_1 = blp_s_aresetn_ctrl_00[0];
  assign blp_s_aresetn_pcie_00_1 = blp_s_aresetn_pcie_00[0];
  assign blp_s_data_satellite_ctrl_data_00_1 = blp_s_data_satellite_ctrl_data_00[1:0];
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY = ULP_M_AXI_CTRL_MGMT_00_arready;
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY = ULP_M_AXI_CTRL_MGMT_00_awready;
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_BRESP = ULP_M_AXI_CTRL_MGMT_00_bresp[1:0];
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_BVALID = ULP_M_AXI_CTRL_MGMT_00_bvalid;
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_RDATA = ULP_M_AXI_CTRL_MGMT_00_rdata[31:0];
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_RRESP = ULP_M_AXI_CTRL_MGMT_00_rresp[1:0];
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_RVALID = ULP_M_AXI_CTRL_MGMT_00_rvalid;
  assign m_ip_axi_ctrl_mgmt_00_M_AXI_WREADY = ULP_M_AXI_CTRL_MGMT_00_wready;
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY = ULP_M_AXI_CTRL_MGMT_01_arready;
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY = ULP_M_AXI_CTRL_MGMT_01_awready;
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_BRESP = ULP_M_AXI_CTRL_MGMT_01_bresp[1:0];
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_BVALID = ULP_M_AXI_CTRL_MGMT_01_bvalid;
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_RDATA = ULP_M_AXI_CTRL_MGMT_01_rdata[31:0];
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_RRESP = ULP_M_AXI_CTRL_MGMT_01_rresp[1:0];
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_RVALID = ULP_M_AXI_CTRL_MGMT_01_rvalid;
  assign m_ip_axi_ctrl_mgmt_01_M_AXI_WREADY = ULP_M_AXI_CTRL_MGMT_01_wready;
  assign m_ip_axi_ctrl_user_00_M_AXI_ARREADY = ULP_M_AXI_CTRL_USER_00_arready;
  assign m_ip_axi_ctrl_user_00_M_AXI_AWREADY = ULP_M_AXI_CTRL_USER_00_awready;
  assign m_ip_axi_ctrl_user_00_M_AXI_BRESP = ULP_M_AXI_CTRL_USER_00_bresp[1:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_BVALID = ULP_M_AXI_CTRL_USER_00_bvalid;
  assign m_ip_axi_ctrl_user_00_M_AXI_RDATA = ULP_M_AXI_CTRL_USER_00_rdata[31:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_RRESP = ULP_M_AXI_CTRL_USER_00_rresp[1:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_RVALID = ULP_M_AXI_CTRL_USER_00_rvalid;
  assign m_ip_axi_ctrl_user_00_M_AXI_WREADY = ULP_M_AXI_CTRL_USER_00_wready;
  assign m_ip_axi_ctrl_user_01_M_AXI_ARREADY = ULP_M_AXI_CTRL_USER_01_arready;
  assign m_ip_axi_ctrl_user_01_M_AXI_AWREADY = ULP_M_AXI_CTRL_USER_01_awready;
  assign m_ip_axi_ctrl_user_01_M_AXI_BRESP = ULP_M_AXI_CTRL_USER_01_bresp[1:0];
  assign m_ip_axi_ctrl_user_01_M_AXI_BVALID = ULP_M_AXI_CTRL_USER_01_bvalid;
  assign m_ip_axi_ctrl_user_01_M_AXI_RDATA = ULP_M_AXI_CTRL_USER_01_rdata[31:0];
  assign m_ip_axi_ctrl_user_01_M_AXI_RRESP = ULP_M_AXI_CTRL_USER_01_rresp[1:0];
  assign m_ip_axi_ctrl_user_01_M_AXI_RVALID = ULP_M_AXI_CTRL_USER_01_rvalid;
  assign m_ip_axi_ctrl_user_01_M_AXI_WREADY = ULP_M_AXI_CTRL_USER_01_wready;
  assign m_ip_axi_ctrl_user_02_M_AXI_ARREADY = ULP_M_AXI_CTRL_USER_02_arready;
  assign m_ip_axi_ctrl_user_02_M_AXI_AWREADY = ULP_M_AXI_CTRL_USER_02_awready;
  assign m_ip_axi_ctrl_user_02_M_AXI_BRESP = ULP_M_AXI_CTRL_USER_02_bresp[1:0];
  assign m_ip_axi_ctrl_user_02_M_AXI_BVALID = ULP_M_AXI_CTRL_USER_02_bvalid;
  assign m_ip_axi_ctrl_user_02_M_AXI_RDATA = ULP_M_AXI_CTRL_USER_02_rdata[31:0];
  assign m_ip_axi_ctrl_user_02_M_AXI_RRESP = ULP_M_AXI_CTRL_USER_02_rresp[1:0];
  assign m_ip_axi_ctrl_user_02_M_AXI_RVALID = ULP_M_AXI_CTRL_USER_02_rvalid;
  assign m_ip_axi_ctrl_user_02_M_AXI_WREADY = ULP_M_AXI_CTRL_USER_02_wready;
  assign m_ip_axi_data_h2c_00_M_AXI_ARREADY = ULP_M_AXI_DATA_H2C_00_arready;
  assign m_ip_axi_data_h2c_00_M_AXI_AWREADY = ULP_M_AXI_DATA_H2C_00_awready;
  assign m_ip_axi_data_h2c_00_M_AXI_BID = ULP_M_AXI_DATA_H2C_00_bid[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_BRESP = ULP_M_AXI_DATA_H2C_00_bresp[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_BVALID = ULP_M_AXI_DATA_H2C_00_bvalid;
  assign m_ip_axi_data_h2c_00_M_AXI_RDATA = ULP_M_AXI_DATA_H2C_00_rdata[511:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RID = ULP_M_AXI_DATA_H2C_00_rid[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RLAST = ULP_M_AXI_DATA_H2C_00_rlast;
  assign m_ip_axi_data_h2c_00_M_AXI_RRESP = ULP_M_AXI_DATA_H2C_00_rresp[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RVALID = ULP_M_AXI_DATA_H2C_00_rvalid;
  assign m_ip_axi_data_h2c_00_M_AXI_WREADY = ULP_M_AXI_DATA_H2C_00_wready;
  assign ulp_m_aclk_ctrl_00 = ip_aclk_ctrl_00_clk_out;
  assign ulp_m_aclk_freerun_ref_00 = ip_aclk_freerun_ref_00_clk_out;
  assign ulp_m_aclk_pcie_00 = ip_aclk_pcie_00_clk_out;
  assign ulp_m_aresetn_ctrl_00[0] = ip_aresetn_ctrl_00_q;
  assign ulp_m_aresetn_pcie_00[0] = ip_aresetn_pcie_00_q;
  assign ulp_m_data_satellite_ctrl_data_00[1:0] = ip_data_satellite_ctrl_data_00_q;
  assign ulp_s_data_hbm_temp_00_1 = ulp_s_data_hbm_temp_00[6:0];
  assign ulp_s_data_hbm_temp_01_1 = ulp_s_data_hbm_temp_01[6:0];
  assign ulp_s_data_memory_calib_complete_00_1 = ulp_s_data_memory_calib_complete_00[0];
  assign ulp_s_irq_cu_00_1 = ulp_s_irq_cu_00[127:0];
  assign ulp_s_irq_hbm_cattrip_00_1 = ulp_s_irq_hbm_cattrip_00[0];
  bd_5941_ip_aclk_ctrl_00_0 ip_aclk_ctrl_00
       (.clk_in(blp_s_aclk_ctrl_00_1),
        .clk_out(ip_aclk_ctrl_00_clk_out));
  bd_5941_ip_aclk_freerun_ref_00_0 ip_aclk_freerun_ref_00
       (.clk_in(blp_s_aclk_freerun_ref_00_1),
        .clk_out(ip_aclk_freerun_ref_00_clk_out));
  bd_5941_ip_aclk_pcie_00_0 ip_aclk_pcie_00
       (.clk_in(blp_s_aclk_pcie_00_1),
        .clk_out(ip_aclk_pcie_00_clk_out));
  bd_5941_ip_aresetn_ctrl_00_0 ip_aresetn_ctrl_00
       (.clk(blp_s_aclk_ctrl_00_1),
        .d(blp_s_aresetn_ctrl_00_1),
        .q(ip_aresetn_ctrl_00_q),
        .resetn(1'b1));
  bd_5941_ip_aresetn_pcie_00_0 ip_aresetn_pcie_00
       (.clk(blp_s_aclk_pcie_00_1),
        .d(blp_s_aresetn_pcie_00_1),
        .q(ip_aresetn_pcie_00_q),
        .resetn(1'b1));
  bd_5941_ip_data_hbm_temp_00_0 ip_data_hbm_temp_00
       (.clk(ip_aclk_ctrl_00_clk_out),
        .d(ulp_s_data_hbm_temp_00_1),
        .q(ip_data_hbm_temp_00_q),
        .resetn(ip_aresetn_ctrl_00_q));
  bd_5941_ip_data_hbm_temp_01_0 ip_data_hbm_temp_01
       (.clk(ip_aclk_ctrl_00_clk_out),
        .d(ulp_s_data_hbm_temp_01_1),
        .q(ip_data_hbm_temp_01_q),
        .resetn(ip_aresetn_ctrl_00_q));
  bd_5941_ip_data_memory_calib_complete_00_0 ip_data_memory_calib_complete_00
       (.clk(ip_aclk_ctrl_00_clk_out),
        .d(ulp_s_data_memory_calib_complete_00_1),
        .q(ip_data_memory_calib_complete_00_q),
        .resetn(ip_aresetn_ctrl_00_q));
  bd_5941_ip_data_satellite_ctrl_data_00_0 ip_data_satellite_ctrl_data_00
       (.clk(blp_s_aclk_ctrl_00_1),
        .d(blp_s_data_satellite_ctrl_data_00_1),
        .q(ip_data_satellite_ctrl_data_00_q),
        .resetn(blp_s_aresetn_ctrl_00_1));
  bd_5941_ip_irq_cu_00_0 ip_irq_cu_00
       (.clk(ip_aclk_pcie_00_clk_out),
        .d(ulp_s_irq_cu_00_1),
        .q(ip_irq_cu_00_q),
        .resetn(ip_aresetn_pcie_00_q));
  bd_5941_ip_irq_hbm_cattrip_00_0 ip_irq_hbm_cattrip_00
       (.clk(ip_aclk_ctrl_00_clk_out),
        .d(ulp_s_irq_hbm_cattrip_00_1),
        .q(ip_irq_hbm_cattrip_00_q),
        .resetn(ip_aresetn_ctrl_00_q));
  bd_5941_m_ip_axi_ctrl_mgmt_00_0 m_ip_axi_ctrl_mgmt_00
       (.aclk(ip_aclk_ctrl_00_clk_out),
        .aresetn(ip_aresetn_ctrl_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_mgmt_00_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_mgmt_00_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_mgmt_00_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_mgmt_00_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_mgmt_00_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_mgmt_00_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_mgmt_00_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_mgmt_00_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_mgmt_00_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_mgmt_00_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_mgmt_00_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_mgmt_00_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_mgmt_00_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_mgmt_00_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_mgmt_00_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_mgmt_00_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_mgmt_00_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_WVALID));
  bd_5941_m_ip_axi_ctrl_mgmt_01_0 m_ip_axi_ctrl_mgmt_01
       (.aclk(ip_aclk_ctrl_00_clk_out),
        .aresetn(ip_aresetn_ctrl_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_mgmt_01_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_mgmt_01_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_mgmt_01_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_mgmt_01_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_mgmt_01_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_mgmt_01_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_mgmt_01_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_mgmt_01_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_mgmt_01_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_mgmt_01_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_mgmt_01_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_mgmt_01_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_mgmt_01_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_mgmt_01_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_mgmt_01_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_mgmt_01_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_mgmt_01_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_WVALID));
  bd_5941_m_ip_axi_ctrl_user_00_0 m_ip_axi_ctrl_user_00
       (.aclk(ip_aclk_ctrl_00_clk_out),
        .aresetn(ip_aresetn_ctrl_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_user_00_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_user_00_M_AXI_WVALID));
  bd_5941_m_ip_axi_ctrl_user_01_0 m_ip_axi_ctrl_user_01
       (.aclk(ip_aclk_ctrl_00_clk_out),
        .aresetn(ip_aresetn_ctrl_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_user_01_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_user_01_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_user_01_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_user_01_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_user_01_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_user_01_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_user_01_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_user_01_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_user_01_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_user_01_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_user_01_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_user_01_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_user_01_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_user_01_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_user_01_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_user_01_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_user_01_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_user_01_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_user_01_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_user_01_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_user_01_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_user_01_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_user_01_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_user_01_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_user_01_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_user_01_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_user_01_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_user_01_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_user_01_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_user_01_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_user_01_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_user_01_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_user_01_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_user_01_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_user_01_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_user_01_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_user_01_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_user_01_M_AXI_WVALID));
  bd_5941_m_ip_axi_ctrl_user_02_0 m_ip_axi_ctrl_user_02
       (.aclk(ip_aclk_ctrl_00_clk_out),
        .aresetn(ip_aresetn_ctrl_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_user_02_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_user_02_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_user_02_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_user_02_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_user_02_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_user_02_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_user_02_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_user_02_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_user_02_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_user_02_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_user_02_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_user_02_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_user_02_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_user_02_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_user_02_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_user_02_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_user_02_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_user_02_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_user_02_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_user_02_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_user_02_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_user_02_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_user_02_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_user_02_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_user_02_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_user_02_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_user_02_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_user_02_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_user_02_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_user_02_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_user_02_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_user_02_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_user_02_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_user_02_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_user_02_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_user_02_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_user_02_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_user_02_M_AXI_WVALID));
  bd_5941_m_ip_axi_data_h2c_00_0 m_ip_axi_data_h2c_00
       (.aclk(ip_aclk_pcie_00_clk_out),
        .aresetn(ip_aresetn_pcie_00_q),
        .m_axi_araddr(m_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .m_axi_arburst(m_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .m_axi_arcache(m_ip_axi_data_h2c_00_M_AXI_ARCACHE),
        .m_axi_arid(m_ip_axi_data_h2c_00_M_AXI_ARID),
        .m_axi_arlen(m_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .m_axi_arlock(m_ip_axi_data_h2c_00_M_AXI_ARLOCK),
        .m_axi_arprot(m_ip_axi_data_h2c_00_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .m_axi_awburst(m_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .m_axi_awcache(m_ip_axi_data_h2c_00_M_AXI_AWCACHE),
        .m_axi_awid(m_ip_axi_data_h2c_00_M_AXI_AWID),
        .m_axi_awlen(m_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .m_axi_awlock(m_ip_axi_data_h2c_00_M_AXI_AWLOCK),
        .m_axi_awprot(m_ip_axi_data_h2c_00_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .m_axi_bid(m_ip_axi_data_h2c_00_M_AXI_BID),
        .m_axi_bready(m_ip_axi_data_h2c_00_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_data_h2c_00_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_data_h2c_00_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_data_h2c_00_M_AXI_RDATA),
        .m_axi_rid(m_ip_axi_data_h2c_00_M_AXI_RID),
        .m_axi_rlast(m_ip_axi_data_h2c_00_M_AXI_RLAST),
        .m_axi_rready(m_ip_axi_data_h2c_00_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_data_h2c_00_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_data_h2c_00_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_data_h2c_00_M_AXI_WDATA),
        .m_axi_wlast(m_ip_axi_data_h2c_00_M_AXI_WLAST),
        .m_axi_wready(m_ip_axi_data_h2c_00_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_data_h2c_00_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .s_axi_arburst(s_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .s_axi_arcache(s_ip_axi_data_h2c_00_M_AXI_ARCACHE),
        .s_axi_arid(s_ip_axi_data_h2c_00_M_AXI_ARID),
        .s_axi_arlen(s_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .s_axi_arlock(s_ip_axi_data_h2c_00_M_AXI_ARLOCK),
        .s_axi_arprot(s_ip_axi_data_h2c_00_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .s_axi_awburst(s_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .s_axi_awcache(s_ip_axi_data_h2c_00_M_AXI_AWCACHE),
        .s_axi_awid(s_ip_axi_data_h2c_00_M_AXI_AWID),
        .s_axi_awlen(s_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .s_axi_awlock(s_ip_axi_data_h2c_00_M_AXI_AWLOCK),
        .s_axi_awprot(s_ip_axi_data_h2c_00_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .s_axi_bid(s_ip_axi_data_h2c_00_M_AXI_BID),
        .s_axi_bready(s_ip_axi_data_h2c_00_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_data_h2c_00_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_data_h2c_00_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_data_h2c_00_M_AXI_RDATA),
        .s_axi_rid(s_ip_axi_data_h2c_00_M_AXI_RID),
        .s_axi_rlast(s_ip_axi_data_h2c_00_M_AXI_RLAST),
        .s_axi_rready(s_ip_axi_data_h2c_00_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_data_h2c_00_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_data_h2c_00_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_data_h2c_00_M_AXI_WDATA),
        .s_axi_wlast(s_ip_axi_data_h2c_00_M_AXI_WLAST),
        .s_axi_wready(s_ip_axi_data_h2c_00_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_data_h2c_00_M_AXI_WVALID));
  bd_5941_s_ip_axi_ctrl_mgmt_00_0 s_ip_axi_ctrl_mgmt_00
       (.aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(blp_s_aresetn_ctrl_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_mgmt_00_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_mgmt_00_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_mgmt_00_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_mgmt_00_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_mgmt_00_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_mgmt_00_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_mgmt_00_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_mgmt_00_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_mgmt_00_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_mgmt_00_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_mgmt_00_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_mgmt_00_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_mgmt_00_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_mgmt_00_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_mgmt_00_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_MGMT_00_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_MGMT_00_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_MGMT_00_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_MGMT_00_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_MGMT_00_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_MGMT_00_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_MGMT_00_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_MGMT_00_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_MGMT_00_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_MGMT_00_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_MGMT_00_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_MGMT_00_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_MGMT_00_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_MGMT_00_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_MGMT_00_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_MGMT_00_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_MGMT_00_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_MGMT_00_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_MGMT_00_1_WVALID));
  bd_5941_s_ip_axi_ctrl_mgmt_01_0 s_ip_axi_ctrl_mgmt_01
       (.aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(blp_s_aresetn_ctrl_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_mgmt_01_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_mgmt_01_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_mgmt_01_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_mgmt_01_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_mgmt_01_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_mgmt_01_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_mgmt_01_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_mgmt_01_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_mgmt_01_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_mgmt_01_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_mgmt_01_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_mgmt_01_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_mgmt_01_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_mgmt_01_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_mgmt_01_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_MGMT_01_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_MGMT_01_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_MGMT_01_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_MGMT_01_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_MGMT_01_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_MGMT_01_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_MGMT_01_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_MGMT_01_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_MGMT_01_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_MGMT_01_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_MGMT_01_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_MGMT_01_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_MGMT_01_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_MGMT_01_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_MGMT_01_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_MGMT_01_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_MGMT_01_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_MGMT_01_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_MGMT_01_1_WVALID));
  bd_5941_s_ip_axi_ctrl_user_00_0 s_ip_axi_ctrl_user_00
       (.aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(blp_s_aresetn_ctrl_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_user_00_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID));
  bd_5941_s_ip_axi_ctrl_user_01_0 s_ip_axi_ctrl_user_01
       (.aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(blp_s_aresetn_ctrl_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_user_01_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_user_01_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_user_01_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_user_01_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_user_01_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_user_01_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_user_01_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_user_01_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_user_01_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_user_01_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_user_01_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_user_01_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_user_01_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_user_01_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_user_01_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_user_01_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_user_01_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_user_01_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_user_01_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_USER_01_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_USER_01_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_USER_01_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_USER_01_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_USER_01_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_USER_01_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_USER_01_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_USER_01_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_USER_01_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_USER_01_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_USER_01_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_USER_01_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_USER_01_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_USER_01_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_USER_01_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_USER_01_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_USER_01_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_USER_01_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_USER_01_1_WVALID));
  bd_5941_s_ip_axi_ctrl_user_02_0 s_ip_axi_ctrl_user_02
       (.aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(blp_s_aresetn_ctrl_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_user_02_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_user_02_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_user_02_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_user_02_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_user_02_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_user_02_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_user_02_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_user_02_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_user_02_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_user_02_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_user_02_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_user_02_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_user_02_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_user_02_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_user_02_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_user_02_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_user_02_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_user_02_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_user_02_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_USER_02_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_USER_02_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_USER_02_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_USER_02_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_USER_02_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_USER_02_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_USER_02_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_USER_02_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_USER_02_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_USER_02_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_USER_02_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_USER_02_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_USER_02_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_USER_02_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_USER_02_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_USER_02_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_USER_02_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_USER_02_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_USER_02_1_WVALID));
  bd_5941_s_ip_axi_data_h2c_00_0 s_ip_axi_data_h2c_00
       (.aclk(blp_s_aclk_pcie_00_1),
        .aresetn(blp_s_aresetn_pcie_00_1),
        .m_axi_araddr(s_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .m_axi_arburst(s_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .m_axi_arcache(s_ip_axi_data_h2c_00_M_AXI_ARCACHE),
        .m_axi_arid(s_ip_axi_data_h2c_00_M_AXI_ARID),
        .m_axi_arlen(s_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .m_axi_arlock(s_ip_axi_data_h2c_00_M_AXI_ARLOCK),
        .m_axi_arprot(s_ip_axi_data_h2c_00_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .m_axi_awburst(s_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .m_axi_awcache(s_ip_axi_data_h2c_00_M_AXI_AWCACHE),
        .m_axi_awid(s_ip_axi_data_h2c_00_M_AXI_AWID),
        .m_axi_awlen(s_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .m_axi_awlock(s_ip_axi_data_h2c_00_M_AXI_AWLOCK),
        .m_axi_awprot(s_ip_axi_data_h2c_00_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .m_axi_bid(s_ip_axi_data_h2c_00_M_AXI_BID),
        .m_axi_bready(s_ip_axi_data_h2c_00_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_data_h2c_00_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_data_h2c_00_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_data_h2c_00_M_AXI_RDATA),
        .m_axi_rid(s_ip_axi_data_h2c_00_M_AXI_RID),
        .m_axi_rlast(s_ip_axi_data_h2c_00_M_AXI_RLAST),
        .m_axi_rready(s_ip_axi_data_h2c_00_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_data_h2c_00_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_data_h2c_00_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_data_h2c_00_M_AXI_WDATA),
        .m_axi_wlast(s_ip_axi_data_h2c_00_M_AXI_WLAST),
        .m_axi_wready(s_ip_axi_data_h2c_00_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_data_h2c_00_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_DATA_H2C_00_1_ARADDR),
        .s_axi_arburst(BLP_S_AXI_DATA_H2C_00_1_ARBURST),
        .s_axi_arcache(BLP_S_AXI_DATA_H2C_00_1_ARCACHE),
        .s_axi_arid(BLP_S_AXI_DATA_H2C_00_1_ARID),
        .s_axi_arlen(BLP_S_AXI_DATA_H2C_00_1_ARLEN),
        .s_axi_arlock(BLP_S_AXI_DATA_H2C_00_1_ARLOCK),
        .s_axi_arprot(BLP_S_AXI_DATA_H2C_00_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_DATA_H2C_00_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_DATA_H2C_00_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_DATA_H2C_00_1_AWADDR),
        .s_axi_awburst(BLP_S_AXI_DATA_H2C_00_1_AWBURST),
        .s_axi_awcache(BLP_S_AXI_DATA_H2C_00_1_AWCACHE),
        .s_axi_awid(BLP_S_AXI_DATA_H2C_00_1_AWID),
        .s_axi_awlen(BLP_S_AXI_DATA_H2C_00_1_AWLEN),
        .s_axi_awlock(BLP_S_AXI_DATA_H2C_00_1_AWLOCK),
        .s_axi_awprot(BLP_S_AXI_DATA_H2C_00_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_DATA_H2C_00_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_DATA_H2C_00_1_AWVALID),
        .s_axi_bid(BLP_S_AXI_DATA_H2C_00_1_BID),
        .s_axi_bready(BLP_S_AXI_DATA_H2C_00_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_DATA_H2C_00_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_DATA_H2C_00_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_DATA_H2C_00_1_RDATA),
        .s_axi_rid(BLP_S_AXI_DATA_H2C_00_1_RID),
        .s_axi_rlast(BLP_S_AXI_DATA_H2C_00_1_RLAST),
        .s_axi_rready(BLP_S_AXI_DATA_H2C_00_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_DATA_H2C_00_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_DATA_H2C_00_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_DATA_H2C_00_1_WDATA),
        .s_axi_wlast(BLP_S_AXI_DATA_H2C_00_1_WLAST),
        .s_axi_wready(BLP_S_AXI_DATA_H2C_00_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_DATA_H2C_00_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_DATA_H2C_00_1_WVALID));
endmodule
