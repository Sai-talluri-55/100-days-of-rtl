`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 21:48:35
// Design Name: 
// Module Name: hs_beh
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


module hs_beh(
    input a,b,
    output reg bo,di
    );
   always @(*)
   begin
   di=a^b; 
   bo=(~a)&b;
   end
endmodule
