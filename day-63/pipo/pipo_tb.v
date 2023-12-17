`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 21:11:52
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb(

    );
    reg clk,rst;
    reg [3:0]din;
    wire [3:0]q;
    pipo dut(clk,rst,din,q);
    initial
    begin
    clk=0;
    rst=1;
    #10 rst=0;din=1010;
    #10 din=1011;
    #10 din =0110;
    #10 din=0100;
    #10 $finish;
    end
    always #5 clk=~clk;
endmodule
