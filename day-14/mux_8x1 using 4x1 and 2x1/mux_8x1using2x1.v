`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 18:13:24
// Design Name: 
// Module Name: mux_8x1using2x1
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


module mux_8x1using2x1(
    input [7:0] a,
    input [2:0] s,
    output y
    );
    wire s1,s2,s3,s4,s5,s6;
    mux2x1 a1(a[0],a[1],s[0],s1);
    mux2x1 a2(a[2],a[3],s[0],s2);
    mux2x1 a3(a[4],a[5],s[0],s3);
    mux2x1 a4(a[6],a[7],s[0],s4);
    mux2x1 a5(s1,s2,s[1],s5);
    mux2x1 a6(s3,s4,s[1],s6);
    mux2x1 a7(s5,s6,s[2],y);
endmodule
