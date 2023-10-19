`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 22:13:23
// Design Name: 
// Module Name: ra
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


module ra(
    input [3:0] a,b,
    output [3:0] s,
    output cout
    );
    wire c0,c1,c2;
FA_beh fa1(a[0],b[0],0,s[0],c0);
FA_beh fa2(a[1],b[1],c0,s[1],c1);
FA_beh fa3(a[2],b[2],c1,s[2],c2);
FA_beh fa4(a[3],b[3],c2,s[3],cout);
endmodule
module FA_beh(
    input a,b,cin,
    output reg s,cout
    );
    always @(*)
    begin
    s=a^b^cin;
    cout=(a&b)|(b&cin)|(a&cin);
    end
endmodule
