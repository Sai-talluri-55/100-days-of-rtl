`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 20:54:43
// Design Name: 
// Module Name: divideby4
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


module divideby4(
    input clk,rst,
    output q
    );
     wire w1;
     wire qbar,qbar1;
     
    d_flipflop a1(qbar1,clk,rst,w1,qbar1);
    d_flipflop a2(~q,w1,rst,q,qbar);
endmodule

