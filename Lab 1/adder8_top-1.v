`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2015 01:40:59 PM
// Design Name: 
// Module Name: adder8_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 1.00 - File updated for PYNQ-Z2 board
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder8_top(
	//Inputs to test the adder
	input wire [9:0] sw , //add-on board sw[7:0], pynq switches sw[9:8] 
	input wire [3:0] btn, //pynq btns
	//Output the result using leds
	output wire [7:0] led, // add-on board led[5:0], + LD0, LD1
	output wire ovf_ctrl   // LD3
);

	wire [7:0] adder_1st_input, adder_2nd_input;
	wire [7:0] adder_output;
	wire       adder_ovf_flag;
    
    // Set the 8-bit adder inputs 
    assign adder_1st_input = sw[7:0];  // 8 add-on board switches
    assign adder_2nd_input = {sw[9:8], btn[3:0], 2'b00}; // pynq sws and btns

	// 8-bit adder outputs
    assign led = adder_output;
    assign ovf_ctrl = adder_ovf_flag;
    
	// instantiate the 8-bit adder
    eightbit_adder adder8 (
        .a(adder_1st_input),
        .b(adder_2nd_input),
        .f(adder_output),
        .ovf(adder_ovf_flag)
        );        
        
endmodule