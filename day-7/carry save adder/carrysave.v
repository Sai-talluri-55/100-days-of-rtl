`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 13:58:01
// Design Name: 
// Module Name: carrysave
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


module carrysave(
    input [3:0] a,b,c,
    
    output [3:0] s,
    output [1:0]cout
    );
    wire [3:0]s0,c0;
    wire [3:0]s1,c1;
    //satge -1
   fa_struct fa1(a[0],b[0],c[0],s0[0],c0[0]); 
   fa_struct fa2(a[1],b[1],c[1],s0[1],c0[1]); 
   fa_struct fa3(a[2],b[2],c[2],s0[2],c0[2]); 
   fa_struct fa4(a[3],b[3],c[3],s0[3],c0[3]); 
   //stage-2
   fa_struct fa5(c0[0],s0[1],0,s1[0],c1[0]);
  fa_struct fa6(c0[1],s0[2],c1[0],s1[1],c1[1]);
  fa_struct fa7(c0[2],s0[3],c1[1],s1[2],c1[2]);
  fa_struct fa8(c0[3],0,c1[2],s1[3],c1[3]);
  assign s[0]=s0[0];
  assign s[1]=s1[0];
  assign s[2]=s1[1];
  assign s[3]=s1[2];
  assign cout[0]=s1[3];
  assign cout[1]=c1[3];
endmodule

module fa_struct(
    input a,b,cin,
    output s,cout
    );
    wire w1,w2,w3;
    xor a1(s,a,b,cin);
    and a2(w1,a,b);
     and a3(w2,cin,b);
      and a4(w3,a,cin);
      or a5(cout,w1,w2,w3);
endmodule