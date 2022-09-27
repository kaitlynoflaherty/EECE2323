//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Jul  5 10:20:42 2022
//Host        : WFXA4BB6DBB7C1B running 64-bit major release  (build 9200)
//Command     : generate_target xorgate.bd
//Design      : xorgate
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xor_2_imp_1PV4XG0
   (a,
    b,
    c);
  input a;
  input b;
  output c;

  wire a_1;
  wire b_1;
  wire xup_nand2_0_y;
  wire xup_nand2_1_y;
  wire xup_nand2_2_y;
  wire xup_nand2_3_y;

  assign a_1 = a;
  assign b_1 = b;
  assign c = xup_nand2_2_y;
  xorgate_xup_nand2_0_0 xup_nand2_0
       (.a(a_1),
        .b(xup_nand2_1_y),
        .y(xup_nand2_0_y));
  xorgate_xup_nand2_0_1 xup_nand2_1
       (.a(a_1),
        .b(b_1),
        .y(xup_nand2_1_y));
  xorgate_xup_nand2_0_2 xup_nand2_2
       (.a(xup_nand2_0_y),
        .b(xup_nand2_3_y),
        .y(xup_nand2_2_y));
  xorgate_xup_nand2_0_3 xup_nand2_3
       (.a(xup_nand2_1_y),
        .b(b_1),
        .y(xup_nand2_3_y));
endmodule

(* CORE_GENERATION_INFO = "xorgate,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xorgate,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xorgate.hwdef" *) 
module xorgate
   (a,
    b,
    c);
  input a;
  input b;
  output c;

  wire a_1;
  wire b_1;
  wire xup_nand2_2_y;

  assign a_1 = a;
  assign b_1 = b;
  assign c = xup_nand2_2_y;
  xor_2_imp_1PV4XG0 xor_2
       (.a(a_1),
        .b(b_1),
        .c(xup_nand2_2_y));
endmodule
