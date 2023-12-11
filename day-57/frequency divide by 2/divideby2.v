`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 20:41:26
// Design Name: 
// Module Name: divideby2
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


module divideby2(
    input clk,rst,
    output q
    );
    wire qbar;
    d_flipflop a1(qbar,clk,rst,q,qbar);
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
