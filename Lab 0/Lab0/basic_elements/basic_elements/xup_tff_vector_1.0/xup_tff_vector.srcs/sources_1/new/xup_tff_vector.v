`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_tff_vector
//////////////////////////////////////////////////////////////////////////////////
module xup_tff_vector #(parameter SIZE = 4 , DELAY = 3)(
  input [SIZE-1:0] t,
  input clk,
  output [SIZE-1:0] q
  );
  reg q;
  initial q =0;
  
  always @(posedge clk)
  begin 
      q <= #DELAY t^q;
  end
  
endmodule
