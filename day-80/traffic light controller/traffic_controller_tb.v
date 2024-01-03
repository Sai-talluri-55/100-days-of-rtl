`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 21:55:40
// Design Name: 
// Module Name: traffic_controller_tb
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


module traffic_controller_tb;

   reg clk,rst;
  wire [1:0] state;
  wire red,yellow,green;
  
  traffic_controller dut(clk,rst,state,red,yellow,green);
  
  always #5 clk=~clk;

  initial begin
    clk=0;
    rst=1;
    #20 rst=0;
    #200 $finish;
  end
endmodule
