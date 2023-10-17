`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 19:52:39
// Design Name: 
// Module Name: FA_beh
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
