`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 18:33:10
// Design Name: 
// Module Name: mul_4bit
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


module mul_4bit(
    input [3:0] a,b,
    output [7:0] p
    );
    wire [15:0]c;
    wire [10:0]c1;
    wire [5:0]s2;
    and a1(p[0],a[0],b[0]);
     and a2(c[1],a[1],b[0]);
     and a3(c[2],a[2],b[0]);
     and a4(c[3],a[3],b[0]);//
     and a5(c[4],a[0],b[1]);
     and a6(c[5],a[1],b[1]);
     and a7(c[6],a[2],b[1]);
     and a8(c[7],a[3],b[1]);
      and a9(c[8],a[0],b[2]);
     and a10(c[9],a[1],b[2]);
     and a11(c[10],a[2],b[2]);
     and a12(c[11],a[3],b[2]);
      and a13(c[12],a[0],b[3]);
     and a14(c[13],a[1],b[3]);
     and a15(c[14],a[2],b[3]);
     and a16(c[15],a[3],b[3]);
     
     ha_beh h1(.a(c[1]),.b(c[4]),.s(p[1]),.c(c1[0]));
     fa_data f1(.a(c[2]),.b(c[5]),.cin(c1[0]),.s(s2[0]),.cout(c1[1]));
    fa_data f2(.a(c[3]),.b(c[6]),.cin(c1[1]),.s(s2[1]),.cout(c1[2]));
    ha_beh h2(.a(c1[2]),.b(c[7]),.s(s2[2]),.c(c1[3]));
     ha_beh h3(.a(c[8]),.b(s2[0]),.s(p[2]),.c(c1[4]));
     fa_data f3(.a(c[9]),.b(s2[1]),.cin(c1[4]),.s(s2[3]),.cout(c1[5]));
    fa_data f4(.a(c[10]),.b(s2[2]),.cin(c1[5]),.s(s2[4]),.cout(c1[6]));
    fa_data f5(.a(c[11]),.b(c1[3]),.cin(c1[6]),.s(s2[5]),.cout(c1[7]));
    ha_beh h4(.a(c[12]),.b(s2[3]),.s(p[3]),.c(c1[8]));
     fa_data f6(.a(c[13]),.b(s2[4]),.cin(c1[8]),.s(p[4]),.cout(c1[9]));
    fa_data f7(.a(c[14]),.b(s2[5]),.cin(c1[9]),.s(p[5]),.cout(c1[10]));
    fa_data f8(.a(c[15]),.b(c1[7]),.cin(c1[10]),.s(p[6]),.cout(p[7]));
endmodule
