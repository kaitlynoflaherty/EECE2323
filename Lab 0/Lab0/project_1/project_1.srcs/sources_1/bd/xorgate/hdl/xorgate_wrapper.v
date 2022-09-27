//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Jul  5 10:20:42 2022
//Host        : WFXA4BB6DBB7C1B running 64-bit major release  (build 9200)
//Command     : generate_target xorgate_wrapper.bd
//Design      : xorgate_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xorgate_wrapper
   (a,
    b,
    c);
  input a;
  input b;
  output c;

  wire a;
  wire b;
  wire c;

  xorgate xorgate_i
       (.a(a),
        .b(b),
        .c(c));
endmodule
