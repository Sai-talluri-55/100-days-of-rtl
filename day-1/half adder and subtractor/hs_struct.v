`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 21:53:34
// Design Name: 
// Module Name: hs_struct
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


module hs_struct(
    input a,b,
    output di,bo
    );
    wire a1;
    not g1(a1,a);
    xor g2(di,a,b);
    and g3(bo,a1,b);
endmodule
