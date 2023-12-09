`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 21:05:09
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb(

    );
    reg clk,rst;
wire [3:0]q;
ring_counter dut(clk,rst,q);
initial clk=0;
always #5 clk=~clk;
initial 
begin
rst=1;
#20 rst=0;
#70 $finish;
end
endmodule
