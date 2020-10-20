//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_22c0.bd
//Design : bd_22c0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_22c0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_22c0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=62,numReposBlks=47,numNonXlnxBlks=0,numHierBlks=15,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ulp_ulp_ucs_0.hwdef" *) 
module bd_22c0
   (aclk_ctrl,
    aclk_pcie,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_kernel2_slr0,
    aresetn_kernel2_slr1,
    aresetn_kernel_slr0,
    aresetn_kernel_slr1,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    clk_kernel,
    clk_kernel2,
    freerun_refclk,
    hbm_aclk,
    hbm_aresetn,
    hbm_refclk,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    shutdown_clocks);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_PCIE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_PCIE, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel2_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel2_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_KERNEL, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, CLK_DOMAIN cd_kernel_00, FREQ_HZ 300000000, INSERT_VIP 0, PHASE 0.0" *) output clk_kernel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_KERNEL2, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, CLK_DOMAIN cd_kernel_01, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0.0" *) output clk_kernel2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FREERUN_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FREERUN_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) input freerun_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_RESET hbm_aresetn, CLK_DOMAIN cd_hbm, FREQ_HZ 450000000, INSERT_VIP 0, PHASE 0.0" *) output hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]hbm_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) input hbm_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [15:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [15:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire aclk_ctrl;
  wire aclk_pcie;
  wire [15:0]adder_check_gpio_sum;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_freerun_refclk;
  wire [0:0]aresetn_kernel;
  wire [0:0]aresetn_kernel2;
  wire aresetn_kernel2_async;
  wire [0:0]aresetn_kernel2_slr0;
  wire [0:0]aresetn_kernel2_slr1;
  wire aresetn_kernel_async;
  wire [0:0]aresetn_kernel_slr0;
  wire [0:0]aresetn_kernel_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [15:0]axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID;
  wire [1:0]axi_ic_ctrl_mgmt_0_M01_AXI_BRESP;
  wire [31:0]axi_ic_ctrl_mgmt_0_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M03_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M04_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M04_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M04_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M04_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M05_AXI_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M05_AXI_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M05_AXI_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M05_AXI_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_0_M05_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M06_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M06_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M06_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M06_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M03_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_WVALID;
  wire clk_hbm_adapt_in;
  wire clk_hbm_locked;
  wire clk_kernel;
  wire clk_kernel2;
  wire clk_kernel2_cont;
  wire clk_kernel2_locked;
  wire clk_kernel2_unbuffered;
  wire clk_kernel_cont;
  wire clk_kernel_locked;
  wire clk_kernel_unbuffered;
  wire [13:0]\^clock_throttling_avg ;
  wire clock_throttling_kernel2_clk_out;
  wire clock_throttling_kernel2_clk_out_cont;
  wire clock_throttling_kernel_clk_out;
  wire clock_throttling_kernel_clk_out_cont;
  wire freerun_refclk;
  wire gapping_demand_bready;
  wire gapping_demand_bvalid;
  wire [0:0]\^gapping_demand_toggle ;
  wire [0:0]\^gapping_demand_update ;
  wire [14:0]\^gnd15 ;
  wire [1:0]\^gnd2 ;
  wire [7:0]\^gpio_gapping_demand ;
  wire [31:0]gpio_ucs_control_status_gpio2;
  wire [31:0]gpio_ucs_status_concat_dout;
  wire hbm_aclk;
  wire [0:0]hbm_aresetn;
  wire [0:0]hbm_aresetn_int;
  wire hbm_refclk;
  wire [0:0]or_shutdown_clocks_res;
  wire reduce_check_gpio_res;
  wire [15:0]s_axi_ctrl_mgmt_ARADDR;
  wire [2:0]s_axi_ctrl_mgmt_ARPROT;
  wire s_axi_ctrl_mgmt_ARREADY;
  wire s_axi_ctrl_mgmt_ARVALID;
  wire [15:0]s_axi_ctrl_mgmt_AWADDR;
  wire [2:0]s_axi_ctrl_mgmt_AWPROT;
  wire s_axi_ctrl_mgmt_AWREADY;
  wire s_axi_ctrl_mgmt_AWVALID;
  wire s_axi_ctrl_mgmt_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_BRESP;
  wire s_axi_ctrl_mgmt_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_RDATA;
  wire s_axi_ctrl_mgmt_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_RRESP;
  wire s_axi_ctrl_mgmt_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_WDATA;
  wire s_axi_ctrl_mgmt_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_WSTRB;
  wire s_axi_ctrl_mgmt_WVALID;
  wire [15:0]s_axi_ctrl_mgmt_vip_ARADDR;
  wire [2:0]s_axi_ctrl_mgmt_vip_ARPROT;
  wire [0:0]s_axi_ctrl_mgmt_vip_ARREADY;
  wire s_axi_ctrl_mgmt_vip_ARVALID;
  wire [15:0]s_axi_ctrl_mgmt_vip_AWADDR;
  wire [2:0]s_axi_ctrl_mgmt_vip_AWPROT;
  wire [0:0]s_axi_ctrl_mgmt_vip_AWREADY;
  wire s_axi_ctrl_mgmt_vip_AWVALID;
  wire s_axi_ctrl_mgmt_vip_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_vip_BRESP;
  wire [0:0]s_axi_ctrl_mgmt_vip_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_vip_RDATA;
  wire s_axi_ctrl_mgmt_vip_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_vip_RRESP;
  wire [0:0]s_axi_ctrl_mgmt_vip_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_vip_WDATA;
  wire [0:0]s_axi_ctrl_mgmt_vip_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_vip_WSTRB;
  wire s_axi_ctrl_mgmt_vip_WVALID;
  wire shutdown_clocks;
  wire [0:0]shutdown_clocks_latched;
  wire [15:0]slice_check_gpio_dout;
  wire [0:0]startup_done;
  wire [0:0]\^vcc ;

  assign s_axi_ctrl_mgmt_ARADDR = s_axi_ctrl_mgmt_araddr[15:0];
  assign s_axi_ctrl_mgmt_ARPROT = s_axi_ctrl_mgmt_arprot[2:0];
  assign s_axi_ctrl_mgmt_ARVALID = s_axi_ctrl_mgmt_arvalid;
  assign s_axi_ctrl_mgmt_AWADDR = s_axi_ctrl_mgmt_awaddr[15:0];
  assign s_axi_ctrl_mgmt_AWPROT = s_axi_ctrl_mgmt_awprot[2:0];
  assign s_axi_ctrl_mgmt_AWVALID = s_axi_ctrl_mgmt_awvalid;
  assign s_axi_ctrl_mgmt_BREADY = s_axi_ctrl_mgmt_bready;
  assign s_axi_ctrl_mgmt_RREADY = s_axi_ctrl_mgmt_rready;
  assign s_axi_ctrl_mgmt_WDATA = s_axi_ctrl_mgmt_wdata[31:0];
  assign s_axi_ctrl_mgmt_WSTRB = s_axi_ctrl_mgmt_wstrb[3:0];
  assign s_axi_ctrl_mgmt_WVALID = s_axi_ctrl_mgmt_wvalid;
  assign s_axi_ctrl_mgmt_arready = s_axi_ctrl_mgmt_ARREADY;
  assign s_axi_ctrl_mgmt_awready = s_axi_ctrl_mgmt_AWREADY;
  assign s_axi_ctrl_mgmt_bresp[1:0] = s_axi_ctrl_mgmt_BRESP;
  assign s_axi_ctrl_mgmt_bvalid = s_axi_ctrl_mgmt_BVALID;
  assign s_axi_ctrl_mgmt_rdata[31:0] = s_axi_ctrl_mgmt_RDATA;
  assign s_axi_ctrl_mgmt_rresp[1:0] = s_axi_ctrl_mgmt_RRESP;
  assign s_axi_ctrl_mgmt_rvalid = s_axi_ctrl_mgmt_RVALID;
  assign s_axi_ctrl_mgmt_wready = s_axi_ctrl_mgmt_WREADY;
  bd_22c0_adder_check_gpio_0 adder_check_gpio
       (.A(slice_check_gpio_dout),
        .S(adder_check_gpio_sum));
  bd_22c0_axi_ic_ctrl_mgmt_0_0 axi_ic_ctrl_mgmt_0
       (.ACLK(aclk_ctrl),
        .ARESETN(aresetn_ctrl),
        .M00_ACLK(aclk_ctrl),
        .M00_ARESETN(aresetn_ctrl),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_0_M00_AXI_WVALID),
        .M01_ACLK(aclk_ctrl),
        .M01_ARESETN(aresetn_ctrl),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID),
        .M01_AXI_bready(gapping_demand_bready),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(gapping_demand_bvalid),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_0_M01_AXI_WVALID),
        .M02_ACLK(aclk_ctrl),
        .M02_ARESETN(aresetn_ctrl),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_0_M02_AXI_WVALID),
        .M03_ACLK(aclk_ctrl),
        .M03_ARESETN(aresetn_ctrl),
        .M03_AXI_araddr(axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_ctrl_mgmt_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_ctrl_mgmt_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_0_M03_AXI_WVALID),
        .M04_ACLK(aclk_ctrl),
        .M04_ARESETN(aresetn_ctrl),
        .M04_AXI_araddr(axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_ctrl_mgmt_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_ctrl_mgmt_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_ctrl_mgmt_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_ctrl_mgmt_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_ctrl_mgmt_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_ctrl_mgmt_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_ctrl_mgmt_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_ctrl_mgmt_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_ctrl_mgmt_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_ctrl_mgmt_0_M04_AXI_WVALID),
        .M05_ACLK(aclk_ctrl),
        .M05_ARESETN(aresetn_ctrl),
        .M05_AXI_araddr(axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_ic_ctrl_mgmt_0_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_ic_ctrl_mgmt_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_ic_ctrl_mgmt_0_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_ic_ctrl_mgmt_0_M05_AXI_RDATA),
        .M05_AXI_rready(axi_ic_ctrl_mgmt_0_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_ic_ctrl_mgmt_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_ic_ctrl_mgmt_0_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_ic_ctrl_mgmt_0_M05_AXI_WDATA),
        .M05_AXI_wready(axi_ic_ctrl_mgmt_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_ic_ctrl_mgmt_0_M05_AXI_WVALID),
        .M06_ACLK(aclk_ctrl),
        .M06_ARESETN(aresetn_ctrl),
        .M06_AXI_araddr(axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_ic_ctrl_mgmt_0_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_ic_ctrl_mgmt_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_ic_ctrl_mgmt_0_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_ic_ctrl_mgmt_0_M06_AXI_RDATA),
        .M06_AXI_rready(axi_ic_ctrl_mgmt_0_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_ic_ctrl_mgmt_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_ic_ctrl_mgmt_0_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_ic_ctrl_mgmt_0_M06_AXI_WDATA),
        .M06_AXI_wready(axi_ic_ctrl_mgmt_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_ic_ctrl_mgmt_0_M06_AXI_WVALID),
        .S00_ACLK(aclk_ctrl),
        .S00_ARESETN(aresetn_ctrl),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_vip_ARADDR),
        .S00_AXI_arprot(s_axi_ctrl_mgmt_vip_ARPROT),
        .S00_AXI_arready(s_axi_ctrl_mgmt_vip_ARREADY),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_vip_ARVALID),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_vip_AWADDR),
        .S00_AXI_awprot(s_axi_ctrl_mgmt_vip_AWPROT),
        .S00_AXI_awready(s_axi_ctrl_mgmt_vip_AWREADY),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_vip_AWVALID),
        .S00_AXI_bready(s_axi_ctrl_mgmt_vip_BREADY),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_vip_BRESP),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_vip_BVALID),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_vip_RDATA),
        .S00_AXI_rready(s_axi_ctrl_mgmt_vip_RREADY),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_vip_RRESP),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_vip_RVALID),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_vip_WDATA),
        .S00_AXI_wready(s_axi_ctrl_mgmt_vip_WREADY),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_vip_WSTRB),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_vip_WVALID));
  bd_22c0_axi_ic_ctrl_mgmt_1_0 axi_ic_ctrl_mgmt_1
       (.ACLK(freerun_refclk),
        .ARESETN(aresetn_freerun_refclk),
        .M00_ACLK(freerun_refclk),
        .M00_ARESETN(aresetn_freerun_refclk),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_1_M00_AXI_WVALID),
        .M01_ACLK(freerun_refclk),
        .M01_ARESETN(aresetn_freerun_refclk),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_1_M01_AXI_WVALID),
        .M02_ACLK(freerun_refclk),
        .M02_ARESETN(aresetn_freerun_refclk),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_1_M02_AXI_WVALID),
        .M03_ACLK(freerun_refclk),
        .M03_ARESETN(aresetn_freerun_refclk),
        .M03_AXI_araddr(axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_ctrl_mgmt_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_ctrl_mgmt_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_1_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_1_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_1_M03_AXI_WVALID),
        .S00_ACLK(aclk_ctrl),
        .S00_ARESETN(aresetn_ctrl),
        .S00_AXI_araddr(axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR),
        .S00_AXI_arprot(axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT),
        .S00_AXI_arready(axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY),
        .S00_AXI_arvalid(axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID),
        .S00_AXI_awaddr(axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR),
        .S00_AXI_awprot(axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT),
        .S00_AXI_awready(axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY),
        .S00_AXI_awvalid(axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID),
        .S00_AXI_bready(axi_ic_ctrl_mgmt_0_M05_AXI_BREADY),
        .S00_AXI_bresp(axi_ic_ctrl_mgmt_0_M05_AXI_BRESP),
        .S00_AXI_bvalid(axi_ic_ctrl_mgmt_0_M05_AXI_BVALID),
        .S00_AXI_rdata(axi_ic_ctrl_mgmt_0_M05_AXI_RDATA),
        .S00_AXI_rready(axi_ic_ctrl_mgmt_0_M05_AXI_RREADY),
        .S00_AXI_rresp(axi_ic_ctrl_mgmt_0_M05_AXI_RRESP),
        .S00_AXI_rvalid(axi_ic_ctrl_mgmt_0_M05_AXI_RVALID),
        .S00_AXI_wdata(axi_ic_ctrl_mgmt_0_M05_AXI_WDATA),
        .S00_AXI_wready(axi_ic_ctrl_mgmt_0_M05_AXI_WREADY),
        .S00_AXI_wstrb(axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB),
        .S00_AXI_wvalid(axi_ic_ctrl_mgmt_0_M05_AXI_WVALID));
  bd_22c0_build_info_0 build_info
       (.S_AXI_ACLK(aclk_ctrl),
        .S_AXI_ARADDR(axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR[4:0]),
        .S_AXI_ARESETN(aresetn_ctrl),
        .S_AXI_ARREADY(axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR[4:0]),
        .S_AXI_AWREADY(axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_ic_ctrl_mgmt_0_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_ic_ctrl_mgmt_0_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_ic_ctrl_mgmt_0_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_ic_ctrl_mgmt_0_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_ic_ctrl_mgmt_0_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_ic_ctrl_mgmt_0_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_ic_ctrl_mgmt_0_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_ic_ctrl_mgmt_0_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_ic_ctrl_mgmt_0_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_ic_ctrl_mgmt_0_M00_AXI_WVALID));
  bd_22c0_clk_hbm_adapt_0 clk_hbm_adapt
       (.clk_in(clk_hbm_adapt_in),
        .clk_out(hbm_aclk));
  bd_22c0_clk_kernel2_adapt_0 clk_kernel2_adapt
       (.clk_in(clock_throttling_kernel2_clk_out),
        .clk_out(clk_kernel2));
  bd_22c0_clk_kernel2_cont_adapt_0 clk_kernel2_cont_adapt
       (.clk_in(clock_throttling_kernel2_clk_out_cont),
        .clk_out(clk_kernel2_cont));
  bd_22c0_clk_kernel_adapt_0 clk_kernel_adapt
       (.clk_in(clock_throttling_kernel_clk_out),
        .clk_out(clk_kernel));
  bd_22c0_clk_kernel_cont_adapt_0 clk_kernel_cont_adapt
       (.clk_in(clock_throttling_kernel_clk_out_cont),
        .clk_out(clk_kernel_cont));
  bd_22c0_clkwiz_hbm_0 clkwiz_hbm
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_hbm_adapt_in),
        .clk_out1_ce(startup_done),
        .locked(clk_hbm_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR[10:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M06_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M06_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M06_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M06_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M06_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M06_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M06_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M06_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M06_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M06_AXI_WVALID));
  bd_22c0_clkwiz_kernel_0 clkwiz_kernel
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_kernel_unbuffered),
        .locked(clk_kernel_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR[10:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M03_AXI_WVALID));
  bd_22c0_clkwiz_kernel2_0 clkwiz_kernel2
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_kernel2_unbuffered),
        .locked(clk_kernel2_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR[10:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M04_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M04_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M04_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M04_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M04_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M04_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M04_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M04_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M04_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M04_AXI_WVALID));
  bd_22c0_clock_throttling_avg_0 clock_throttling_avg
       (.Clk(aclk_ctrl),
        .Rate(\^gpio_gapping_demand ),
        .Rate_Avg(\^clock_throttling_avg ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst(aresetn_ctrl));
  bd_22c0_clock_throttling_kernel_0 clock_throttling_kernel
       (.Clk_In(clk_kernel_unbuffered),
        .Clk_Out(clock_throttling_kernel_clk_out),
        .Clk_Out_Cont(clock_throttling_kernel_clk_out_cont),
        .Locked(clk_kernel_locked),
        .Rate_In(\^gpio_gapping_demand ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst_Async(aresetn_kernel_async),
        .Rst_In(aresetn_ctrl),
        .Startup_Done(startup_done));
  bd_22c0_clock_throttling_kernel2_0 clock_throttling_kernel2
       (.Clk_In(clk_kernel2_unbuffered),
        .Clk_Out(clock_throttling_kernel2_clk_out),
        .Clk_Out_Cont(clock_throttling_kernel2_clk_out_cont),
        .Locked(clk_kernel2_locked),
        .Rate_In(\^gpio_gapping_demand ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst_Async(aresetn_kernel2_async),
        .Rst_In(aresetn_ctrl),
        .Startup_Done(startup_done));
  bd_22c0_fanout_aresetn_ctrl_slr0_0 fanout_aresetn_ctrl_slr0
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr0),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_ctrl_slr1_0 fanout_aresetn_ctrl_slr1
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr1),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_hbm_0 fanout_aresetn_hbm
       (.clk(hbm_aclk),
        .d(hbm_aresetn_int),
        .q(hbm_aresetn),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_kernel2_slr0_0 fanout_aresetn_kernel2_slr0
       (.clk(clk_kernel2_cont),
        .d(aresetn_kernel2),
        .q(aresetn_kernel2_slr0),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_kernel2_slr1_0 fanout_aresetn_kernel2_slr1
       (.clk(clk_kernel2_cont),
        .d(aresetn_kernel2),
        .q(aresetn_kernel2_slr1),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_kernel_slr0_0 fanout_aresetn_kernel_slr0
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel),
        .q(aresetn_kernel_slr0),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_kernel_slr1_0 fanout_aresetn_kernel_slr1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel),
        .q(aresetn_kernel_slr1),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_pcie_slr0_0 fanout_aresetn_pcie_slr0
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr0),
        .resetn(\^vcc ));
  bd_22c0_fanout_aresetn_pcie_slr1_0 fanout_aresetn_pcie_slr1
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr1),
        .resetn(\^vcc ));
  bd_22c0_frequency_counter_aclk_0 frequency_counter_aclk
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M02_AXI_WVALID),
        .test_clk0(aclk_ctrl),
        .test_clk1(aclk_pcie));
  bd_22c0_frequency_counter_hbm_0 frequency_counter_hbm
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M03_AXI_WVALID),
        .test_clk0(hbm_aclk),
        .test_clk3(hbm_refclk));
  bd_22c0_frequency_counter_kernel_0 frequency_counter_kernel
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M00_AXI_WVALID),
        .test_clk0(clk_kernel_cont),
        .test_clk1(clk_kernel));
  bd_22c0_frequency_counter_kernel2_0 frequency_counter_kernel2
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M01_AXI_WVALID),
        .test_clk0(clk_kernel2_cont),
        .test_clk1(clk_kernel2));
  bd_22c0_gapping_demand_toggle_0 gapping_demand_toggle
       (.CE(\^gapping_demand_update ),
        .CLK(aclk_ctrl),
        .Q(\^gapping_demand_toggle ));
  bd_22c0_gapping_demand_update_0 gapping_demand_update
       (.Op1(gapping_demand_bvalid),
        .Op2(gapping_demand_bready),
        .Res(\^gapping_demand_update ));
  bd_22c0_gnd15_0 gnd15
       (.dout(\^gnd15 ));
  bd_22c0_gnd2_0 gnd2
       (.dout(\^gnd2 ));
  bd_22c0_gpio_gapping_demand_0 gpio_gapping_demand
       (.gpio_io_o(\^gpio_gapping_demand ),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID),
        .s_axi_bready(gapping_demand_bready),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M01_AXI_BRESP),
        .s_axi_bvalid(gapping_demand_bvalid),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M01_AXI_WVALID));
  bd_22c0_gpio_ucs_control_status_0 gpio_ucs_control_status
       (.gpio2_io_o(gpio_ucs_control_status_gpio2),
        .gpio_io_i(gpio_ucs_status_concat_dout),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M02_AXI_WVALID));
  bd_22c0_gpio_ucs_status_concat_0 gpio_ucs_status_concat
       (.In0(shutdown_clocks_latched),
        .In1(\^gnd15 ),
        .In2(\^clock_throttling_avg ),
        .In3(\^gnd2 ),
        .dout(gpio_ucs_status_concat_dout));
  bd_22c0_or_shutdown_clocks_0 or_shutdown_clocks
       (.Op1(shutdown_clocks),
        .Op2(reduce_check_gpio_res),
        .Res(or_shutdown_clocks_res));
  bd_22c0_psreset_freerun_refclk_0 psreset_freerun_refclk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(aresetn_freerun_refclk),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(freerun_refclk));
  bd_22c0_psreset_hbm_0 psreset_hbm
       (.aux_reset_in(aresetn_ctrl),
        .dcm_locked(clk_hbm_locked),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(hbm_aresetn_int),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(hbm_aclk));
  bd_22c0_psreset_kernel_0 psreset_kernel
       (.aux_reset_in(aresetn_kernel_async),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(aresetn_kernel),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_kernel_cont));
  bd_22c0_psreset_kernel2_0 psreset_kernel2
       (.aux_reset_in(aresetn_kernel2_async),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(aresetn_kernel2),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_kernel2_cont));
  bd_22c0_reduce_check_gpio_0 reduce_check_gpio
       (.Op1(adder_check_gpio_sum),
        .Res(reduce_check_gpio_res));
  bd_22c0_shutdown_clocks_latch_0 shutdown_clocks_latch
       (.CE(or_shutdown_clocks_res),
        .CLK(aclk_ctrl),
        .D(\^vcc ),
        .Q(shutdown_clocks_latched));
  bd_22c0_slice_check_gpio_0 slice_check_gpio
       (.Din(gpio_ucs_control_status_gpio2),
        .Dout(slice_check_gpio_dout));
  bd_22c0_slice_startup_done_gpio_0 slice_startup_done_gpio
       (.Din(gpio_ucs_control_status_gpio2),
        .Dout(startup_done));
  bd_22c0_vcc_0 vcc
       (.dout(\^vcc ));
  bd_22c0_vip_ctrl_mgmt_0 vip_ctrl_mgmt
       (.aclk(aclk_ctrl),
        .aresetn(aresetn_ctrl),
        .m_axi_araddr(s_axi_ctrl_mgmt_vip_ARADDR),
        .m_axi_arprot(s_axi_ctrl_mgmt_vip_ARPROT),
        .m_axi_arready(s_axi_ctrl_mgmt_vip_ARREADY),
        .m_axi_arvalid(s_axi_ctrl_mgmt_vip_ARVALID),
        .m_axi_awaddr(s_axi_ctrl_mgmt_vip_AWADDR),
        .m_axi_awprot(s_axi_ctrl_mgmt_vip_AWPROT),
        .m_axi_awready(s_axi_ctrl_mgmt_vip_AWREADY),
        .m_axi_awvalid(s_axi_ctrl_mgmt_vip_AWVALID),
        .m_axi_bready(s_axi_ctrl_mgmt_vip_BREADY),
        .m_axi_bresp(s_axi_ctrl_mgmt_vip_BRESP),
        .m_axi_bvalid(s_axi_ctrl_mgmt_vip_BVALID),
        .m_axi_rdata(s_axi_ctrl_mgmt_vip_RDATA),
        .m_axi_rready(s_axi_ctrl_mgmt_vip_RREADY),
        .m_axi_rresp(s_axi_ctrl_mgmt_vip_RRESP),
        .m_axi_rvalid(s_axi_ctrl_mgmt_vip_RVALID),
        .m_axi_wdata(s_axi_ctrl_mgmt_vip_WDATA),
        .m_axi_wready(s_axi_ctrl_mgmt_vip_WREADY),
        .m_axi_wstrb(s_axi_ctrl_mgmt_vip_WSTRB),
        .m_axi_wvalid(s_axi_ctrl_mgmt_vip_WVALID),
        .s_axi_araddr(s_axi_ctrl_mgmt_ARADDR),
        .s_axi_arprot(s_axi_ctrl_mgmt_ARPROT),
        .s_axi_arready(s_axi_ctrl_mgmt_ARREADY),
        .s_axi_arvalid(s_axi_ctrl_mgmt_ARVALID),
        .s_axi_awaddr(s_axi_ctrl_mgmt_AWADDR),
        .s_axi_awprot(s_axi_ctrl_mgmt_AWPROT),
        .s_axi_awready(s_axi_ctrl_mgmt_AWREADY),
        .s_axi_awvalid(s_axi_ctrl_mgmt_AWVALID),
        .s_axi_bready(s_axi_ctrl_mgmt_BREADY),
        .s_axi_bresp(s_axi_ctrl_mgmt_BRESP),
        .s_axi_bvalid(s_axi_ctrl_mgmt_BVALID),
        .s_axi_rdata(s_axi_ctrl_mgmt_RDATA),
        .s_axi_rready(s_axi_ctrl_mgmt_RREADY),
        .s_axi_rresp(s_axi_ctrl_mgmt_RRESP),
        .s_axi_rvalid(s_axi_ctrl_mgmt_RVALID),
        .s_axi_wdata(s_axi_ctrl_mgmt_WDATA),
        .s_axi_wready(s_axi_ctrl_mgmt_WREADY),
        .s_axi_wstrb(s_axi_ctrl_mgmt_WSTRB),
        .s_axi_wvalid(s_axi_ctrl_mgmt_WVALID));
