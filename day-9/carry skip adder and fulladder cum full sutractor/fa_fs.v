`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 12:20:21
// Design Name: 
// Module Name: fa_fs
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


module fa_fs(
    input a,b,cin,u,
    output reg  s,cout
    );
    wire s1;
    always@(*)
    begin
    if(u==0)
    begin
    s=a^b^cin;
    cout=(a&b)|(b&cin)|(cin&a);
    end
    else
    begin
    s=a^b^cin;
    cout=((~a)&b)|(b&cin)|(cin&(~a));
    end
    
    end
endmodule
