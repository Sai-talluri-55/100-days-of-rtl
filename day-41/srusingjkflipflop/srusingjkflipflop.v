`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 20:05:46
// Design Name: 
// Module Name: srusingjkflipflop
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


module srusingjkflipflop(
    input s,r,clk,rst,
    output q,qbar
    );
    jk_flipflop a1(s,r,clk,rst,q,qbar);
endmodule
