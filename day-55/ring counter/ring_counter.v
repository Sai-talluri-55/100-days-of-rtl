`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 20:28:25
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input clk,rst,
    output reg [3:0] q
    );
    always@(posedge clk)
begin
     if(rst)q<=1000;
     else 
     begin
     q[0]<=q[3];
     q[1]<=q[0];
     q[2]<=q[1];
     q[3]<=q[2];
    end
    end
    endmodule