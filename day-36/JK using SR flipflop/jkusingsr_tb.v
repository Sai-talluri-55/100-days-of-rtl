`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 20:03:36
// Design Name: 
// Module Name: jkusingsr_tb
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


module jkusingsr_tb(

    );
    reg j,k,clk,rst;
    wire q,qbar;
    jkusingsr dut(j,k,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;j=0;k=0;
    #10 rst=0;j=0;k=0;
    #10 j=0;k=1;
    #10 j=1;k=0;
    #10 j=1;k=1;
    #10 $finish;
    end
    
endmodule
