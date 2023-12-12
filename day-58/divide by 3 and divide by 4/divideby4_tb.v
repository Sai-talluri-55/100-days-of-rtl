`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 21:03:38
// Design Name: 
// Module Name: divideby4_tb
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


module divideby4_tb();
    reg clk,rst;
    wire q;
    divideby4 dut(clk,rst,q);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #20 rst=0;
    #100 $finish;
    end
endmodule
