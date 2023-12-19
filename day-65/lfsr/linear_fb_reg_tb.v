`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 18:36:20
// Design Name: 
// Module Name: linear_fb_reg_tb
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


module linear_fb_reg_tb(

    );
    reg clk,rst;
    wire [3:0]q;
    linear_fb_reg dut(clk,rst,q);
    initial
    begin
    clk=0;rst=1;
    #10 rst=0;
    #100 $finish;
    end
    always #5 clk=~clk;
endmodule
