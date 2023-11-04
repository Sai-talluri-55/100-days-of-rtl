`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 21:53:28
// Design Name: 
// Module Name: demux_1x16_tb
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


module demux_1x16_tb(

    );
    reg a;
    reg [3:0]s;
    wire [15:0]y;
    demux_1x16_1x8 dut1(a,s,y);
    initial
    begin
    a=11111111;s=4'b0000;
    #10 s=4'b0001;
    #10 s=4'b0010;
    #10 s=4'b0011;
    #10 s=4'b0100;
    #10 s=4'b0101;
    #10 s=4'b0110;
    #10 s=4'b0111;
    #10 s=4'b1000;
    #10 s=4'b1001;
    #10 s=4'b1010;
    #10 s=4'b1011;
    #10 s=4'b1100;
    #10 s=4'b1101;
    #10 s=4'b1110;
    #10 s=4'b1111;
    #10 $finish;
    end
endmodule
