`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 17:56:58
// Design Name: 
// Module Name: mux_8x1using4x1
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


module mux_8using4(
    input [7:0] a,
    input [2:0] s,
    output y
    );
    wire s1,s2;
    mux_4x1 a1(a[3:0],s[1:0],s1);
    mux_4x1 a2(a[7:4],s[1:0],s2);
    mux2x1 a3(s1,s2,s[2],y);
endmodule
