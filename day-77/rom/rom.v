`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 22:33:37
// Design Name: 
// Module Name: rom
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


module rom(data_out, addr, clk);
output reg[15:0] data_out;
input[3:0] addr;
input clk;

reg [15:0] ROM[15:0];
initial data_out=16'h0;
always @(negedge clk)
begin
ROM[4'd0]=16'h5601; ROM[4'd1]=16'h3401;
ROM[4'd2]=16'h1801; ROM[4'd3]=16'h0ac1;
ROM[4'd4]=16'h0521; ROM[4'd5]=16'h0221;
ROM[4'd6]=16'h5601; ROM[4'd7]=16'h5401;
ROM[4'd8]=16'h4801; ROM[4'd9]=16'h3801;
ROM[4'd10]=16'h3001; ROM[4'd11]=16'h2401;
ROM[4'd12]=16'h1c01; ROM[4'd13]=16'h1601;
ROM[4'd14]=16'h5601; ROM[4'd15]=16'h5401;
data_out=ROM[addr];
end
endmodule
