`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 18:28:45
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input j,k,clk,rst,
    output reg  q,qbar
    );
    always@(posedge clk)
    begin
    if(rst)
    begin
    q=0;qbar=1;
    end
    else
    begin
    q=((j)&(~q))|(~k&q);
    qbar=~q;
    end
    end
endmodule
