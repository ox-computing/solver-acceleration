# aclk {FREQ_HZ 250000000 CLK_DOMAIN cd_pcie_00 PHASE 0} aclk1 {FREQ_HZ 450000000 CLK_DOMAIN ulp_hbm_aclk_in PHASE 0.000}
# Clock Domain: cd_pcie_00
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: ulp_hbm_aclk_in
create_clock -name aclk1 -period 2.222 [get_ports aclk1]
# Generated clocks
