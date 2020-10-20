//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_22c0_wrapper.bd
//Design : bd_22c0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_22c0_wrapper
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
  input aclk_ctrl;
  input aclk_pcie;
  input aresetn_ctrl;
  output [0:0]aresetn_ctrl_slr0;
  output [0:0]aresetn_ctrl_slr1;
  output [0:0]aresetn_kernel2_slr0;
  output [0:0]aresetn_kernel2_slr1;
  output [0:0]aresetn_kernel_slr0;
  output [0:0]aresetn_kernel_slr1;
  input aresetn_pcie;
  output [0:0]aresetn_pcie_slr0;
  output [0:0]aresetn_pcie_slr1;
  output clk_kernel;
  output clk_kernel2;
  input freerun_refclk;
  output hbm_aclk;
  output [0:0]hbm_aresetn;
  input hbm_refclk;
  input [15:0]s_axi_ctrl_mgmt_araddr;
  input [2:0]s_axi_ctrl_mgmt_arprot;
  output s_axi_ctrl_mgmt_arready;
  input s_axi_ctrl_mgmt_arvalid;
  input [15:0]s_axi_ctrl_mgmt_awaddr;
  input [2:0]s_axi_ctrl_mgmt_awprot;
  output s_axi_ctrl_mgmt_awready;
  input s_axi_ctrl_mgmt_awvalid;
  input s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire aclk_ctrl;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_kernel2_slr0;
  wire [0:0]aresetn_kernel2_slr1;
  wire [0:0]aresetn_kernel_slr0;
  wire [0:0]aresetn_kernel_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire clk_kernel;
  wire clk_kernel2;
  wire freerun_refclk;
  wire hbm_aclk;
  wire [0:0]hbm_aresetn;
  wire hbm_refclk;
  wire [15:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [15:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;

  bd_22c0 bd_22c0_i
       (.aclk_ctrl(aclk_ctrl),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
        .aresetn_kernel2_slr0(aresetn_kernel2_slr0),
        .aresetn_kernel2_slr1(aresetn_kernel2_slr1),
        .aresetn_kernel_slr0(aresetn_kernel_slr0),
        .aresetn_kernel_slr1(aresetn_kernel_slr1),
        .aresetn_pcie(aresetn_pcie),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1),
        .clk_kernel(clk_kernel),
        .clk_kernel2(clk_kernel2),
        .freerun_refclk(freerun_refclk),
        .hbm_aclk(hbm_aclk),
        .hbm_aresetn(hbm_aresetn),
        .hbm_refclk(hbm_refclk),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .shutdown_clocks(shutdown_clocks));
endmodule
