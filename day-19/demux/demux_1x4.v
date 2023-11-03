`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 18:21:03
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
    input a,
    input [1:0]s,
    output  [3:0] y
    );
    wire w1,w2;
    not a1(w1,s[0]);
    not a2(w2,s[1]);
    and a3(y[0],a,w1,w2);
    and a4(y[1],a,w2,s[0]);
     and a5(y[2],a,s[1],w1);
    and a6(y[3],a,s[1],s[0]);
        
endmodule
