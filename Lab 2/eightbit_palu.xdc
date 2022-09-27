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
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { wire ovf_ctrl }]; # LD3

##Switches
## Add-on board switches
set_property -dict { PACKAGE_PIN V6    IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; # SWA
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; # SWB
set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; # SWC
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; # SWD
set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { sw[4] }]; # SWE
set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVCMOS33 } [get_ports { sw[5] }]; # SWF
set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { sw[6] }]; # SWG
set_property -dict { PACKAGE_PIN W9    IOSTANDARD LVCMOS33 } [get_ports { sw[7] }]; # SWH

	
## PYNQ-Z2 board switches
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { sw[8] }]; # SW0
set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { sw[9] }]; # SW1

## PYNQ-Z2 Buttons
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; # BTN0
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; # BTN1
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; # BTN2
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; # BTN3
