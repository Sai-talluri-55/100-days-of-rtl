`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:09:58
// Design Name: 
// Module Name: fa_data
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


module fa_data(
    input a,b,cin,
    output s,cout
    );
    assign s=a^b^cin;
    assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
