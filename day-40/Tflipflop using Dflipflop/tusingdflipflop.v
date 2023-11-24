`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 19:38:29
// Design Name: 
// Module Name: tusingdflipflop
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


module tusingdflipflop(
    input t,clk,rst,
    output  q,qbar
    );
    wire w1;
   
    
    d_flipflop a5(w1,clk,rst,q,qbar);
    assign w1=t^q;
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
