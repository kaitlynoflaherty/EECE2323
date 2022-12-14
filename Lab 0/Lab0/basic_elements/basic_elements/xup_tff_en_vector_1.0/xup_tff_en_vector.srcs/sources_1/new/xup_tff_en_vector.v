`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_tff_en_vector 
//////////////////////////////////////////////////////////////////////////////////
module xup_tff_en_vector #(parameter SIZE = 4 , DELAY = 3)(
  input [SIZE-1:0] t,
  input clk,
  input en,
  output [SIZE-1:0] q
  );
  
  reg [SIZE-1:0] q;
  initial q = 0;
  
  always @(posedge clk)
  begin 
      if(en)
          q <= #DELAY t^q;
  end
endmodule
