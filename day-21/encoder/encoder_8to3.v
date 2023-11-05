`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:12:43
// Design Name: 
// Module Name: encoder_3to8
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


module encoder_3to8(
    input [7:0] a,
    
    output  [2:0] y
    );
 or a1(y[2],a[7:4]);
  or a2(y[1],a[2],a[3],a[6],a[7]);
  or a3(y[0],a[1],a[3],a[5],a[7]);  
endmodule
