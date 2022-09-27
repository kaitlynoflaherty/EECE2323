`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2022 10:17:39 AM
// Design Name: 
// Module Name: pc_log
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


module pc_log(
input clk, rst, take_branch,
input [7:0] immediate,
output reg [7:0] pc);

always@( posedge clk, posedge rst)
begin
//pc <= rst? 8'b0 : (pc + ( take_branch ? 8'b1: immediate)); 
if (rst) pc <= 8'b0;
else if (take_branch) pc <= pc + immediate;
else pc <= pc+1;
end
endmodule 

