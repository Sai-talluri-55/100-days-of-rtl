`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 21:29:32
// Design Name: 
// Module Name: moore_overlap_tb
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


module moore_overlap_tb(

    );
     reg din,clk,rst;
     wire y;
     moore_overlap dut(din,clk,rst,y);
     always #5 clk = ~clk;
    initial begin
        rst = 1;
        din = 0;
        clk = 0;
        #10 rst = 0; 
        din = 1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1; 
        #10 din = 0;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1; 
        #10 din = 0;
        #10 din = 1;
        #10 din = 0; 
        #10 $finish;
    end
endmodule
