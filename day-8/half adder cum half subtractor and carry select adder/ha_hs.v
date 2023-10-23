`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 17:32:14
// Design Name: 
// Module Name: ha_hs
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


module ha_hs(
    input a,b,u,
    output reg s,c
    );
  always@(*)
  begin
  if(u==0)
  begin 
  s=a^b;
  c=a&b;
  end
  else
  begin 
  s=a^b;
  c=(~a)&b;
  end
  end
  
endmodule
