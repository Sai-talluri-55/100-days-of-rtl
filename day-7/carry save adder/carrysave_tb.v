`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 15:09:49
// Design Name: 
// Module Name: carrysave_tb
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


module carrysave_tb(

    );
    reg [3:0]a,b,c;
    wire [3:0]s;
    wire [1:0]cout;
    carrysave a1(a,b,c,s,cout);
    initial 
    begin 
    a=4'b1101;b=4'b1001;c=4'b0100;
    #10 a=4'b1111;b=4'b1011;c=4'b0110;
    #10 a=4'b1101;b=4'b1101;c=4'b1100;
    #10 a=4'b0111;b=4'b0111;c=4'b0001;
    end
endmodule
