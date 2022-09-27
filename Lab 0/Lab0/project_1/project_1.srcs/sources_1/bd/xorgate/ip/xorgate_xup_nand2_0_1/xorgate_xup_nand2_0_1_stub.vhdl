-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Jul  5 10:37:47 2022
-- Host        : WFXA4BB6DBB7C1B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/toure.o/Desktop/Lab0/project_1/project_1.srcs/sources_1/bd/xorgate/ip/xorgate_xup_nand2_0_1/xorgate_xup_nand2_0_1_stub.vhdl
-- Design      : xorgate_xup_nand2_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xorgate_xup_nand2_0_1 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );

end xorgate_xup_nand2_0_1;

architecture stub of xorgate_xup_nand2_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_nand2,Vivado 2020.1";
begin
end;
