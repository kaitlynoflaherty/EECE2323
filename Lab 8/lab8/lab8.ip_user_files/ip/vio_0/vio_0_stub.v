// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug 17 10:31:30 2022
// Host        : WFXA4BB6DB8D3B5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/oflaherty.k.NUNET/lab8/lab8.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.1" *)
module vio_0(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_in7, probe_in8, probe_in9, probe_in10, probe_in11, 
  probe_in12, probe_in13, probe_in14, probe_in15, probe_in16, probe_in17, probe_in18, probe_in19, 
  probe_in20, probe_in21, probe_in22)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[7:0],probe_in1[0:0],probe_in2[0:0],probe_in3[7:0],probe_in4[7:0],probe_in5[7:0],probe_in6[7:0],probe_in7[8:0],probe_in8[8:0],probe_in9[3:0],probe_in10[1:0],probe_in11[1:0],probe_in12[1:0],probe_in13[7:0],probe_in14[0:0],probe_in15[0:0],probe_in16[0:0],probe_in17[0:0],probe_in18[2:0],probe_in19[0:0],probe_in20[0:0],probe_in21[7:0],probe_in22[15:0]" */;
  input clk;
  input [7:0]probe_in0;
  input [0:0]probe_in1;
  input [0:0]probe_in2;
  input [7:0]probe_in3;
  input [7:0]probe_in4;
  input [7:0]probe_in5;
  input [7:0]probe_in6;
  input [8:0]probe_in7;
  input [8:0]probe_in8;
  input [3:0]probe_in9;
  input [1:0]probe_in10;
  input [1:0]probe_in11;
  input [1:0]probe_in12;
  input [7:0]probe_in13;
  input [0:0]probe_in14;
  input [0:0]probe_in15;
  input [0:0]probe_in16;
  input [0:0]probe_in17;
  input [2:0]probe_in18;
  input [0:0]probe_in19;
  input [0:0]probe_in20;
  input [7:0]probe_in21;
  input [15:0]probe_in22;
endmodule
