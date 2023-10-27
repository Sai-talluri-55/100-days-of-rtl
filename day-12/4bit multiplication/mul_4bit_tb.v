`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 19:08:21
// Design Name: 
// Module Name: mul_4bit_tb
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


module mul_4bit_tb(

    );
    reg [3:0]a,b;
    wire [7:0]p;
    mul_4bit a1(a,b,p);
    initial 
    begin
    a=4'b1001;b=4'b1010;
    #10 a=4'b1011;b=4'b1110;
     #10 a=4'b1011;b=4'b1111;
      #10 a=4'b1010;b=4'b1011;
    #10 $finish;
    end
    
endmodule
