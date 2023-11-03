`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 18:24:57
// Design Name: 
// Module Name: demux_1x4_tb
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


module demux_1x4_tb(

    );
    reg a;
    reg [1:0]s;
    wire   [3:0] y;
    demux_1x4 dut(a,s,y);
    initial
    begin
    a=0;s=00;
    #10 a=1;s=01;
    #10 a=0;s=10;
    #10 a=1;s=11;
    #10 a=1;s=00;
    #10 $finish;
    end
    
endmodule
