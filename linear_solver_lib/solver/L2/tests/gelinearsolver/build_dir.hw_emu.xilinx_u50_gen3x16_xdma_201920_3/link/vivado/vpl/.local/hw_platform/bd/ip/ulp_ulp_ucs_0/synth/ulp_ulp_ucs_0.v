// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:shell_ucs_subsystem:2.0
// IP Revision: 0

(* X_CORE_INFO = "bd_22c0,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "ulp_ulp_ucs_0,bd_22c0,{}" *)
(* CORE_GENERATION_INFO = "ulp_ulp_ucs_0,bd_22c0,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_ucs_subsystem,x_ipVersion=2.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=ulp_ulp_ucs_0,HAS_HBM_CLK=3,EDGE_ALIGNED_DIVIDED_KERNEL_CLOCK_DIVIDE_VALUE=1,EDGE_ALIGNED_DIVIDED_KERNEL2_CLOCK_DIVIDE_VALUE=1,ENABLE_KERNEL_CONT_CLOCK=false,ENABLE_KERNEL2_CONT_CLOCK=false,NUM_SLR=2,FREQ_CNT_REF_CLK_HZ=100000,CLK_DOMAIN_CLK_KERNEL=cd_kernel_00,CLK_DOMAIN_CLK_KERNEL_2=cd_ker\
nel_01,CLK_DOMAIN_CLK_HBM=cd_hbm,TEST_CLOCK=0,VERSION.SUBSYSTEM_ID=0x07,VERSION.VIV_VERSION=0x201920,VERSION.MAJOR_VERSION=2,VERSION.MINOR_VERSION=0,VERSION.CORE_REVISION=0,VERSION.PATCH_REVISION=0,VERSION.RESERVED_TAG=0x00000000,VERSION.PERFORCE_CL=2767516,SLR_ASSIGNMENTS=}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_ulp_ucs_0 (
  freerun_refclk,
  aclk_ctrl,
  aclk_pcie,
  clk_kernel,
  clk_kernel2,
  hbm_aclk,
  hbm_refclk,
  aresetn_ctrl,
  aresetn_pcie,
  aresetn_ctrl_slr0,
  aresetn_ctrl_slr1,
  aresetn_pcie_slr0,
  aresetn_pcie_slr1,
  aresetn_kernel_slr0,
  aresetn_kernel_slr1,
  aresetn_kernel2_slr0,
  aresetn_kernel2_slr1,
  hbm_aresetn,
  shutdown_clocks,
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
  s_axi_ctrl_mgmt_wvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.freerun_refclk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.freerun_refclk CLK" *)
input wire freerun_refclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *)
input wire aclk_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK" *)
input wire aclk_pcie;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk_kernel, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN cd_kernel_00, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk_kernel CLK" *)
output wire clk_kernel;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk_kernel2, FREQ_HZ 500000000, PHASE 0.0, CLK_DOMAIN cd_kernel_01, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk_kernel2 CLK" *)
output wire clk_kernel2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_aclk, FREQ_HZ 450000000, PHASE 0.0, CLK_DOMAIN cd_hbm, ASSOCIATED_RESET hbm_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_aclk CLK" *)
output wire hbm_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_refclk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_refclk CLK" *)
input wire hbm_refclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *)
input wire aresetn_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST" *)
input wire aresetn_pcie;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST" *)
output wire [0 : 0] aresetn_ctrl_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST" *)
output wire [0 : 0] aresetn_ctrl_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST" *)
output wire [0 : 0] aresetn_pcie_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST" *)
output wire [0 : 0] aresetn_pcie_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr0 RST" *)
output wire [0 : 0] aresetn_kernel_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr1 RST" *)
output wire [0 : 0] aresetn_kernel_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel2_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr0 RST" *)
output wire [0 : 0] aresetn_kernel2_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel2_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr1 RST" *)
output wire [0 : 0] aresetn_kernel2_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.hbm_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.hbm_aresetn RST" *)
output wire [0 : 0] hbm_aresetn;
input wire shutdown_clocks;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *)
input wire [15 : 0] s_axi_ctrl_mgmt_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *)
output wire s_axi_ctrl_mgmt_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *)
input wire s_axi_ctrl_mgmt_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *)
input wire [15 : 0] s_axi_ctrl_mgmt_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *)
output wire s_axi_ctrl_mgmt_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *)
input wire s_axi_ctrl_mgmt_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *)
input wire s_axi_ctrl_mgmt_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *)
output wire s_axi_ctrl_mgmt_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *)
output wire [31 : 0] s_axi_ctrl_mgmt_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *)
input wire s_axi_ctrl_mgmt_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *)
output wire s_axi_ctrl_mgmt_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *)
input wire [31 : 0] s_axi_ctrl_mgmt_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *)
output wire s_axi_ctrl_mgmt_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *)
input wire [3 : 0] s_axi_ctrl_mgmt_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *)
input wire s_axi_ctrl_mgmt_wvalid;

  bd_22c0 inst (
    .freerun_refclk(freerun_refclk),
    .aclk_ctrl(aclk_ctrl),
    .aclk_pcie(aclk_pcie),
    .clk_kernel(clk_kernel),
    .clk_kernel2(clk_kernel2),
    .hbm_aclk(hbm_aclk),
    .hbm_refclk(hbm_refclk),
    .aresetn_ctrl(aresetn_ctrl),
    .aresetn_pcie(aresetn_pcie),
    .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
    .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
    .aresetn_pcie_slr0(aresetn_pcie_slr0),
    .aresetn_pcie_slr1(aresetn_pcie_slr1),
    .aresetn_kernel_slr0(aresetn_kernel_slr0),
    .aresetn_kernel_slr1(aresetn_kernel_slr1),
    .aresetn_kernel2_slr0(aresetn_kernel2_slr0),
    .aresetn_kernel2_slr1(aresetn_kernel2_slr1),
    .hbm_aresetn(hbm_aresetn),
    .shutdown_clocks(shutdown_clocks),
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
    .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid)
  );
endmodule
