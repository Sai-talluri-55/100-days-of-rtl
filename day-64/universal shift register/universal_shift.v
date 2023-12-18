`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2023 19:04:06
// Design Name: 
// Module Name: universal_shift
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


module universal_shift(
    input clk,rst,right,left,
    input [1:0] sel,
    input [3:0] d,
    output [3:0] q
    );
    wire w1,w2,w3,w4;
    mux_41 a1(q[0],q[1],left,d[0],sel,w1);
    mux_41 a2(q[1],q[2],q[0],d[1],sel,w2);
    mux_41 a3(q[2],q[3],q[1],d[2],sel,w3);
    mux_41 a4(q[3],right,q[2],d[3],sel,w4);
    d_flipflop1 a5(w1,clk,rst,q[0]);
    d_flipflop1 a6(w2,clk,rt,q[1]);
    d_flipflop1 a7(w3,clk,rst,q[2]);
    d_flipflop1 a8(w4,clk,rst,q[3]);
endmodule
module mux_41(input a,b,c,d,input [1:0]sel,output reg y);
always @(*)
begin
case(sel)
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
endcase
end
endmodule