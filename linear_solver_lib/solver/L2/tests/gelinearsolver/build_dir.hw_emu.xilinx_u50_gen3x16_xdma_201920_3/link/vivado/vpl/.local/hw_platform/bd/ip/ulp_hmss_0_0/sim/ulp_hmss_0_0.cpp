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

#include "ulp_hmss_0_0_sc.h"

#include "ulp_hmss_0_0.h"

#include "bd_85ad.h"

#include <map>
#include <string>

ulp_hmss_0_0::ulp_hmss_0_0(const sc_core::sc_module_name& nm) : ulp_hmss_0_0_sc(nm), hbm_aclk("hbm_aclk"), hbm_aresetn("hbm_aresetn"), hbm_ref_clk("hbm_ref_clk"), hbm_mc_init_seq_complete("hbm_mc_init_seq_complete"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP"), DRAM_1_STAT_TEMP("DRAM_1_STAT_TEMP"), DRAM_STAT_CATTRIP("DRAM_STAT_CATTRIP"), S_AXI_CTRL_awaddr("S_AXI_CTRL_awaddr"), S_AXI_CTRL_awvalid("S_AXI_CTRL_awvalid"), S_AXI_CTRL_awready("S_AXI_CTRL_awready"), S_AXI_CTRL_wdata("S_AXI_CTRL_wdata"), S_AXI_CTRL_wvalid("S_AXI_CTRL_wvalid"), S_AXI_CTRL_wready("S_AXI_CTRL_wready"), S_AXI_CTRL_bresp("S_AXI_CTRL_bresp"), S_AXI_CTRL_bvalid("S_AXI_CTRL_bvalid"), S_AXI_CTRL_bready("S_AXI_CTRL_bready"), S_AXI_CTRL_araddr("S_AXI_CTRL_araddr"), S_AXI_CTRL_arvalid("S_AXI_CTRL_arvalid"), S_AXI_CTRL_arready("S_AXI_CTRL_arready"), S_AXI_CTRL_rdata("S_AXI_CTRL_rdata"), S_AXI_CTRL_rresp("S_AXI_CTRL_rresp"), S_AXI_CTRL_rvalid("S_AXI_CTRL_rvalid"), S_AXI_CTRL_rready("S_AXI_CTRL_rready"), ctrl_aclk("ctrl_aclk"), ctrl_aresetn("ctrl_aresetn"), aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready")
{

  // initialize pins
  mp_impl->hbm_aclk(hbm_aclk);
  mp_impl->hbm_aresetn(hbm_aresetn);
  mp_impl->hbm_ref_clk(hbm_ref_clk);
  mp_impl->hbm_mc_init_seq_complete(hbm_mc_init_seq_complete);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);
  mp_impl->DRAM_1_STAT_TEMP(DRAM_1_STAT_TEMP);
  mp_impl->DRAM_STAT_CATTRIP(DRAM_STAT_CATTRIP);
  mp_impl->ctrl_aclk(ctrl_aclk);
  mp_impl->ctrl_aresetn(ctrl_aresetn);
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S_AXI_CTRL_transactor = NULL;
  mp_S_AXI_CTRL_awvalid_converter = NULL;
  mp_S_AXI_CTRL_awready_converter = NULL;
  mp_S_AXI_CTRL_wvalid_converter = NULL;
  mp_S_AXI_CTRL_wready_converter = NULL;
  mp_S_AXI_CTRL_bvalid_converter = NULL;
  mp_S_AXI_CTRL_bready_converter = NULL;
  mp_S_AXI_CTRL_arvalid_converter = NULL;
  mp_S_AXI_CTRL_arready_converter = NULL;
  mp_S_AXI_CTRL_rvalid_converter = NULL;
  mp_S_AXI_CTRL_rready_converter = NULL;
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
}

