`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2023 20:26:58
// Design Name: 
// Module Name: divideby3
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


module divideby3(
    input clk,rst,
    output q
    );
    wire w1,w2;
     wire qbar,qbar1,qbar2,q1,q2;
     
    d_flipflop a1(w2,clk,rst,w1,qbar1);
    d_flipflop a2(w1,clk,rst,q1,qbar);
    and a3(w2,qbar1,qbar);
    d_flipflop a4(q1,~clk,rst,q2,qbar2);
    or a5(q,q1,q2);
endmodule
module d_flipflop(
input d,clk,rst,
output reg q,qbar);
initial begin q=1;qbar=0; end
always@(posedge clk)
begin
if(rst)
begin
q<=0;
qbar<=1;
end
else
begin
q<=d;
qbar<=~q; 
end
end
endmodule