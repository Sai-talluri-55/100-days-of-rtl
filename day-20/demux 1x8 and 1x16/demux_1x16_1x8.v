`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 21:51:30
// Design Name: 
// Module Name: demux_1x16_1x8
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


module demux_1x16_1x8(
    input a,
    input [3:0] s,
    output [15:0] y
    );
    wire [1:0]w1;
    
    demux_1x2 a1(a,s[3],w1);
    demux_1x8 a2(w1[0],s[2:0],y[7:0]);
    demux_1x8 a3(w1[1],s[2:0],y[15:8]);
endmodule
