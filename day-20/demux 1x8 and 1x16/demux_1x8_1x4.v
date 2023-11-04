`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 21:41:46
// Design Name: 
// Module Name: demux_1x8_1x4
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


module demux_1x8_1x4(
    input a,
    input [2:0] s,
    output [7:0] y
    );
    wire [1:0]w1;
    
    demux_1x2 a1(a,s[2],w1);
    demux_1x4 a2(w1[0],s[1:0],y[3:0]);
    demux_1x4 a3(w1[1],s[1:0],y[7:4]);
endmodule
