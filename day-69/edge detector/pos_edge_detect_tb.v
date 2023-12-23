`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:22:16
// Design Name: 
// Module Name: pos_edge_detect_tb
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


module pos_edge_detect_tb(

    );
    reg signal,clk;
    wire edge_detect;
    pos_edge_detector dut(signal,clk,edge_detect);
    initial 
    begin
    clk=0;
    signal=0;
    #15 signal <=1;
    #40 signal <=0;
    #25 signal=1;
    #30 $finish; 
    end
    always #5 clk=~clk;
endmodule
