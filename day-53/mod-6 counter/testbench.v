`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 22:36:57
// Design Name: 
// Module Name: testbench
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


module testbench();
reg rst,clk; wire [2:0] count;
Sync_mod4_up_counter dut(.rst(rst),.clk(clk),.count(count));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #150; $finish();
end
endmodule
