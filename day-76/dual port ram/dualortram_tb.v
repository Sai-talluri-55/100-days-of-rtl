`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2023 20:48:36
// Design Name: 
// Module Name: dualortram_tb
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


module dualortram_tb;
reg [7:0] data1, data2; 
  reg [5:0] addr1, addr2; 
  reg we1, we2,clk;
  wire [7:0] q1, q2; 
  
  dualportram dut(data1,data2,addr1,addr2,we1,we2,clk,q1,q2);
  
  initial
    begin
      clk = 1'b1;
      data1 = 8'h42;
      addr1 = 6'h01;
      data2 = 8'h55;
      addr2 = 6'h02;
      we1 = 1'b1;
      we2 = 1'b1;
      #10;      
      data1 = 8'h57;
      addr1 = 6'h03;
      addr2 = 6'h01;
      we2 = 1'b0;
      #10;        
      addr1 = 6'h02;
      addr2 = 6'h03;
      we1 = 1'b0;
      #10;     
      addr1 = 6'h01;
      data2 = 8'h25;
      addr2 = 6'h02;
      we2 = 1'b1;      
      #10; $finish;
    end
    
    always #5 clk = ~clk;
 
endmodule
