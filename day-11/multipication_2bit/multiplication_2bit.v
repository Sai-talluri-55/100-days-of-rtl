`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 20:04:02
// Design Name: 
// Module Name: multiplication_2bit
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


module multiplication_2bit(
    input [1:0] a,b,
    output [3:0] p
    );
    wire w1,w2,w3,w4;
    and a1(p[0],a[0],b[0]);
    and a2(w1,a[1],b[0]);
    and a3(w2,a[0],b[1]);
    and a4(w3,a[1],b[1]);
    ha_beh ha1(.a(w1),.b(w2),.s(p[1]),.c(w4));
    ha_beh ha2(.a(w4),.b(w3),.s(p[2]),.c(p[3]));
endmodule
