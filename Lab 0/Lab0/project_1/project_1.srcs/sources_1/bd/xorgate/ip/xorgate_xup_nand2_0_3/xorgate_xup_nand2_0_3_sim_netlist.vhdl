-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Jul  5 10:37:47 2022
-- Host        : WFXA4BB6DBB7C1B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top xorgate_xup_nand2_0_3 -prefix
--               xorgate_xup_nand2_0_3_ xorgate_xup_nand2_0_1_sim_netlist.vhdl
-- Design      : xorgate_xup_nand2_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xorgate_xup_nand2_0_3 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xorgate_xup_nand2_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xorgate_xup_nand2_0_3 : entity is "xorgate_xup_nand2_0_1,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xorgate_xup_nand2_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xorgate_xup_nand2_0_3 : entity is "xup_nand2,Vivado 2020.1";
end xorgate_xup_nand2_0_3;

architecture STRUCTURE of xorgate_xup_nand2_0_3 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
