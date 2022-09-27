`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Tlalit Bruno
// 
// Create Date: 08/17/2020 02:18:36 PM
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


module eightbit_alu_top(
        input clk,				// clock for vio
		output wire [7:0] led,   // add-on board led[5:0], + LD0, LD1
		output wire ovf_ctrl    // LD3
    );
    
    wire [7:0] alu_1st_input, alu_2nd_input;
    wire [7:0] alu_output;
    wire [2:0] alu_operation_sel;
    wire       alu_ovf_flag, alu_take_branch;

    assign led = alu_output;
	assign ovf_ctrl = alu_ovf_flag;
	
	//Instantiate the eightbit_alu module here	
    eightbit_alu alu(
        .s(alu_operation_sel),
        .a(alu_1st_input),
        .b(alu_2nd_input),
        .f(alu_output),
        .ovf(alu_ovf_flag),
        .take_branch(alu_take_branch)
        );

    //Instantiate the VIO core here
    //Find the instantiate template from Sources Pane, IP sources -> Instantiation Template -> vio_0.veo (double click to open the file)        
    vio_0 vio (
          .clk(clk),                // input wire clk
          .probe_in0(alu_output),    // input wire [7 : 0] probe_in0
          .probe_in1(alu_ovf_flag),    // input wire [0 : 0] probe_in1
          .probe_in2(alu_take_branch),    // input wire [0 : 0] probe_in2
          .probe_out0(alu_1st_input),  // output wire [7 : 0] probe_out0
          .probe_out1(alu_2nd_input),  // output wire [7 : 0] probe_out1
          .probe_out2(alu_operation_sel)  // output wire [2 : 0] probe_out2
        );
endmodule