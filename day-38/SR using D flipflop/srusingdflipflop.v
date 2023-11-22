`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 19:02:32
// Design Name: 
// Module Name: srusingdflipflop
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


module srusingdflipflop(
    input s,r,clk,rst,
    output q,qbar
    );
    assign d=s |(q &(~r));
    d_flipflop a1(d,clk,rst,q,qbar);
endmodule
module d_flipflop(
input d,clk,rst,
output reg q,qbar);
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