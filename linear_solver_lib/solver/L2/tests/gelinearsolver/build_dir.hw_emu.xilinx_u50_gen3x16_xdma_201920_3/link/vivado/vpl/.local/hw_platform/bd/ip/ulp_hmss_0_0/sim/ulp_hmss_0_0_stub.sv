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

//------------------------------------------------------------------------------------
// Filename:    ulp_hmss_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module ulp_hmss_0_0 (
  input bit_as_bool hbm_aclk,
  input bit_as_bool hbm_aresetn,
  input bit_as_bool hbm_ref_clk,
  output bit_as_bool hbm_mc_init_seq_complete,
  output bit [6 : 0] DRAM_0_STAT_TEMP,
  output bit [6 : 0] DRAM_1_STAT_TEMP,
  output bit [0 : 0] DRAM_STAT_CATTRIP,
  input bit [22 : 0] S_AXI_CTRL_awaddr,
  input bit [0 : 0] S_AXI_CTRL_awvalid,
  output bit [0 : 0] S_AXI_CTRL_awready,
  input bit [31 : 0] S_AXI_CTRL_wdata,
  input bit [0 : 0] S_AXI_CTRL_wvalid,
  output bit [0 : 0] S_AXI_CTRL_wready,
  output bit [1 : 0] S_AXI_CTRL_bresp,
  output bit [0 : 0] S_AXI_CTRL_bvalid,
  input bit [0 : 0] S_AXI_CTRL_bready,
  input bit [22 : 0] S_AXI_CTRL_araddr,
  input bit [0 : 0] S_AXI_CTRL_arvalid,
  output bit [0 : 0] S_AXI_CTRL_arready,
  output bit [31 : 0] S_AXI_CTRL_rdata,
  output bit [1 : 0] S_AXI_CTRL_rresp,
  output bit [0 : 0] S_AXI_CTRL_rvalid,
  input bit [0 : 0] S_AXI_CTRL_rready,
  input bit_as_bool ctrl_aclk,
  input bit_as_bool ctrl_aresetn,
  input bit_as_bool aclk,
  input bit_as_bool aresetn,
  input bit [32 : 0] S00_AXI_awaddr,
  input bit [7 : 0] S00_AXI_awlen,
  input bit [2 : 0] S00_AXI_awsize,
  input bit [1 : 0] S00_AXI_awburst,
  input bit [0 : 0] S00_AXI_awlock,
  input bit [3 : 0] S00_AXI_awcache,
  input bit [2 : 0] S00_AXI_awprot,
  input bit [3 : 0] S00_AXI_awqos,
  input bit [0 : 0] S00_AXI_awvalid,
  output bit [0 : 0] S00_AXI_awready,
  input bit [511 : 0] S00_AXI_wdata,
  input bit [63 : 0] S00_AXI_wstrb,
  input bit [0 : 0] S00_AXI_wlast,
  input bit [0 : 0] S00_AXI_wvalid,
  output bit [0 : 0] S00_AXI_wready,
  output bit [1 : 0] S00_AXI_bresp,
  output bit [0 : 0] S00_AXI_bvalid,
  input bit [0 : 0] S00_AXI_bready,
  input bit [32 : 0] S00_AXI_araddr,
  input bit [7 : 0] S00_AXI_arlen,
  input bit [2 : 0] S00_AXI_arsize,
  input bit [1 : 0] S00_AXI_arburst,
  input bit [0 : 0] S00_AXI_arlock,
  input bit [3 : 0] S00_AXI_arcache,
  input bit [2 : 0] S00_AXI_arprot,
  input bit [3 : 0] S00_AXI_arqos,
  input bit [0 : 0] S00_AXI_arvalid,
  output bit [0 : 0] S00_AXI_arready,
  output bit [511 : 0] S00_AXI_rdata,
  output bit [1 : 0] S00_AXI_rresp,
  output bit [0 : 0] S00_AXI_rlast,
  output bit [0 : 0] S00_AXI_rvalid,
  input bit [0 : 0] S00_AXI_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module ulp_hmss_0_0 (hbm_aclk,hbm_aresetn,hbm_ref_clk,hbm_mc_init_seq_complete,DRAM_0_STAT_TEMP,DRAM_1_STAT_TEMP,DRAM_STAT_CATTRIP,S_AXI_CTRL_awaddr,S_AXI_CTRL_awvalid,S_AXI_CTRL_awready,S_AXI_CTRL_wdata,S_AXI_CTRL_wvalid,S_AXI_CTRL_wready,S_AXI_CTRL_bresp,S_AXI_CTRL_bvalid,S_AXI_CTRL_bready,S_AXI_CTRL_araddr,S_AXI_CTRL_arvalid,S_AXI_CTRL_arready,S_AXI_CTRL_rdata,S_AXI_CTRL_rresp,S_AXI_CTRL_rvalid,S_AXI_CTRL_rready,ctrl_aclk,ctrl_aresetn,aclk,aresetn,S00_AXI_awaddr,S00_AXI_awlen,S00_AXI_awsize,S00_AXI_awburst,S00_AXI_awlock,S00_AXI_awcache,S00_AXI_awprot,S00_AXI_awqos,S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata,S00_AXI_wstrb,S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp,S00_AXI_bvalid,S00_AXI_bready,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready)
