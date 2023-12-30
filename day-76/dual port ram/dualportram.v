`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2023 20:47:54
// Design Name: 
// Module Name: dualportram
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


module dualportram(
input [7:0] data1, data2,
  input [5:0] addr1, addr2, 
  input wen1, wen2, 
  input clk, 
  output reg [7:0] q1, q2
);
  
  reg [7:0] dualram [63:0]; 
 
  always @ (posedge clk)
    begin
      if(wen1)
        dualram[addr1] <= data1;
      else
        q1 <= dualram[addr1]; 
    end
  
  always @ (posedge clk)
    begin
      if(wen2)
        dualram[addr2] <= data2;
      else
        q2 <= dualram[addr2]; 
    end
endmodule
