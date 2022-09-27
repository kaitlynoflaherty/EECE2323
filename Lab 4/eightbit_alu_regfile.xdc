## Clock signal from ENET Controller pin
set_property PACKAGE_PIN H16 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name clk125_pin -period 8.00 -waveform {0 4} [get_ports clk]

#Reset on PYNQ-Z2 board
set_property PACKAGE_PIN D19 [get_ports reset];	# BTN0 of the board					
	set_property IOSTANDARD LVCMOS33 [get_ports reset]

##LEDs
## Add-on board LEDs
set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; # LDA
set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; # LDB
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; # LDC
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; # LDD
set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; # LDE
set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; # LDF

## PYNQ-Z2 board LEDs
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { led[6] }]; # LD0
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { led[7] }]; # LD1
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led[8] }]; # LD2 (not used)
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { ovf_ctrl }]; # LD3
