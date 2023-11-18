`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 17:57:04
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(
    input t,clk,rst,
    output reg q,qbar
    ); 
    always@(posedge clk)
    begin
    if(rst)
    begin
    q=0;qbar=1;
    end
    else begin
     q=(t&~q)|(~t&q);
     q=~q;
    end
    end
endmodule
