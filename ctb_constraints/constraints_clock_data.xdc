#250MHz received clock
set_property IOSTANDARD LVDS_25 [get_ports clk_in_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_in_n]
#Data inputs, from timing board
set_property IOSTANDARD LVDS_25 [get_ports data_in_p]
set_property IOSTANDARD LVDS_25 [get_ports data_in_n]
#Data outputs, to timing board
set_property IOSTANDARD LVDS_25 [get_ports {data_out_p}]
set_property IOSTANDARD LVDS_25 [get_ports {data_out_n}]
##################################################################
# Received Clock input
set_property PACKAGE_PIN T9 [get_ports clk_in_p]
set_property PACKAGE_PIN U10 [get_ports clk_in_n]
# Data input
set_property PACKAGE_PIN Y12 [get_ports data_in_p]
set_property PACKAGE_PIN Y13 [get_ports data_in_n]
#Data output, to timing board
set_property PACKAGE_PIN V6 [get_ports data_out_p]
set_property PACKAGE_PIN W6 [get_ports data_out_n]
##################################################################
#Differential termination
set_property DIFF_TERM TRUE [get_ports clk_in_p]
set_property DIFF_TERM TRUE [get_ports clk_in_n]
set_property DIFF_TERM FALSE [get_ports data_in_p]
set_property DIFF_TERM FALSE [get_ports data_in_n]
set_property DIFF_TERM FALSE [get_ports data_out_p]
set_property DIFF_TERM FALSE [get_ports data_out_n]
############################################################
#Clock Constraints
#---Local FPGA clock
create_clock -period 20.000 -name clk_fpga_0 -add [get_pins system_i/processing_system7_0/FCLK_CLK0]
#--250MHz clock from timing board
create_clock -period 4.000 [get_ports clk_in_p]
#--50MHz clock derived from the external clock
create_generated_clock -period 20.000 [get_pins pdts_endpoint_0/U0/clkgen/mmcm/CLKOUT0]
#---Sets the clock from the timing board and any clock derived from it, asynchronous to local FPGA clock
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks [get_ports clk_in_p]] -group [get_clocks clk_fpga_0]
