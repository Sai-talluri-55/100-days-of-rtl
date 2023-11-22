`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 19:13:38
// Design Name: 
// Module Name: srusingdflipflop_tb
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


module srusingdflipflop_tb(

    );
    reg s,r,clk,rst;
    wire q,qbar;
    srusingdflipflop dut(s,r,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;s=0;r=0;
    #10 s=0;r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #10 $finish;
    end
endmodule
