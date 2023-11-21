`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:05:46
// Design Name: 
// Module Name: tusingsrflipflop
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


module tusingsrflipflop(
    input t,clk,rst,
    output q,qbar
    );
    wire w1,w2;
    and a1(w1,t,qbar);
    and a2(w2,t,q);
    srflipflop a3(w1,w2,clk,rst,q,qbar);
endmodule
module srflipflop(
input s,r,clk,rst,
output reg q,qbar);
always @(posedge clk)
begin
if(rst)
begin
q=0;qbar=1;
end
else
 q=s|(~r&q);
 qbar=~q;
end
endmodule
