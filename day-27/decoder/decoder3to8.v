`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 20:30:11
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0] a,
    input e,
    output [7:0] y
    );
    wire w1,w2,w3;
    not a1(w1,a[0]);
    not a2(w2,a[1]);
    not a3(w3,a[2]);
   
    and a4(y[0],w1,w2,w3,e);
     and a5(y[1],w3,w2,a[0],e);
     and a6(y[2],w3,a[1],w3,e);
     and a7(y[3],w3,a[1],a[0],e);
     and a8(y[4],a[2],w2,w1,e);
     and a9(y[5],a[2],w2,a[0],e);
     and a10(y[6],a[2],a[1],w1,e);
     and a11(y[7],a[2],a[1],a[0],e);
     
     

     
endmodule
