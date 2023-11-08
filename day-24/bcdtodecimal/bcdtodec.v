`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2023 16:28:52
// Design Name: 
// Module Name: bcdtodec
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


module bcdtodec(
    input [3:0] a,
    input [9:0] y
    );
    wire a0,a1,a2,a3;
    not w1(a0,a[0]);
    not w2(a1,a[1]);
    not w3(a2,a[2]);
    not w4(a3,a[3]);
    and w5(y[0],a0,a1,a2,a3);
    and w6(y[1],a[0],a1,a2,a3);
    and w7(y[2],a2,a[1],a0);
    and w8(y[3],a2,a[0],a[1]);
    and w9(y[4],a[2],a1,a0);
    and w10(y[5],a[2],a1,a[0]);
    and w11(y[6],a[2],a[1],a0);
    and w12(y[7],a[1],a[2],a[0]);
    and w13(y[8],a[3],a0);
    and w14(y[9],a[3],a[0]);
endmodule
