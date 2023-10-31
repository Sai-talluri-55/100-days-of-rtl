`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 20:13:33
// Design Name: 
// Module Name: mux_gates
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


module mux_gates(
    input a,b,
    output [6:0] y
    );
    mux2x1 andgate(0,b,a,y[0]);
    mux2x1 orgate(b,1,a,y[1]);
    mux2x1 notgate(1,0,b,y[2]);
    mux2x1 nandgate(1,y[2],a,y[3]);
    mux2x1 norgate(y[2],0,a,y[4]);
    mux2x1 exorgate(b,y[2],a,y[5]);
    mux2x1 exnorgate(y[2],b,a,y[6]);
endmodule
