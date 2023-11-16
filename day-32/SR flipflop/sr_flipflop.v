`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 16:45:18
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
    input s,r,clk,
    output q,qbar
    );
    wire w1,w2;
    nand a1(w1,s,clk);
    nand a2(w2,r,clk);
    sr_nand_latch a3(w1,w2,q,qbar);
endmodule
