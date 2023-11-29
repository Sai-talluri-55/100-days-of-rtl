`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 20:34:22
// Design Name: 
// Module Name: D_FF_using_T_FF
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


module D_FF_using_T_FF(
    input d,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
    wire D; 
    assign D=~d &qn |d&qn_bar;
    T_FF  TFF(.t(D),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
    
endmodule
