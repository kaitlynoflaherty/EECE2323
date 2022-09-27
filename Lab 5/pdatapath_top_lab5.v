`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Majid Sabbagh (sabbagh.m@husky.neu.edu)
// 
// Create Date: 08/17/2014 02:18:36 PM
// Design Name: 
// Module Name: eightbit_alu_top
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

module pdatapath_top(
		input wire clk,
        input wire rst_general
		output [7:0] led,		// add-on board led[5:0], + LD0, LD1
		output wire ovf_ctrl    // LD3		
    );

    wire [7:0] alu_input1, alu_input2, alu_input2_instr_src;
    wire [7:0] alu_output;
    wire [2:0] ALUOp;
    wire       alu_ovf;
    wire       take_branch;

    wire RegWrite;//Write enable
    //wire RegRead;//Read enable
    wire [1:0] regfile_ReadAddress1;	//source register1 address
    wire [1:0] regfile_ReadAddress2;	//source register2 address
    wire [1:0] regfile_WriteAddress;	//destination register address
    wire [8:0] regfile_WriteData;		//result data
    wire [8:0] regfile_ReadData1;		//source register1 data
    wire [8:0] regfile_ReadData2;		//source register2 data
    
    wire ALUSrc1, ALUSrc2;
	wire [8:0] alu_result;
    reg [7:0] zero_register = 0;		//ZERO constant
    
    wire MemtoReg;
    wire MemWrite;
    
    wire [8:0] Data_Mem_Out;
	assign alu_result = {alu_ovf, alu_output};
	
		// Assign LEDs
    assign led = alu_output;
	assign ovf_ctrl = alu_ovf;
	
       
    /* Instantiate the reg-file, MUXes, ALU that you have created here
	
	
    /* Instantiate the data memory that you have created here*/	
	
	/* Instantiate the VIO that you have created here, 
	make sure the number of probes and their width are correctly configured */




    
endmodule