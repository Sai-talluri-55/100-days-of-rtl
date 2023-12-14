`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 20:33:23
// Design Name: 
// Module Name: right_shift_register
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


module right_shift_register(
    input clk,rst,
    input din,
    output q
    );
    wire q0,q1,q2;
    d_flipflop1 a1(din,clk,rst,q0);
    d_flipflop1 a2(q0,clk,rst,q1);
    d_flipflop1 a3(q1,clk,rst,q2);
    d_flipflop1 a4(q2,clk,rst,q);
endmodule
module d_flipflop1(
input d,clk,rst,
output reg q,qbar);
initial q=0;
always@(posedge clk)
begin
if(rst)
begin
q=0;
qbar=1;
end
else
begin
q=d;
qbar=~q; 
end
end
endmodule