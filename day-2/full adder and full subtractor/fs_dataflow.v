`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 21:37:02
// Design Name: 
// Module Name: fs_dataflow
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


module fs_data(
    input a,b,cin,
    output di,bo
    );
    assign di=a^b^cin;
    assign bo=((~a)&b)|(b&cin)|(cin&(~a));
endmodule
