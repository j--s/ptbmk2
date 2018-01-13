#LVCMOS input and outputs
#Note: LVCMOS Spare Ch 1,2 replaced with Clock signal
#Due to clock mod Bank 13 was switched to 2.5V, hence the LVCMOS25 setting
set_property IOSTANDARD LVCMOS25 [get_ports {LVCMOS_spare_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {LVCMOS_spare_in}]
set_property PACKAGE_PIN P16 [get_ports {LVCMOS_spare_in}]
set_property PACKAGE_PIN T5 [get_ports {LVCMOS_spare_out}]


#CTB2: 2-3 Out
