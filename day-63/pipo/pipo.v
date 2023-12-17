`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 21:08:03
// Design Name: 
// Module Name: pipo
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


module pipo(
    input clk,rst,
    input [3:0] din,
    output [3:0] q
    );
    d_flipflop1 a1(din[0],clk,rst,q[0]);
    d_flipflop1 a2(din[1],clk,rst,q[1]);
    d_flipflop1 a3(din[2],clk,rst,q[2]);
    d_flipflop1 a4(din[3],clk,rst,q[3]);

endmodule
