`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 19:14:56
// Design Name: 
// Module Name: mux_16x1_8x1
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


module mux_16x1_8x1(
    input [15:0] a,
    input [3:0] s,
    output y
    );
    wire y1,y2;
    mux_8x1 a1(a[7:0],s[2:0],y1);
    mux_8x1 a2(a[15:8],s[2:0],y2);
    mux2x1 a3(y1,y2,s[3],y);
endmodule
