`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2023 20:46:57
// Design Name: 
// Module Name: divideby3_tb
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


module divideby3_tb(

    );
    reg clk,rst;
    wire q;
    divideby3 dut(clk,rst,q);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #20 rst=0;
    #100 $finish;
    end
endmodule