void ulp_hmss_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI_CTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_hmss_0_0", "S_AXI_CTRL_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S_AXI_CTRL_transactor_param_props;
    S_AXI_CTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_CTRL_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_CTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ADDR_WIDTH", "23");
    S_AXI_CTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_CTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_CTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_CTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_CTRL_transactor_param_props.addFloat("PHASE", "0");
    S_AXI_CTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_CTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_CTRL_transactor_param_props.addString("CLK_DOMAIN", "cd_ctrl_00");
    S_AXI_CTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    mp_S_AXI_CTRL_transactor = new xtlm::xaximm_pin2xtlm_t<32,23,1,1,1,1,1,1>("S_AXI_CTRL_transactor", S_AXI_CTRL_transactor_param_props);
    mp_S_AXI_CTRL_transactor->AWADDR(S_AXI_CTRL_awaddr);
    mp_S_AXI_CTRL_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S_AXI_CTRL_awvalid_converter");
    mp_S_AXI_CTRL_awvalid_converter->vector_in(S_AXI_CTRL_awvalid);
    mp_S_AXI_CTRL_awvalid_converter->scalar_out(m_S_AXI_CTRL_awvalid_converter_signal);
    mp_S_AXI_CTRL_transactor->AWVALID(m_S_AXI_CTRL_awvalid_converter_signal);
    mp_S_AXI_CTRL_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S_AXI_CTRL_awready_converter");
    mp_S_AXI_CTRL_awready_converter->scalar_in(m_S_AXI_CTRL_awready_converter_signal);
    mp_S_AXI_CTRL_awready_converter->vector_out(S_AXI_CTRL_awready);
    mp_S_AXI_CTRL_transactor->AWREADY(m_S_AXI_CTRL_awready_converter_signal);
    mp_S_AXI_CTRL_transactor->WDATA(S_AXI_CTRL_wdata);
    mp_S_AXI_CTRL_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S_AXI_CTRL_wvalid_converter");
    mp_S_AXI_CTRL_wvalid_converter->vector_in(S_AXI_CTRL_wvalid);
    mp_S_AXI_CTRL_wvalid_converter->scalar_out(m_S_AXI_CTRL_wvalid_converter_signal);
    mp_S_AXI_CTRL_transactor->WVALID(m_S_AXI_CTRL_wvalid_converter_signal);
    mp_S_AXI_CTRL_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S_AXI_CTRL_wready_converter");
    mp_S_AXI_CTRL_wready_converter->scalar_in(m_S_AXI_CTRL_wready_converter_signal);
    mp_S_AXI_CTRL_wready_converter->vector_out(S_AXI_CTRL_wready);
    mp_S_AXI_CTRL_transactor->WREADY(m_S_AXI_CTRL_wready_converter_signal);
    mp_S_AXI_CTRL_transactor->BRESP(S_AXI_CTRL_bresp);
    mp_S_AXI_CTRL_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S_AXI_CTRL_bvalid_converter");
    mp_S_AXI_CTRL_bvalid_converter->scalar_in(m_S_AXI_CTRL_bvalid_converter_signal);
    mp_S_AXI_CTRL_bvalid_converter->vector_out(S_AXI_CTRL_bvalid);
    mp_S_AXI_CTRL_transactor->BVALID(m_S_AXI_CTRL_bvalid_converter_signal);
    mp_S_AXI_CTRL_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S_AXI_CTRL_bready_converter");
    mp_S_AXI_CTRL_bready_converter->vector_in(S_AXI_CTRL_bready);
    mp_S_AXI_CTRL_bready_converter->scalar_out(m_S_AXI_CTRL_bready_converter_signal);
    mp_S_AXI_CTRL_transactor->BREADY(m_S_AXI_CTRL_bready_converter_signal);
    mp_S_AXI_CTRL_transactor->ARADDR(S_AXI_CTRL_araddr);
    mp_S_AXI_CTRL_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S_AXI_CTRL_arvalid_converter");
    mp_S_AXI_CTRL_arvalid_converter->vector_in(S_AXI_CTRL_arvalid);
    mp_S_AXI_CTRL_arvalid_converter->scalar_out(m_S_AXI_CTRL_arvalid_converter_signal);
    mp_S_AXI_CTRL_transactor->ARVALID(m_S_AXI_CTRL_arvalid_converter_signal);
    mp_S_AXI_CTRL_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S_AXI_CTRL_arready_converter");
    mp_S_AXI_CTRL_arready_converter->scalar_in(m_S_AXI_CTRL_arready_converter_signal);
    mp_S_AXI_CTRL_arready_converter->vector_out(S_AXI_CTRL_arready);
    mp_S_AXI_CTRL_transactor->ARREADY(m_S_AXI_CTRL_arready_converter_signal);
    mp_S_AXI_CTRL_transactor->RDATA(S_AXI_CTRL_rdata);
    mp_S_AXI_CTRL_transactor->RRESP(S_AXI_CTRL_rresp);
    mp_S_AXI_CTRL_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S_AXI_CTRL_rvalid_converter");
    mp_S_AXI_CTRL_rvalid_converter->scalar_in(m_S_AXI_CTRL_rvalid_converter_signal);
    mp_S_AXI_CTRL_rvalid_converter->vector_out(S_AXI_CTRL_rvalid);
    mp_S_AXI_CTRL_transactor->RVALID(m_S_AXI_CTRL_rvalid_converter_signal);
    mp_S_AXI_CTRL_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S_AXI_CTRL_rready_converter");
    mp_S_AXI_CTRL_rready_converter->vector_in(S_AXI_CTRL_rready);
    mp_S_AXI_CTRL_rready_converter->scalar_out(m_S_AXI_CTRL_rready_converter_signal);
    mp_S_AXI_CTRL_transactor->RREADY(m_S_AXI_CTRL_rready_converter_signal);
    mp_S_AXI_CTRL_transactor->CLK(ctrl_aclk);
    mp_S_AXI_CTRL_transactor->RST(ctrl_aresetn);

    mp_impl->S_AXI_CTRL_tlm_aximm_read_socket->bind(*(mp_S_AXI_CTRL_transactor->rd_socket));
    mp_impl->S_AXI_CTRL_tlm_aximm_write_socket->bind(*(mp_S_AXI_CTRL_transactor->wr_socket));
  }
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_hmss_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "33");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_pcie_00");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,33,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
    mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
    mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
}

