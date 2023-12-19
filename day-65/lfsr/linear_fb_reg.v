`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 18:27:59
// Design Name: 
// Module Name: linear_fb_reg
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


module linear_fb_reg(
    input clk,rst,
    output  [3:0] q
    );
    
    wire w1;
    assign w1=~(q[3]^q[2]);
    d_flipflop1 a1(w1,clk,rst,q[0]);
    d_flipflop1 a2(q[0],clk,rst,q[1]);
    d_flipflop1 a3(q[1],clk,rst,q[2]);
    d_flipflop1 a4(q[2],clk,rst,q[3]);
    
endmodule
module d_flipflop1(
input d,clk,rst,
output reg q);

always @(posedge clk)begin

if(rst)
begin
q=0;
//qbar=1;
end
else
begin
q=d;
//qbar=~q; 
end
end
endmodule