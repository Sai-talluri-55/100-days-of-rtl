`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 18:21:45
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(
input [7:0]din,
input [2:0]shift,
output [7:0]out
    );
    wire [7:0]w1,w2;
    mux2x1 a1(1'b0,din[0],shift[0],w1[0]);
    mux2x1 a2(din[0],din[1],shift[0],w1[1]);
    mux2x1 a3(din[1],din[2],shift[0],w1[2]);
    mux2x1 a4(din[2],din[3],shift[0],w1[3]);
    mux2x1 a5(din[3],din[4],shift[0],w1[4]);
    mux2x1 a6(din[4],din[5],shift[0],w1[5]);
    mux2x1 a7(din[5],din[6],shift[0],w1[6]);
    mux2x1 a8(din[6],din[7],shift[0],w1[7]);
    mux2x1 a9(1'b0,w1[0],shift[1],w2[0]);
    mux2x1 a10(1'b0,w1[1],shift[1],w2[1]);
    mux2x1 a11(w1[0],w1[2],shift[1],w2[2]);
    mux2x1 a12(w1[1],w1[3],shift[1],w2[3]);
    mux2x1 a13(w1[2],w1[4],shift[1],w2[4]);
    mux2x1 a14(w1[3],w1[5],shift[1],w2[5]);
    mux2x1 a15(w1[4],w1[6],shift[1],w2[6]);
    mux2x1 a16(w1[5],w1[7],shift[1],w2[7]);
     mux2x1 a17(1'b0,w2[0],shift[2],out[0]);
    mux2x1 a18(1'b0,w2[1],shift[2],out[1]);
    mux2x1 a19(1'b0,w2[2],shift[2],out[2]);
    mux2x1 a20(1'b0,w2[3],shift[2],out[3]);
    mux2x1 a21(w2[0],w2[4],shift[2],out[4]);
    mux2x1 a22(w2[1],w2[5],shift[2],out[5]);
    mux2x1 a23(w2[2],w2[6],shift[2],out[6]);
    mux2x1 a24(w2[3],w2[7],shift[2],out[7]);
    
endmodule
module mux2x1(
    input b,a,s,
    output y
    );
    assign y=(b&s)|(a&(~s));
endmodule