endmodule

module bd_22c0_axi_ic_ctrl_mgmt_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [15:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [15:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [15:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [15:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [15:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [15:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [15:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [15:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [15:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [15:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [15:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [15:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [15:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [15:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_ic_ctrl_mgmt_0_ACLK_net;
  wire axi_ic_ctrl_mgmt_0_ARESETN_net;
  wire [15:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_0_to_s00_couplers_WVALID;
  wire [15:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m03_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m04_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m04_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire [2:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_ARPROT;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire [2:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_AWPROT;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire [0:0]m05_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  wire [15:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  wire [1:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_BRESP;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_BVALID;
  wire [31:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_RDATA;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  wire [1:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_RRESP;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_RVALID;
  wire [31:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_WREADY;
  wire [3:0]m06_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  wire m06_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  wire [15:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [15:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [15:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [15:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [31:16]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [31:16]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [47:32]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [47:32]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [63:48]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [63:48]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [79:64]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [79:64]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [95:80]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [95:80]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [111:96]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [111:96]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [20:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[15:0] = m00_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M00_AXI_awaddr[15:0] = m00_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M01_AXI_araddr[15:0] = m01_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M02_AXI_araddr[15:0] = m02_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M02_AXI_awaddr[15:0] = m02_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M03_AXI_araddr[15:0] = m03_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M03_AXI_awaddr[15:0] = m03_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M04_AXI_araddr[15:0] = m04_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M04_AXI_awaddr[15:0] = m04_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M05_AXI_araddr[15:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_ARPROT;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M05_AXI_awaddr[15:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_AWPROT;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign M06_AXI_araddr[15:0] = m06_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID;
  assign M06_AXI_awaddr[15:0] = m06_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_ic_ctrl_mgmt_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_ic_ctrl_mgmt_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_ic_ctrl_mgmt_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_ic_ctrl_mgmt_0_WVALID;
  assign S00_AXI_arready[0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_ic_ctrl_mgmt_0_to_s00_couplers_WREADY;
  assign axi_ic_ctrl_mgmt_0_ACLK_net = ACLK;
  assign axi_ic_ctrl_mgmt_0_ARESETN_net = ARESETN;
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_ARADDR = S00_AXI_araddr[15:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[15:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ctrl_mgmt_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_ic_ctrl_mgmt_0_WREADY = M06_AXI_wready;
  m00_couplers_imp_G6SEEB m00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1GPTEAO m01_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1U58S2S m02_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_TCEFL3 m03_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_KCAVJG m04_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1LFB1WV m05_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_ic_ctrl_mgmt_0_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_ic_ctrl_mgmt_0_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_17OGPUZ m06_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_ic_ctrl_mgmt_0_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_ic_ctrl_mgmt_0_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_ic_ctrl_mgmt_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_ic_ctrl_mgmt_0_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_ic_ctrl_mgmt_0_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_ic_ctrl_mgmt_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_ic_ctrl_mgmt_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_ic_ctrl_mgmt_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_ic_ctrl_mgmt_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_ic_ctrl_mgmt_0_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_ic_ctrl_mgmt_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_ic_ctrl_mgmt_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_ic_ctrl_mgmt_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_ic_ctrl_mgmt_0_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_ic_ctrl_mgmt_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_ic_ctrl_mgmt_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_ic_ctrl_mgmt_0_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  s00_couplers_imp_1GJW133 s00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_0_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .S_AXI_araddr(axi_ic_ctrl_mgmt_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_0_to_s00_couplers_WVALID));
  bd_22c0_xbar_0 xbar
       (.aclk(axi_ic_ctrl_mgmt_0_ACLK_net),
        .aresetn(axi_ic_ctrl_mgmt_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m05_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[14:0]}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m05_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[14:0]}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module bd_22c0_axi_ic_ctrl_mgmt_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [15:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [15:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [15:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [15:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [15:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [15:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [15:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [15:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_ic_ctrl_mgmt_1_ACLK_net;
  wire axi_ic_ctrl_mgmt_1_ARESETN_net;
  wire [15:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_ARPROT;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_ARREADY;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_AWPROT;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_AWREADY;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_AWVALID;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_BRESP;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_RRESP;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_WDATA;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_WSTRB;
  wire [0:0]axi_ic_ctrl_mgmt_1_to_s00_couplers_WVALID;
  wire [15:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  wire [15:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_BRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_RDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_RRESP;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  wire m00_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  wire [15:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  wire [15:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_BRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_RDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_RRESP;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  wire m01_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  wire [15:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  wire [15:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_BRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_RDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_RRESP;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  wire m02_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  wire [15:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  wire [15:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_BRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_BVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_RDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  wire [1:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_RRESP;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_RVALID;
  wire [31:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_WREADY;
  wire [3:0]m03_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  wire m03_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  wire [15:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [15:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [15:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [15:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [31:16]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [31:16]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [47:32]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [47:32]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [63:48]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [63:48]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[15:0] = m00_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  assign M00_AXI_awaddr[15:0] = m00_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[15:0] = m01_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[15:0] = m02_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  assign M02_AXI_awaddr[15:0] = m02_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[15:0] = m03_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID;
  assign M03_AXI_awaddr[15:0] = m03_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_ic_ctrl_mgmt_1_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_ic_ctrl_mgmt_1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_ic_ctrl_mgmt_1_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_ic_ctrl_mgmt_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_ic_ctrl_mgmt_1_to_s00_couplers_WREADY;
  assign axi_ic_ctrl_mgmt_1_ACLK_net = ACLK;
  assign axi_ic_ctrl_mgmt_1_ARESETN_net = ARESETN;
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_ARADDR = S00_AXI_araddr[15:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[15:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ctrl_mgmt_1_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ctrl_mgmt_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_ic_ctrl_mgmt_1_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_ic_ctrl_mgmt_1_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_ic_ctrl_mgmt_1_WREADY = M03_AXI_wready;
  m00_couplers_imp_19X8NLP m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ctrl_mgmt_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ctrl_mgmt_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ctrl_mgmt_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ctrl_mgmt_1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_ctrl_mgmt_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ctrl_mgmt_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ctrl_mgmt_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ctrl_mgmt_1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_ctrl_mgmt_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ctrl_mgmt_1_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_1_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_9H1EM6 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_ctrl_mgmt_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_ctrl_mgmt_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_ctrl_mgmt_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_ctrl_mgmt_1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_ctrl_mgmt_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_ctrl_mgmt_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_ctrl_mgmt_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_ctrl_mgmt_1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_ctrl_mgmt_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_ctrl_mgmt_1_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_1_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_VK59DM m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_ctrl_mgmt_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_ctrl_mgmt_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_ctrl_mgmt_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_ctrl_mgmt_1_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_ctrl_mgmt_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_ctrl_mgmt_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_ctrl_mgmt_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_ctrl_mgmt_1_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_ctrl_mgmt_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_ctrl_mgmt_1_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_1_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1WA737D m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_ic_ctrl_mgmt_1_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_ic_ctrl_mgmt_1_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_ic_ctrl_mgmt_1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_ic_ctrl_mgmt_1_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_ic_ctrl_mgmt_1_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_ic_ctrl_mgmt_1_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_ic_ctrl_mgmt_1_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_ic_ctrl_mgmt_1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_ic_ctrl_mgmt_1_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_ic_ctrl_mgmt_1_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_ic_ctrl_mgmt_1_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_ic_ctrl_mgmt_1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_ic_ctrl_mgmt_1_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_ic_ctrl_mgmt_1_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_ic_ctrl_mgmt_1_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_ic_ctrl_mgmt_1_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_ic_ctrl_mgmt_1_WVALID),
        .S_ACLK(axi_ic_ctrl_mgmt_1_ACLK_net),
        .S_ARESETN(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_9N0HK1 s00_couplers
       (.M_ACLK(axi_ic_ctrl_mgmt_1_ACLK_net),
        .M_ARESETN(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_ic_ctrl_mgmt_1_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_ctrl_mgmt_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_ctrl_mgmt_1_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_ctrl_mgmt_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ctrl_mgmt_1_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_ctrl_mgmt_1_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_ctrl_mgmt_1_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_ctrl_mgmt_1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_ctrl_mgmt_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ctrl_mgmt_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ctrl_mgmt_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ctrl_mgmt_1_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_ctrl_mgmt_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ctrl_mgmt_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ctrl_mgmt_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ctrl_mgmt_1_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_ctrl_mgmt_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ctrl_mgmt_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ctrl_mgmt_1_to_s00_couplers_WVALID));
  bd_22c0_xbar_1 xbar
       (.aclk(axi_ic_ctrl_mgmt_1_ACLK_net),
        .aresetn(axi_ic_ctrl_mgmt_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_19X8NLP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [15:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_G6SEEB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [15:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1GPTEAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [15:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_9H1EM6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [15:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1U58S2S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [15:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_VK59DM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [15:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1WA737D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [15:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_TCEFL3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [15:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_KCAVJG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [15:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1LFB1WV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [15:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [15:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_17OGPUZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [15:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [15:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[15:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[15:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1GJW133
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [15:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [15:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[15:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[15:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[15:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_9N0HK1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [15:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [0:0]auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [15:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [0:0]auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire [0:0]auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire [0:0]auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire [0:0]auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [15:0]s00_couplers_to_auto_cc_ARADDR;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [0:0]s00_couplers_to_auto_cc_ARVALID;
  wire [15:0]s00_couplers_to_auto_cc_AWADDR;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [0:0]s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire [0:0]s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[15:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready[0] = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[15:0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[15:0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid[0];
  bd_22c0_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule
