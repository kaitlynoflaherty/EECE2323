`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2022 10:11:34 AM
// Design Name: 
// Module Name: eightbit_alu
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
    input [2:0] sel,
    output reg [7:0] f,
    output reg ovf,
    output reg take_branch
    );
  
    always@(a or b or sel)
    begin
        case(sel) 
            3'b000: //add 
            begin
                f = a + b;
                ovf  =((a[7] & b[7]) &!f[7]) | ((!a[7] & !b[7])&f[7]);
                take_branch = 0; 
            end
            
            3'b001: //b inversion
            begin
                f= !b;
                ovf = 0;
                take_branch = 0; 
            end     
                      
            3'b010: //AND
            begin
                f = a * b;
                ovf = 0;
                take_branch = 0; 
            end
            
            3'b011: //OR
            begin
                f = a | b;
                ovf = 0;
                take_branch = 0; 
            end
            
            3'b100: //Shift right
            begin
                f = a >>> 1;
                ovf = 0;
                take_branch = 0; 
            end
            
            3'b101: //shift left
            begin
                f = a << b;
                ovf = 0;
                take_branch = 0; 
            end
            
            3'b110: //branch if equal
            begin
                f = 0;
                ovf = 0;
                take_branch = (a == b); 
            end
            
            3'b111: //Branch if not equal
            begin
                f = 0;
                ovf = 0;
                take_branch = (a != b);
            end
            
            default: 
             begin
                f = 0;
                take_branch=0; 
                ovf  =0;
            end
            
        endcase
    end
    

endmodule
