`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 20:33:57
// Design Name: 
// Module Name: jkusingdflipflop
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


module jkusingdflipflop(
    input j,k,clk,rst,
    output q,qbar
    );
    wire w1,w2,w3;
    and a1(w1,qbar,j);
    and a2(w2,q,~k);
    or a4(w3,w1,w2);
    d_flipflop a3(w3,clk,rst,q,qbar);
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
