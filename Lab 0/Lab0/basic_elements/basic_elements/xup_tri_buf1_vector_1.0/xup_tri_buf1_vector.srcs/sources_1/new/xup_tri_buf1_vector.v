`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_tri_buf1_vector
//////////////////////////////////////////////////////////////////////////////////
module xup_tri_buf1_vector #(parameter SIZE = 4 , DELAY = 3)(
    input [SIZE-1:0] a,
    input enable,
    output [SIZE-1:0] y
    );
    
    assign #DELAY y = (enable) ? a : 'bz;
    
endmodule

