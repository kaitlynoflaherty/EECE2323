// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Aug  2 10:25:35 2022
// Host        : WFXA4BB6DBB7727 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_in7, probe_in8, probe_out0, probe_out1, probe_out2, 
  probe_out3, probe_out4, probe_out5, probe_out6, probe_out7, probe_out8, probe_out9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[8:0],probe_in1[7:0],probe_in2[7:0],probe_in3[7:0],probe_in4[7:0],probe_in5[0:0],probe_in6[0:0],probe_in7[7:0],probe_in8[8:0],probe_out0[0:0],probe_out1[7:0],probe_out2[0:0],probe_out3[0:0],probe_out4[2:0],probe_out5[0:0],probe_out6[0:0],probe_out7[1:0],probe_out8[1:0],probe_out9[1:0]" */;
  input clk;
  input [8:0]probe_in0;
  input [7:0]probe_in1;
  input [7:0]probe_in2;
  input [7:0]probe_in3;
  input [7:0]probe_in4;
  input [0:0]probe_in5;
  input [0:0]probe_in6;
  input [7:0]probe_in7;
  input [8:0]probe_in8;
  output [0:0]probe_out0;
  output [7:0]probe_out1;
  output [0:0]probe_out2;
  output [0:0]probe_out3;
  output [2:0]probe_out4;
  output [0:0]probe_out5;
  output [0:0]probe_out6;
  output [1:0]probe_out7;
  output [1:0]probe_out8;
  output [1:0]probe_out9;
endmodule
