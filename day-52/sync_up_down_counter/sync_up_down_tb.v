`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 19:16:53
// Design Name: 
// Module Name: sync_up_down_tb
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


module sync_up_down_tb(

    );
    reg clk,rst,ctrl;
    wire [3:0]q;
    sync_up_down dut(clk,rst,ctrl,q);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;ctrl=1;
    #170 ctrl =0;
    #170 $finish;
    
    end
    
endmodule
