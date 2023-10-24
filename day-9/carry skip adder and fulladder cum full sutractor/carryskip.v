`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 11:48:07
// Design Name: 
// Module Name: carryskip
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


module carryskip(
    input [3:0] a,b,
    input cin,
    output [3:0] s,p,
    output cout1
    );
    wire c1,s1; 
    ra2 a1(a,b,cin,s,p,c1);
    and a2(s1,p[0],p[1],p[2],p[3]);
    mux_2x1 a3(c1,cin,s1,cout1);
endmodule
module ra2(
    input [3:0] a,b,
    input cin,
    output  [3:0] s,p,
    output cout
    );
    wire c0,c1,c2;
FA_beh fa1(a[0],b[0],cin,s[0],c0);
FA_beh fa2(a[1],b[1],c0,s[1],c1);
FA_beh fa3(a[2],b[2],c1,s[2],c2);
FA_beh fa4(a[3],b[3],c2,s[3],cout);
assign p[0]=a[0]^b[0];
assign p[1]=a[1]^b[1];
assign p[2]=a[2]^b[2];
assign p[3]=a[3]^b[3];
endmodule
module mux_2x1(a,b,s,y);
input a,b,s;
output y;
assign y=(b&s)|(a&(~s));
endmodule
