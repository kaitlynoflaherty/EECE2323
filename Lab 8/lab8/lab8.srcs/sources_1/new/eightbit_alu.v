`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2022 09:44:19 AM
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

module eightbit_alu(
    input signed [7:0] a,
    input signed[7:0] b,
    input [2:0] s,
    output reg [7:0] f,
    output reg ovf,
    output reg take_branch
    );
  
      always @(*)
    begin
        case(s)
        3'd0: //addition
        begin
            f = a+b;
            ovf = (~a[7]&~b[7]&f[7]) + (a[7]&b[7]&~f[7]);
            take_branch = 0;
        end
        3'd1: //inv
        begin 
            f = ~b;
            ovf = 0;
            take_branch = 0;
        end
        3'd2: //and
        begin
            f = a&b;
            ovf = 0;
            take_branch = 0;
        end
        3'd3: //or
        begin
            f = a|b;
            ovf = 0;
            take_branch = 0;
        end
        3'd4: //arithmetic shift right
        begin
            f = a >>> 1;
            ovf = 0;
            take_branch = 0;
        end
        3'd5: //logic shift left
        begin
            f = a<<b;
            ovf = 0;
            take_branch = 0;
        end
        3'd6: //branch if equal
        begin
            f = 0;
            ovf = 0;
            take_branch = a == b;
        end
        3'd7://branch if not equal
        begin
            f = 0;
            ovf = 0;
            take_branch = a != b;
        end
        default:
        begin
            f = 0;
            ovf = 0;
        end 
     endcase     
   end 
  
endmodule
