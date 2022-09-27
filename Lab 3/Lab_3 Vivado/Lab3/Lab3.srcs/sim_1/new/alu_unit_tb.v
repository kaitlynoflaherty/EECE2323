`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2022 10:22:52 AM
// Design Name: 
// Module Name: alu_unit_tb
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


module alu_unit_tb;


reg [7:0] a =8'b0;
reg [7:0] b = 8'b0;
reg [2:0] sel = 3'd0;
wire [7:0] f;
wire ovf;
wire take_branch;
    
    eightbit_alu UUT(
    .a(a),
    .b(b),
    .sel(sel),
    .f(f),
    .ovf(ovf),
    .take_branch(take_branch)
    );
    
    initial begin
    sel=3'd0; a=8'd0;b=8'd0; //add
    #100;
    a=-8'd12; b=-8'd34;
    #100;
    a=8'd100; b=8'd100;
    
    #100; //inver
    sel=3'd1; a=8'd1; b=8'd1;
    #100;
    a=-8'd12; b=-8'd12;
    #100;
    a=8'd100; b=8'd100;
    
    #100;//and 
    sel=3'd2; a=8'd1; b=8'd1; 
    #100;
    a=8'd1; b=8'd3;
    #100;
    a=-8'd4; b=-8'd5;
    
    #100;//or 
    sel=3'd3; a=8'd1; b=8'd1; 
    #100;
    a=8'd12; b=-8'd16;
    #100;
    a=-8'd2; b=-8'd6;
    
    #100;//shift right
    sel=3'd4; a=8'd3; 
    #100;
    a=8'd100; 
    #100;
    a=8'd5; 
    
    #100;//shift left
    sel=3'd5; a=8'd3; b=8'd1; 
    #100;//shift left
    a=8'd5; b=8'd2; 
    #100;//shift left
    a= -8'd11; b=8'd3; 
    
    #100;//branch if equal
    sel=3'd6; a=8'd5; b=8'd5; 
    #100;//branch if equal
    a=8'd5; b=8'd2; 
    #100;//branch if equal
    a= -8'd11; b=-8'd11;
    
    #100;//branch if  NOT equal
    sel=3'd7; a=-8'd11; b=8'd2; 
    #100;//branch if  NOT equal
    a=8'd5; b=8'd5; 
    #100;//branch if  NOT equal
    a=-8'd12; b=-8'd34; 
    #100;//branch if  NOT equal
    a=8'd0; b=8'd0; 
  
    
    
    
    
    
    end        
endmodule