ulp_hmss_0_0::~ulp_hmss_0_0()
{
  delete mp_S_AXI_CTRL_transactor;
  delete mp_S_AXI_CTRL_awvalid_converter;
  delete mp_S_AXI_CTRL_awready_converter;
  delete mp_S_AXI_CTRL_wvalid_converter;
  delete mp_S_AXI_CTRL_wready_converter;
  delete mp_S_AXI_CTRL_bvalid_converter;
  delete mp_S_AXI_CTRL_bready_converter;
  delete mp_S_AXI_CTRL_arvalid_converter;
  delete mp_S_AXI_CTRL_arready_converter;
  delete mp_S_AXI_CTRL_rvalid_converter;
  delete mp_S_AXI_CTRL_rready_converter;
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_awlock_converter;
  delete mp_S00_AXI_awvalid_converter;
  delete mp_S00_AXI_awready_converter;
  delete mp_S00_AXI_wlast_converter;
  delete mp_S00_AXI_wvalid_converter;
  delete mp_S00_AXI_wready_converter;
  delete mp_S00_AXI_bvalid_converter;
  delete mp_S00_AXI_bready_converter;
  delete mp_S00_AXI_arlock_converter;
  delete mp_S00_AXI_arvalid_converter;
  delete mp_S00_AXI_arready_converter;
  delete mp_S00_AXI_rlast_converter;
  delete mp_S00_AXI_rvalid_converter;
  delete mp_S00_AXI_rready_converter;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(ulp_hmss_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(ulp_hmss_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(ulp_hmss_0_0);
#endif
