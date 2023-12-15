`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:24:39
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb(

    );
    reg clk,rst,din;
    wire [3:0]q;
    sipo dut(clk,rst,din,q);
    initial begin
    clk=0;
    rst=1;
    #10 rst=0;din=0;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 $finish;
    
    end
    always #5 clk=~clk;
endmodule
