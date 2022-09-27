`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		Northeastern University
// Engineer: 		J. Kimani
// 
// Create Date: 	09/30/2020 06:09:18 PM
// Design Name: 	7 Segment BCD Display
// Module Name: 	Adaptor_display
// Project Name: 
// Target Devices: 	TUL PYNQ Z2 With Adaptor Board 
// Tool Versions: 	Xilinx Vivado 2018.3
// Description: 	Displays BCD digits on the 7-Segment Displays
// 
// Dependencies: 	All modules included in this file
// 
// Revision:		Version 1.0
// Additional Comments:	Included XDC file can be used
// 
//////////////////////////////////////////////////////////////////////////////////
/*
	// Usage - Replace opx with actual signals in top module
	Adaptor_display display(.clk(op0), 				// system clock
							.input_value(op1),		// 8-bit input [7:0] value to display
							.disp_en(op2),			// output [3:0] 7 segment display enable
							.seg7_output(op3));		// output [6:0] 7 segment signals
*/

/*
*	Top module for the adaptor displays. Instantiate this module as shown above in your design
*/
module Adaptor_display(input clk, input[7:0] input_value, output[3:0] disp_en, output [6:0]seg7_output);
	
	wire refresh_clock;							// 10KHz refresh clock for displays
	wire [1:0] current_display;					// Indicates the active display
	wire [3:0] output_digit;					// digit displayed on active display
	wire [3:0] digit3, digit2, digit1, digit0;	// 4 digits for each of the 4 displays
	
	assign digit3 = 4'b0;	// 4th display used to display '-' for -ve inputs
							
	// Generate a 10KHz switching frequency clock for the displays
	clockDivider10KHz refreshClock(	.clk(clk),
								.divided_clk(refresh_clock));
	
	// Change the active display
	displaySelector dSelect(.refresh_clk(refresh_clock),
							.dispSelect(current_display));
	
	// Activate the selected active display 
	activateDisplay dispEn(	.dispSelect(current_display),
							.dispID(disp_en));
	
	// Convert the 8-bit input into several digits as needed
	binary_8to_BCD binToBCD(.clk(clk), 
							.input_8bits(input_value[7:0]),
							.ones(digit0),
							.tens(digit1),
							.hundreds(digit2));
	
	// Choose the correct digit for the current active display
	bcdSelector bcd_select(	.x0(digit0), 
							.x1(digit1),
							.x2(digit2),
							.x3(digit3),
							.s(current_display),
							.y(output_digit));
	
	// Set teh corresponding segments for the selected 4-bit digit
	bcdTo7Segment bcd1(	.x(output_digit), 
						.sign(input_value[7]),
						.curr_disp(current_display),
						.seg(seg7_output));

endmodule

/*
*	Generates a 10KHz switching frequency clock for the displays
*/
module clockDivider10KHz(input clk, output reg divided_clk);
	
	localparam div_value = 6249; // 6249 for 10KHz desired frequency
	// div_value = 125MHz / (2 * desired_freq) - 1
	integer counter_value = 0;
	always@ (posedge clk)
		begin
			if(counter_value == div_value) begin
				divided_clk <= ~divided_clk;
				counter_value <= 0;
				end
			else begin
				divided_clk <= divided_clk;
				counter_value <= counter_value + 1;
				end
		end

endmodule

/*
*	Changes the selected display based on the switching frequency
*/
module displaySelector(input refresh_clk, output reg [1:0] dispSelect);
	always @(posedge refresh_clk)
		dispSelect <= dispSelect + 1;
endmodule

/*
*	Activates the selected display 
*/
module activateDisplay(input [1:0] dispSelect, output reg [3:0] dispID = 0);
	always@ (dispSelect)
		begin
			case(dispSelect)
				2'b00: dispID = 4'b1110;
				2'b01: dispID = 4'b1101;
				2'b10: dispID = 4'b1011;
				2'b11: dispID = 4'b0111;
				default:  dispID = 4'b1111;
			endcase
		end
endmodule

/*
*	Converts an 8-bit number into several digits as needed
*/
module binary_8to_BCD( input clk,
						input [7:0] input_8bits,
						output reg [3:0] ones = 0,
						output reg [3:0] tens = 0,
						output reg [3:0] hundreds = 0
						);
						
	reg [3:0] i = 0;
	reg [19:0] shift_reg = 0;
	reg [3:0] temp_ones = 0;
	reg [3:0] temp_tens = 0;
	reg [3:0] temp_hundreds = 0;
	reg [7:0] eight_bit_val = 0;
	
	reg [7:0] old_8bit_val = 0;
	
	always@ (posedge clk)
	begin
		if (input_8bits[7] == 1'b1)
			eight_bit_val = ~input_8bits + 1;
		else
			eight_bit_val = input_8bits;
			
		if (i==0 & (old_8bit_val != eight_bit_val)) begin
			shift_reg = 20'd0;
			old_8bit_val = eight_bit_val;
			shift_reg[7:0] = eight_bit_val;
			temp_hundreds = shift_reg[19:16];
			temp_tens = shift_reg[15:12];
			temp_ones = shift_reg[11:8];
			i = i + 1;
		end
		if ((i < 9) & (i > 0)) begin
			if(temp_hundreds >= 5) temp_hundreds = temp_hundreds + 3;
			if(temp_tens >= 5) temp_tens= temp_tens + 3;
			if(temp_ones >= 5) temp_ones = temp_ones + 3;
			// Put them in shift_reg high bits
			shift_reg[19:8] = {temp_hundreds, temp_tens, temp_ones};
			// Shift by left by 1
			shift_reg = shift_reg << 1;
			temp_hundreds = shift_reg[19:16];
			temp_tens = shift_reg[15:12];
			temp_ones = shift_reg[11:8];
			i = i + 1;
		end
		if (i == 9) begin
			i = 0;
			hundreds = temp_hundreds;
			tens = temp_tens;
			ones = temp_ones;
		end
	end
endmodule

/*
*	Selects the correct digit to write to the active display
*/
module bcdSelector(input[3:0] x0, input[3:0] x1, input[3:0] x2, input[3:0] x3, input[1:0] s, output [3:0]y);
	
	reg[3:0] y;
	always@(x0, x1, x2, x3, s)
		case(s)
			0: y = x0;
			1: y = x1;
			2: y = x2;
			3: y = x3;
			default: y = 3'bxx;
		endcase
	
endmodule

/*
*	Decodes a 4-bit value to the corresponding 7 segments
*/
module bcdTo7Segment(input [3:0] x, input sign, input [1:0] curr_disp, output reg [6:0] seg);
	always @(x, sign, curr_disp) begin
		if (curr_disp == 2'b11)				// if active display is the 4th display
			seg = {~sign, 6'b111111};		// set it to '-' for -ve input value
		else begin							// 
			seg[6] = (~x[3] & ~x[2] & ~x[1]) | (x[2] & x[1] & x[0]);  // seg g or 6
			seg[5] = (~x[3] & ~x[2] & x[0]) | (x[1] & x[0]) | (~x[3] & ~x[2] & x[1]);  // seg f or 5
			seg[4] = x[0] | (x[2] & ~x[1]);  // seg e or 4
			seg[3] = (x[2] & ~x[1] & ~x[0]) | (x[2] & x[1] & x[0]) | (~x[3] & ~x[2] & ~x[1] & x[0]);  // seg d or 3
			seg[2] = ~x[2] & x[1] & ~x[0];  // seg c or 2
			seg[1] = (x[2] & ~x[1] & x[0]) | (x[2] & x[1] & ~x[0]);  // seg b or 1
			seg[0] = (x[2] & ~x[1] & ~x[0]) | (~x[3] & ~x[2] & ~x[1] & x[0]);  // seg a or 0
		end
	end
endmodule
