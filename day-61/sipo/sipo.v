`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:20:36
// Design Name: 
// Module Name: sipo
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


module sipo(
    input clk,rst,din,
    output [3:0] q
    );
    
    d_flipflop1 a1(din,clk,rst,q[0]);
    d_flipflop1 a2(q[0],clk,rst,q[1]);
    d_flipflop1 a3(q[1],clk,rst,q[2]);
    d_flipflop1 a4(q[2],clk,rst,q[3]);
endmodule
