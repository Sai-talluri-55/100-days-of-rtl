`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 23:00:25
// Design Name: 
// Module Name: tusingjk
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


module tusingjk(
    input t,clk,rst,
    output q,qbar
    );
    jk_flipflop a1(t,t,clk,rst,q,qbar);
endmodule
