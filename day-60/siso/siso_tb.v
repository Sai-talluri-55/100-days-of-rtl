`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 20:50:12
// Design Name: 
// Module Name: siso_tb
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


module siso_tb(

    );
    reg din,clk,rst;
    wire q;
    right_shift_register dut(clk,rst,din,q);
    initial begin
    clk=0;
    rst=1;
    #10 rst=0;din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #50 $finish;
    end
    always #5 clk=~clk;
endmodule
