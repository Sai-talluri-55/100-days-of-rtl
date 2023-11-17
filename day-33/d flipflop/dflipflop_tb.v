`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 16:15:27
// Design Name: 
// Module Name: dflipflop_tb
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


module dflipflop_tb(

    );
    reg d,clk;
    wire q,qbar;
    dflipflop dut(d,clk,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    d=0;
    #10 d=1;
    #10 d=1;
    #10 d=0;
    #10 $finish;
    end
endmodule
