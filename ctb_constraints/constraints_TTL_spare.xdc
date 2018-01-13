#Spare TTL inputs
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TTL_spare_in[0]}]
set_property PACKAGE_PIN U20 [get_ports {TTL_spare_in[0]}]
set_property PACKAGE_PIN T20 [get_ports {TTL_spare_in[1]}]
set_property PACKAGE_PIN R16 [get_ports {TTL_spare_in[2]}]
set_property PACKAGE_PIN P19 [get_ports {TTL_spare_in[3]}]
set_property PACKAGE_PIN Y19 [get_ports {TTL_spare_in[4]}]
set_property PACKAGE_PIN N18 [get_ports {TTL_spare_in[5]}]
set_property PACKAGE_PIN Y18 [get_ports {TTL_spare_in[6]}]
set_property PACKAGE_PIN U20 [get_ports {TTL_spare_in[7]}]

#Mapping of the board names/numbers to the crate connections (format: board=case)
#TTL SPARE IO  3=2,2=4,1=6,0=8
#TTL TRIG IN   3=1,2=3,1=5,0=7
