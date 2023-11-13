`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 10:02:33
// Design Name: 
// Module Name: Coparator_2bit
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


module Coparator_2bit(
    input [1:0] a,
    input [1:0] b,
    output equal,
    output gt,
    output lt
    );
    assign equal=~(a[1]^b[1]) & ~(a[0]^b[0]);
    assign gt=a[1]&~b[1] | ~(a[1]^b[1]) & a[0]&~b[0] ;
    assign lt=~a[1]&b[1] | ~(a[1]^b[1]) & ~a[0]&b[0];
endmodule
