`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: xup_or_vector
/////////////////////////////////////////////////////////////////
module xup_or_vector #(parameter SIZE=2, DELAY=3)(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    output [SIZE-1:0] y
    );

    or #DELAY(y, a, b);

endmodule