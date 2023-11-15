`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 20:25:35
// Design Name: 
// Module Name: sr_nand_latch
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


module sr_nand_latch(
    input s,r,
    output q,qbar
    );
    nand a1(q,s,qbar);
    nand a2(qbar,r,q);
endmodule
