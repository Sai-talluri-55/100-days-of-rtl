`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2024 22:10:05
// Design Name: 
// Module Name: hamming_code
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


module hamming_code(
    input [3:0]data,
    output [6:0] encoded
    );
    
    assign encoded[0]=data[0] ^ data[1] ^ data[3];
    assign encoded[1]=data[0] ^ data[2] ^ data[3];
    assign encoded[2]=data[0];
    assign encoded[3]=data[1] ^ data[2] ^ data[3];
    assign encoded[4]=data[1];
    assign encoded[5]=data[2];
    assign encoded[6]=data[3];
endmodule
