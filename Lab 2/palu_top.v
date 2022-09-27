`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Tlalit Bruno
// 
// Create Date: 08/17/2014 02:18:36 PM
// Design Name: 
// Module Name: palu_top
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


module palu_top(
		//Inputs from switches and buttons for testing the circuit on the board
		input wire [9:0] sw , //add-on board sw[7:0], pynq switches sw[9:8]
		input wire [3:0] btn, //pynq btns
		//Output the ALU result on LEDS
		output wire [7:0] led, // add-on board led[5:0], + LD0, LD1
		output wire ovf_ctrl    // LD3
    );
    
    wire [7:0] palu_1st_input, palu_2nd_input;
    wire [7:0] palu_output;
    wire [1:0] alu_operation_sel;
    wire       palu_ovf_flag;
    
    // Test the lower 4 bits
    assign palu_1st_input = sw[7:0];  // 8 add-on board switches
    assign palu_2nd_input = {4'b0001, btn[3:0]}; // constant values and pynq 4 btns
    
    assign alu_operation_sel = sw[9:8]; //assign the SW1-0 from the pynq board to the ALU operation select bus

	assign led = palu_output;
	assign ovf_ctrl = palu_ovf_flag;
	
	//Instantiate the eightbit_palu module here	
    eightbit_palu palu(
        .s(alu_operation_sel),
        .a(palu_1st_input),
        .b(palu_2nd_input),
        .f(palu_output),
        .ovf(palu_ovf_flag)
        );
        
endmodule