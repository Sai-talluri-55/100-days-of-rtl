`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:20:34
// Design Name: 
// Module Name: encoder_8to3_tb
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


module encoder_8to3_tb(

    );
    reg [7:0]a;
    wire [2:0]y;
    encoder_3to8 dut(a,y);
    initial
    begin
    a=8'b10000000;
    #10 a=8'b01000000;
    #10a=8'b00100000;
    #10 a=8'b00010000;
    #10 a=8'b00001000;
    #10 a=8'b00000100;
    #10 a=8'b00000010;
   #10 a=8'b00000001;
   #10 $finish;
    end
endmodule
