`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2021 03:57:05 PM
// Design Name: 
// Module Name: top
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


module top(
input aclk,aresetn,
input s_axis_phase_tvalid,
output s_axis_phase_tready,
input [15:0]s_axis_phase_tdata,

input s_axis_cartesian_tvalid,
output s_axis_cartesian_tready,
input [31:0]s_axis_cartesian_tdata,

output m_axis_dout_tvalid,
output [31:0]m_axis_dout_tdata
);


cordic_0 your_instance_name (
  .aclk(aclk),                                        // input wire aclk
  .aresetn(aresetn),                                  // input wire aresetn
  .s_axis_phase_tvalid(s_axis_phase_tvalid),          // input wire s_axis_phase_tvalid
  .s_axis_phase_tready(s_axis_phase_tready),          // output wire s_axis_phase_tready
  .s_axis_phase_tdata(s_axis_phase_tdata),            // input wire [15 : 0] s_axis_phase_tdata
  .s_axis_cartesian_tvalid(s_axis_cartesian_tvalid),  // input wire s_axis_cartesian_tvalid
  .s_axis_cartesian_tready(s_axis_cartesian_tready),  // output wire s_axis_cartesian_tready
  .s_axis_cartesian_tdata(s_axis_cartesian_tdata),    // input wire [31 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tvalid(m_axis_dout_tvalid),            // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(m_axis_dout_tdata)              // output wire [31 : 0] m_axis_dout_tdata
);


endmodule
