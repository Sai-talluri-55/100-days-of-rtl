`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 20:38:25
// Design Name: 
// Module Name: fs_hs
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


module fs_hs(
    input a,b,cin,
    output di,bo
    );
    wire w1,w2w,w4;
 hs_struct h1(a,b,w1,w2);
 hs_struct h2(w1,cin,di,w3);
 hs_struct h3(w2,w3,bo,w4);
endmodule
module hs_struct(
    input a,b,
    output di,bo
    );
    wire a1;
    not g1(a1,a);
    xor g2(di,a,b);
    and g3(bo,a1,b);
endmodule
