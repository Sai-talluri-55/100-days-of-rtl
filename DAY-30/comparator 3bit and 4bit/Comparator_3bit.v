`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 20:09:36
// Design Name: 
// Module Name: Comparator_3bit
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


module Comparator_3bit(
    input [2:0] a,
    input [2:0] b,
    output equal,
    output gt,
    output lt
    );
    assign equal=!(a[2]^b[2]) & !(a[1]^b[1]) &!(a[0]^b[0]);
assign gt=(a[2]&~b[2]) | ~(a[2]^b[2]) & (a[1]&~b[1]) | ~(a[2]^b[2]) & ~(a[1]^b[1]) & (a[0]&~b[0]);
assign lt=(~a[2]&b[2]) | ~(a[2]^b[2]) & (~a[1]&b[1]) | ~(a[2]^b[2]) & ~(a[1]^b[1]) & (~a[0]&b[0]); 
endmodule
