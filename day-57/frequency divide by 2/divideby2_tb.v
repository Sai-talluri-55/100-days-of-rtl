`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 20:47:28
// Design Name: 
// Module Name: divideby2_tb
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


module divideby2_tb();
    reg clk,rst;
    wire q;
    divideby2 dut(clk,rst,q);
    initial clk=0;
    always #5 clk=~clk;
    initial begin
    rst=1;
    #10 rst=0;
    #100 $finish;
    end
endmodule
