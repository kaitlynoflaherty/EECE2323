// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul  5 10:37:47 2022
// Host        : WFXA4BB6DBB7C1B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top xorgate_xup_nand2_0_2 -prefix
//               xorgate_xup_nand2_0_2_ xorgate_xup_nand2_0_1_stub.v
// Design      : xorgate_xup_nand2_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_nand2,Vivado 2020.1" *)
module xorgate_xup_nand2_0_2(a, b, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,y" */;
  input a;
  input b;
  output y;
endmodule
