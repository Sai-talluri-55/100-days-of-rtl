`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 18:09:44
// Design Name: 
// Module Name: carryselectadd
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


module carryselectadd(
    input [3:0] a,b,
    input cin,
    output  [3:0] sum,
    output cout
    );
      wire [3:0] s1,s2;
    wire  cout1,cout2;
   
  ra1 a1(a,b,1'b0,s1,cout1);
  ra1 a2(a,b,1'b1,s2,cout2);
 mux_2x1 a3(cout1,cout2,cin,cout);
 mux_2x1 a4(s1[0],s2[0],cin,sum[0]);
 mux_2x1 a5(s1[1],s2[1],cin,sum[1]);
 mux_2x1 a6(s1[2],s1[2],cin,sum[2]);
 mux_2x1 a7(s1[3],s1[3],cin,sum[3]);
endmodule
module mux_2x1(a,b,s,y);
input a,b,s;
output y;
assign y=(b&s)|(a&(~s));
endmodule