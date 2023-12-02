`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2023 19:33:48
// Design Name: 
// Module Name: down_counter_tb
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


module down_counter_tb();
reg clk,rst; wire [3:0] counter_op;
down_convertor dut(.clk(clk),.rst(rst),.counter_op(counter_op));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #10;
end
endmodule
