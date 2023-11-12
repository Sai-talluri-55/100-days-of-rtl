`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 19:37:39
// Design Name: 
// Module Name: fulladder_dec
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


module fulladder_dec(
    input [2:0]a,
    input e,
    output s,c
    );
    wire [7:0]y;
    decoder3to8 a1(a,e,y[7:0]);
    or a2(s,y[1],y[2],y[4],y[7]);
    or a3(c,y[3],y[5],y[6],y[7]);
endmodule
