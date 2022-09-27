`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2022 09:44:34 AM
// Design Name: 
// Module Name: regfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regfile #(parameter WordSize = 8, AddrSize = 2)(
 output [WordSize-1: 0]  rd0_data, rd1_data,
 input   [WordSize: 0]  wr_data,
 input   [AddrSize-1: 0]  rd0_addr, rd1_addr, wr_addr,
 input   wr_en, clk, rst);
 //32bit x32words memory
 reg  [WordSize-1:0] RegFile[2**AddrSize-1:0];
 integer i = 0; //for the loop
 assign rd0_data = RegFile[rd0_addr];
 assign rd1_data = RegFile[rd1_addr];
 always @ (posedge clk, posedge rst)
  if (rst) //clear the contents of all registers
    for (i=0; i < 2**AddrSize; i=i+1) RegFile[i] <= 0;
  else if (wr_en == 1'b1) RegFile[wr_addr] <= wr_data;
endmodule

