`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 21:27:15
// Design Name: 
// Module Name: demux_1x8_tb
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


module demux_1x8_tb(

    );
    reg a;
    reg [2:0]s;
    wire [7:0]y;
    demux_1x8_1x4 dut1(a,s,y);
    initial
    begin
    a=11111111;s=000;
    #10 s=001;
    #10 s=010;
    #10 s=011;
    #10 s=100;
    #10 s=101;
    #10 s=110;
    #10 s=111;
    #10 $finish;
    end
endmodule
