`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 04:43:08 PM
// Design Name: 
// Module Name: alu_regfile_vio_top
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


module alu_regfile_vio_top(
    input clk,				// clock for vio and RegFile
    input reset,			// BTN0 for for reset
    output [7:0] led,		// add-on board led[5:0], + LD0, LD1
	output wire ovf_ctrl    // LD3
    );
    
    wire [7:0] alu_input1, alu_input2, alu_input2_instr_src;
    wire [7:0] alu_output;
    wire [2:0] ALUOp;
    wire       alu_ovf;
    wire       take_branch;

    wire RegWrite;	//Write enable

    wire [1:0] regfile_ReadAddress1;	//source register1 address
    wire [1:0] regfile_ReadAddress2;	//source register2 address
    wire [1:0] regfile_WriteAddress;	//destination register address
    wire [8:0] regfile_WriteData;		//result data
    wire [8:0] regfile_ReadData1;		//source register1 data
    wire [8:0] regfile_ReadData2;		//source register2 data
    
    wire ALUSrc1, ALUSrc2;
    reg [7:0] zero_register = 0;
	
	// Assign LEDs
    assign led = alu_output;
	assign ovf_ctrl = alu_ovf;

   // Instantiate RegFile module here

   // Instantiate Muxes here

   // Instantiate ALU module here
      
   // Instantiate VIO module here
   
endmodule
