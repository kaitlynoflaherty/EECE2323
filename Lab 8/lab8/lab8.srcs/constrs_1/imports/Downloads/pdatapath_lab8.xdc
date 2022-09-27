## 
## Modified by John Kimani (j.kimani@northeastern.edu) March 1, 2021.
## xdc file for lab-. Sets up the LEDs and 7-Segment displays 
## on the Pynq boardand the add-on board.

## Clock signal from H16 pin
set_property PACKAGE_PIN H16 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name clk125_pin -period 8.00 -waveform {0 4} [get_ports clk]

#Button Clock input PYNQ-Z2 board BTN1
set_property PACKAGE_PIN D20 [get_ports top_pb_clk];	# BTN1 of the board					
	set_property IOSTANDARD LVCMOS33 [get_ports top_pb_clk]
	
#Reset on PYNQ-Z2 board BTN0
set_property PACKAGE_PIN D19 [get_ports rst_general];	# BTN0 of the board					
	set_property IOSTANDARD LVCMOS33 [get_ports rst_general]
	
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

##7 segment display
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[0] }]; 
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[1] }];
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[2] }];
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[3] }];
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[4] }];
set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[5] }];
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[6] }];
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { seg7_output[7] }]; # (not used)

## 7 segment display enable
set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { disp_en[0] }];
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { disp_en[1] }];
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { disp_en[2] }];
set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS33 } [get_ports { disp_en[3] }];