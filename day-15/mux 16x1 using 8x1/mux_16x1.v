`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 19:04:28
// Design Name: 
// Module Name: mux_16x1
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


module mux_16x1(
    input [16:0] a,
    input [3:0] s,
    output reg y
    );
    always @(*)
    begin
    case(s)
    4'b0000:y=a[0];
    4'b0001:y=a[1];
    4'b0010:y=a[2];
    4'b0011:y=a[3];
    4'b0100:y=a[4];
    4'b0101:y=a[5];
    4'b0110:y=a[6];
    4'b0111:y=a[7];
    4'b1000:y=a[8];
    4'b1001:y=a[9];
    4'b1010:y=a[10];
    4'b1011:y=a[11];
    4'b1100:y=a[12];
    4'b1101:y=a[13];
    4'b1110:y=a[14];
    4'b1111:y=a[15];
    endcase
    end
endmodule
