// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Aug  2 09:52:41 2022
// Host        : WFXA4BB6DBB7727 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/toure.o/Desktop/Lab5/project_1/project_1.srcs/sources_1/ip/data_memory/data_memory_stub.v
// Design      : data_memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.1" *)
module data_memory(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],d[8:0],clk,we,spo[8:0]" */;
  input [7:0]a;
  input [8:0]d;
  input clk;
  input we;
  output [8:0]spo;
endmodule
