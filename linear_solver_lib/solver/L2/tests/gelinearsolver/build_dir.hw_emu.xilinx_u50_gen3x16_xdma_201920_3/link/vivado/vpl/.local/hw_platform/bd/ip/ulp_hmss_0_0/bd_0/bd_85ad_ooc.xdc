################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name hbm_aclk -period 2.222 [get_ports hbm_aclk]
create_clock -name hbm_ref_clk -period 10 [get_ports hbm_ref_clk]
create_clock -name ctrl_aclk -period 20 [get_ports ctrl_aclk]
create_clock -name aclk -period 4 [get_ports aclk]

################################################################################