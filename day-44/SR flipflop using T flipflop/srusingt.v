`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 21:09:48
// Design Name: 
// Module Name: srusingt
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


module srusingt(
    input s,r,clk,rst,
    output q,qbar
    );
    wire w1,w2,w3;
    and a1(w1,r,q);
    and a2(w2,s,qbar);
    or a3(w3,w1,w2);
    t_flipflop a4(w3,clk,rst,q,qbar);
endmodule
