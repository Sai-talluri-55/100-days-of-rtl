`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2023 22:08:56
// Design Name: 
// Module Name: piso
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


module piso(
    input clk,rst,shift,
    input [3:0] din,
    output q
    );
    wire q1,q2,q3;
    wire w1,w2,w3,w4,w5,w6;
    wire x1,x2,x3;
    d_flipflop1 a1(din[0],clk,rst,q1);
    and a2(w1,q1,shift);
    and a3(w2,~shift,din[1]);
    or a4(x1,w1,w2);
    d_flipflop1 a5(x1,clk,rst,q2);
    and a6(w3,q2,shift);
    and a7(w4,~shift,din[2]);
    or a8(x2,w3,w4);
    d_flipflop1 a9(x2,clk,rst,q3);
    and a10(w5,q3,shift);
    and a11(w6,~shift,din[3]);
    or a12(x3,w5,w6);
    d_flipflop1 a13(x3,clk,rst,q);
endmodule
