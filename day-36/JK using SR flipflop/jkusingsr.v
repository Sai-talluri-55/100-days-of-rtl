`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 20:01:39
// Design Name: 
// Module Name: jkusingsr
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


module jkusingsr(
    input j,k,clk,rst,
    output  q,qbar
    );
    
    wire w1,w2;
    and a1(w1,j,qbar);
    and a2(w2,k,q);
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