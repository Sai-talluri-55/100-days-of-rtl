`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 21:11:56
// Design Name: 
// Module Name: bcdtoexcess3
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


module bcdtoexcess3(
    input [3:0] a,
    output [3:0] y
    );
    assign y[3]=a[3]|(a[2]&a[0])|(a[2]&a[1]);
    assign y[2]=(~a[2]&a[0])|((~a[2])& a[1])|(a[2]&(~a[1])&(~a[0]));
    assign y[1]=(~a[1]&(~a[0]))|(a[1]&(a[0]));
    assign y[0]=~a[0];
endmodule
