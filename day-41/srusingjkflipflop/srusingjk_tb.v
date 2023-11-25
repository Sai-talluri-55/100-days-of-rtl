`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 20:09:18
// Design Name: 
// Module Name: srusingjk_tb
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


module srusingjk_tb(

    );
    reg s,r,clk,rst;
    wire q,qbar;
    srusingjkflipflop dut(s,r,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;s=0;r=0;
    #10 r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #10 $finish;
    end
    
endmodule
