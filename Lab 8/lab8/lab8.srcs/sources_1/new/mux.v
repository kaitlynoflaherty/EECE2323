`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2022 09:45:11 AM
// Design Name: 
// Module Name: mux
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


module Mux(in1,in2,sel,out);
    output reg [7:0] out;
    input wire [7:0] in1,in2;
    input wire sel;
    always@(*)
    begin
    if(sel)
    out = in2;
    else
    out = in1;
end
endmodule

