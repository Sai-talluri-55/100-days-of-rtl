`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 20:35:19
// Design Name: 
// Module Name: sr_nor_latch
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


module sr_nor_latch(
    input s,r,
    output q,qbar
    );
    nor a1(q,r,qbar);
    nor a2(qbar,s,q);
endmodule
