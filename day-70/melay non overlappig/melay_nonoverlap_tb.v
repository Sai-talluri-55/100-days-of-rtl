`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compandout: 
// Engineer: 
// 
// Create Date: 24.12.2023 19:45:23
// Design Name: 
// Module Name: meladout_nonoverlap_tb
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


module meladout_nonoverlap_tb(

    );
     reg din,clk,rst;
     wire dout;
     mealdout_nonoverlap dut(din,clk,rst,dout);
     always #50 clk = ~clk;
    initial begin
        rst = 1;
        din = 0;
        clk = 0;
        #100; rst = 0; 
        din = 1;
        #100; din = 0;
        #100; din = 1;
        #100; din = 0; 
        #100; din = 1;
        #100; din = 0;
        #100; din = 0;
        #100; din = 1; 
        #100; din = 0;
        #100; din = 0;
        #100; din = 1; 
    end
endmodule
