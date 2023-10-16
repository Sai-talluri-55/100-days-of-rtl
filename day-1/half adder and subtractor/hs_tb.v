`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 21:56:22
// Design Name: 
// Module Name: hs_tb
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


module hs_tb(

    );
    reg a,b;
    wire bi,do;
    hs_beh a1(a,b,bo,di);
    initial
    begin
    #50 a=0;b=0;
    #50 a=0;b=1;
    #50 a=1;b=0;
    #50 a=1;b=1;
    end
endmodule
