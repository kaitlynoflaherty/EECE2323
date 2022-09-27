`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2022 10:48:18 AM
// Design Name: 
// Module Name: alu_regfile
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


module alu_regfile(input1,

zero_reg,
alu_src1,
input2,
wr_data,

instr_i,
alu_src2,alu_op,alu_result,ovf,take_branch,rd0_addr, rd1_addr, wr_addr,wr_en, clk, rst);
    wire [7:0] rd0_data, rd1_data;
    output  [7:0] input1,input2,alu_result;
    input wire[8:0] wr_data;
    input wire[7:0]  zero_reg,instr_i;
    input wire [1:0] alu_src1,alu_src2, rd0_addr, rd1_addr, wr_addr;
    input wire [2:0] alu_op; 
    output  ovf,take_branch;
    input wire wr_en, clk, rst; 
   
    regfile rf(.rd0_data(rd0_data),.rd1_data(rd1_data),.wr_data(wr_data),.rd0_addr(rd0_addr),.rd1_addr(rd1_addr),.wr_addr(wr_addr),.wr_en(wr_en),.clk(clk),.rst(rst));
    Mux m1(.in1(rd0_data),.sel(alu_src1),.in2(zero_reg),.out(input1)); //instantiate template
    Mux m2(.in1(rd1_data),.sel(alu_src2),.in2(instr_i),.out(input2)); //instantiate template
    
    eightbit_alu a1(.a(input1),.b(input2),.sel(alu_op),.f(alu_result),.ovf(ovf),.take_branch(take_branch)); 
    
    
endmodule