(* integer foreign = "SystemC";
*);
  input bit hbm_aclk;
  input bit hbm_aresetn;
  input bit hbm_ref_clk;
  output wire hbm_mc_init_seq_complete;
  output wire [6 : 0] DRAM_0_STAT_TEMP;
  output wire [6 : 0] DRAM_1_STAT_TEMP;
  output wire [0 : 0] DRAM_STAT_CATTRIP;
  input bit [22 : 0] S_AXI_CTRL_awaddr;
  input bit [0 : 0] S_AXI_CTRL_awvalid;
  output wire [0 : 0] S_AXI_CTRL_awready;
  input bit [31 : 0] S_AXI_CTRL_wdata;
  input bit [0 : 0] S_AXI_CTRL_wvalid;
  output wire [0 : 0] S_AXI_CTRL_wready;
  output wire [1 : 0] S_AXI_CTRL_bresp;
  output wire [0 : 0] S_AXI_CTRL_bvalid;
  input bit [0 : 0] S_AXI_CTRL_bready;
  input bit [22 : 0] S_AXI_CTRL_araddr;
  input bit [0 : 0] S_AXI_CTRL_arvalid;
  output wire [0 : 0] S_AXI_CTRL_arready;
  output wire [31 : 0] S_AXI_CTRL_rdata;
  output wire [1 : 0] S_AXI_CTRL_rresp;
  output wire [0 : 0] S_AXI_CTRL_rvalid;
  input bit [0 : 0] S_AXI_CTRL_rready;
  input bit ctrl_aclk;
  input bit ctrl_aresetn;
  input bit aclk;
  input bit aresetn;
  input bit [32 : 0] S00_AXI_awaddr;
  input bit [7 : 0] S00_AXI_awlen;
  input bit [2 : 0] S00_AXI_awsize;
  input bit [1 : 0] S00_AXI_awburst;
  input bit [0 : 0] S00_AXI_awlock;
  input bit [3 : 0] S00_AXI_awcache;
  input bit [2 : 0] S00_AXI_awprot;
  input bit [3 : 0] S00_AXI_awqos;
  input bit [0 : 0] S00_AXI_awvalid;
  output wire [0 : 0] S00_AXI_awready;
  input bit [511 : 0] S00_AXI_wdata;
  input bit [63 : 0] S00_AXI_wstrb;
  input bit [0 : 0] S00_AXI_wlast;
  input bit [0 : 0] S00_AXI_wvalid;
  output wire [0 : 0] S00_AXI_wready;
  output wire [1 : 0] S00_AXI_bresp;
  output wire [0 : 0] S00_AXI_bvalid;
  input bit [0 : 0] S00_AXI_bready;
  input bit [32 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit [0 : 0] S00_AXI_arvalid;
  output wire [0 : 0] S00_AXI_arready;
  output wire [511 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire [0 : 0] S00_AXI_rlast;
  output wire [0 : 0] S00_AXI_rvalid;
  input bit [0 : 0] S00_AXI_rready;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module ulp_hmss_0_0 (hbm_aclk,hbm_aresetn,hbm_ref_clk,hbm_mc_init_seq_complete,DRAM_0_STAT_TEMP,DRAM_1_STAT_TEMP,DRAM_STAT_CATTRIP,S_AXI_CTRL_awaddr,S_AXI_CTRL_awvalid,S_AXI_CTRL_awready,S_AXI_CTRL_wdata,S_AXI_CTRL_wvalid,S_AXI_CTRL_wready,S_AXI_CTRL_bresp,S_AXI_CTRL_bvalid,S_AXI_CTRL_bready,S_AXI_CTRL_araddr,S_AXI_CTRL_arvalid,S_AXI_CTRL_arready,S_AXI_CTRL_rdata,S_AXI_CTRL_rresp,S_AXI_CTRL_rvalid,S_AXI_CTRL_rready,ctrl_aclk,ctrl_aresetn,aclk,aresetn,S00_AXI_awaddr,S00_AXI_awlen,S00_AXI_awsize,S00_AXI_awburst,S00_AXI_awlock,S00_AXI_awcache,S00_AXI_awprot,S00_AXI_awqos,S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata,S00_AXI_wstrb,S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp,S00_AXI_bvalid,S00_AXI_bready,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready)
  input bit hbm_aclk;
  input bit hbm_aresetn;
  input bit hbm_ref_clk;
  output wire hbm_mc_init_seq_complete;
  output wire [6 : 0] DRAM_0_STAT_TEMP;
  output wire [6 : 0] DRAM_1_STAT_TEMP;
  output wire [0 : 0] DRAM_STAT_CATTRIP;
  input bit [22 : 0] S_AXI_CTRL_awaddr;
  input bit [0 : 0] S_AXI_CTRL_awvalid;
  output wire [0 : 0] S_AXI_CTRL_awready;
  input bit [31 : 0] S_AXI_CTRL_wdata;
  input bit [0 : 0] S_AXI_CTRL_wvalid;
  output wire [0 : 0] S_AXI_CTRL_wready;
  output wire [1 : 0] S_AXI_CTRL_bresp;
  output wire [0 : 0] S_AXI_CTRL_bvalid;
  input bit [0 : 0] S_AXI_CTRL_bready;
  input bit [22 : 0] S_AXI_CTRL_araddr;
  input bit [0 : 0] S_AXI_CTRL_arvalid;
  output wire [0 : 0] S_AXI_CTRL_arready;
  output wire [31 : 0] S_AXI_CTRL_rdata;
  output wire [1 : 0] S_AXI_CTRL_rresp;
  output wire [0 : 0] S_AXI_CTRL_rvalid;
  input bit [0 : 0] S_AXI_CTRL_rready;
  input bit ctrl_aclk;
  input bit ctrl_aresetn;
  input bit aclk;
  input bit aresetn;
  input bit [32 : 0] S00_AXI_awaddr;
  input bit [7 : 0] S00_AXI_awlen;
  input bit [2 : 0] S00_AXI_awsize;
  input bit [1 : 0] S00_AXI_awburst;
  input bit [0 : 0] S00_AXI_awlock;
  input bit [3 : 0] S00_AXI_awcache;
  input bit [2 : 0] S00_AXI_awprot;
  input bit [3 : 0] S00_AXI_awqos;
  input bit [0 : 0] S00_AXI_awvalid;
  output wire [0 : 0] S00_AXI_awready;
  input bit [511 : 0] S00_AXI_wdata;
  input bit [63 : 0] S00_AXI_wstrb;
  input bit [0 : 0] S00_AXI_wlast;
  input bit [0 : 0] S00_AXI_wvalid;
  output wire [0 : 0] S00_AXI_wready;
  output wire [1 : 0] S00_AXI_bresp;
  output wire [0 : 0] S00_AXI_bvalid;
  input bit [0 : 0] S00_AXI_bready;
  input bit [32 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit [0 : 0] S00_AXI_arvalid;
  output wire [0 : 0] S00_AXI_arready;
  output wire [511 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire [0 : 0] S00_AXI_rlast;
  output wire [0 : 0] S00_AXI_rvalid;
  input bit [0 : 0] S00_AXI_rready;
endmodule
`endif
