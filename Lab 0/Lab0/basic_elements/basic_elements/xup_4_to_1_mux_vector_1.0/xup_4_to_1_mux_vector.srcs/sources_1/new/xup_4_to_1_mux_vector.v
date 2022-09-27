`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_4_to_1_mux_vector
//////////////////////////////////////////////////////////////////////////////////
module xup_4_to_1_mux_vector#(parameter SIZE = 4 , DELAY = 3)(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    input [SIZE-1:0] c,
    input [SIZE-1:0] d,
    input [1:0] select,
    output [SIZE-1:0] y
    );
    reg [SIZE-1:0] data;
    
    always @(*) begin
        case(select)
            2'b00 : data <= a;
            2'b01 : data <= b;
            2'b10 : data <= c;
            2'b11 : data <= d;
            default : data <= a;
        endcase
    end
    
    assign #DELAY y = data;
        
endmodule
