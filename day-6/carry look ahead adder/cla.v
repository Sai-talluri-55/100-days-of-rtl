`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 20:56:50
// Design Name: 
// Module Name: cla
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


module cla(
    input [3:0] a,b,
    output [3:0] s,
    input cin,
    output cout
    );
    wire [3:0]carry;
    wire [3:0]g,p;
    assign p=a^b;
    assign g=a&b;
    
    assign carry[0]=(p[0] & cin)|g[0];
     assign carry[1]=(p[1] & carry[0])|g[1];
      assign carry[2]=(p[2] & carry[1])|g[2];
       assign carry[3]=(p[3] & carry[2])|g[3];
       assign s[0]=p[0]^cin;
       assign s[1]=p[1]^carry[0];
       assign s[2]=p[2]^carry[1];
       assign s[3]=p[3]^carry[2];
       assign cout=carry[3];
    
endmodule
