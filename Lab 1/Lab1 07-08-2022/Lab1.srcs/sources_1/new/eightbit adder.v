`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2022 10:53:47 AM
// Design Name: 
// Module Name: eightbit adder
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


module eightbit_adder(
    input [7:0] A,
    input [7:0] B,
    output [7:0] F,
    output OVF
    );
    
    assign OVF = ((A[7] & B[7])^F[7]) | ( (!A[7] & !B[7])^F[7]);
    assign F = A + B;
endmodule
