`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 21:23:09
// Design Name: 
// Module Name: demux_1x8
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


module demux_1x8(
    input a,
    input [2:0] s,
    output [7:0] y
    );
     wire w1,w2,w3;
    not a1(w1,s[0]);
    not a2(w2,s[1]);
    not a3(w3,s[2]);
    and a4(y[0],a,w1,w2,w3);
    and a5(y[1],a,w3,w2,s[0]);
     and a6(y[2],a,w3,s[1],w1);
    and a7(y[3],a,w3,s[1],s[0]);
    and a8(y[4],a,w1,w2,s[2]);
    and a9(y[5],a,s[2],w2,s[0]);
     and a10(y[6],a,s[2],s[1],w1);
    and a11(y[7],a,s[2],s[1],s[0]);
endmodule
