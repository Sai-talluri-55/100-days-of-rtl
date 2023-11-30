`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 20:52:51
// Design Name: 
// Module Name: jkusingt
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


module jkusingt(
    input j,k,clk,rst,
    output q,qbar
    );
    and a1(w1,k,q);
    and a2(w2,j,qbar);
    or a3(w3,w2,w1);
    t_flipflop a4(w3,clk,rst,q,qbar);
endmodule
