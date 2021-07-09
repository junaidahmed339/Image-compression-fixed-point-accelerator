`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2021 08:15:03 PM
// Design Name: 
// Module Name: new_sim
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


module new_sim(

    );


reg aclk=0;
reg aresetn=1;
reg s_axis_phase_tvalid=0;
wire s_axis_phase_tready;
reg [15:0]s_axis_phase_tdata=0;
reg s_axis_cartesian_tvalid=0;
wire s_axis_cartesian_tready;
reg [31:0]s_axis_cartesian_tdata=0;
wire m_axis_dout_tvalid;
wire [31:0]m_axis_dout_tdata;


always 
begin
    aclk = 1'b1; 
    #5; // high for 20 * timescale = 20 ns

    aclk = 1'b0;
    #5; // low for 20 * timescale = 20 ns
end

top uut1(
.aclk(aclk),.s_axis_phase_tvalid(s_axis_phase_tvalid),.s_axis_phase_tready(s_axis_phase_tready),
.s_axis_phase_tdata(s_axis_phase_tdata),.s_axis_cartesian_tvalid(s_axis_cartesian_tvalid),
.s_axis_cartesian_tready(s_axis_cartesian_tready),.s_axis_cartesian_tdata(s_axis_cartesian_tdata),
.m_axis_dout_tvalid(m_axis_dout_tvalid),.m_axis_dout_tdata(m_axis_dout_tdata)
);

initial begin
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 0;
s_axis_cartesian_tvalid = 0;
s_axis_cartesian_tdata = 0;
aresetn = 1;

#20;

aresetn = 0;
#10;

s_axis_cartesian_tvalid = 1;
s_axis_cartesian_tdata = 32'b000000_0001000000_000000_0010110101; //Yin = 0.25 // Xin = 0.707 
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_110_0110111; // -Pi/2

#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_000_1000011; //30

#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_000_1100100; //45

#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_001_0000110; //60


#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_001_1001001; //90

#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_011_0010000; //180

#10;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_000_0000000; 
#10;
s_axis_phase_tvalid = 1;
s_axis_phase_tdata = 16'b000000_010_0001100; //120 //2.0944


#100;
s_axis_cartesian_tvalid = 0;
s_axis_cartesian_tdata = 32'b000000_0000000000_000000_0000000000;
s_axis_phase_tvalid = 0;
s_axis_phase_tdata = 16'b000000_0000000000;

#100;

end

endmodule
