`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 16:49:13
// Design Name: 
// Module Name: sr_flipflop_tb
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


module sr_flipflop_tb(

    );
    reg s,r,clk;
    wire q,qbar;
    sr_flipflop dut(s,r,clk,q,qbar);
    initial clk=0;
    always  #5 clk=~clk;
    initial 
    begin
    s=0;r=0;
    #10 s=0;r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #10 $finish;
    end
endmodule
