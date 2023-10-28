`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 20:13:23
// Design Name: 
// Module Name: mux_2_tb
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


module mux_2_tb(

    );
    reg a,b,s;
    wire y;
    mux2x1 a1(a,b,s,y);
    initial
    begin
    a=0;b=1;s=0;
    #10 s=1;
    #10 a=1;b=0;s=0;
    #10 s=1;
    end
endmodule
