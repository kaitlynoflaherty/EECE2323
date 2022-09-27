// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:vio:3.0
// IP Revision: 19

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
vio_0 your_instance_name (
  .clk(clk),                // input wire clk
  .probe_in0(probe_in0),    // input wire [0 : 0] probe_in0
  .probe_in1(probe_in1),    // input wire [8 : 0] probe_in1
  .probe_in2(probe_in2),    // input wire [7 : 0] probe_in2
  .probe_in3(probe_in3),    // input wire [7 : 0] probe_in3
  .probe_in4(probe_in4),    // input wire [7 : 0] probe_in4
  .probe_in5(probe_in5),    // input wire [7 : 0] probe_in5
  .probe_in6(probe_in6),    // input wire [0 : 0] probe_in6
  .probe_in7(probe_in7),    // input wire [0 : 0] probe_in7
  .probe_in8(probe_in8),    // input wire [7 : 0] probe_in8
  .probe_out0(probe_out0),  // output wire [0 : 0] probe_out0
  .probe_out1(probe_out1),  // output wire [7 : 0] probe_out1
  .probe_out2(probe_out2),  // output wire [0 : 0] probe_out2
  .probe_out3(probe_out3),  // output wire [0 : 0] probe_out3
  .probe_out4(probe_out4),  // output wire [2 : 0] probe_out4
  .probe_out5(probe_out5),  // output wire [0 : 0] probe_out5
  .probe_out6(probe_out6),  // output wire [0 : 0] probe_out6
  .probe_out7(probe_out7),  // output wire [1 : 0] probe_out7
  .probe_out8(probe_out8),  // output wire [1 : 0] probe_out8
  .probe_out9(probe_out9)  // output wire [1 : 0] probe_out9
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file vio_0.v when simulating
// the core, vio_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

