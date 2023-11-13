`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 09:51:31
// Design Name: 
// Module Name: Comparator_1bit
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


module Comparator_1bit(
    input A,
    input B,
    output Equal,
    output GT,
    output LT
    );
    assign Equal=~(A^B); 
    assign GT=A&~B;
    assign LT=~A&B;
endmodule
