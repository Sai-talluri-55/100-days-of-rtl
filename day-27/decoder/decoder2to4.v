`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 20:16:32
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input [1:0] a,
    input e,
    output [3:0] y
    );
    wire a1,a0;
    not p1(a1,a[1]);
    not p2(a0,a[0]);
    and p3(y[3],a[1],a[0],e);
    and p4(y[2],a[1],a0,e);
    and p5(y[1],a1,a[0],e);
    and p6(y[0],a1,a0,e);
endmodule
