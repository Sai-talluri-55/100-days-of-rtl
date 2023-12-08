`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:10:49
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();
reg clk,rst;
wire [3:0]q;
decade_counter dut(clk,rst,q);
initial clk=0;
always #5 clk=~clk;
initial 
begin
rst=0;

#20 rst=1;
#140 $finish;
end
endmodule
