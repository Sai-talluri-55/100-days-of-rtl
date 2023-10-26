`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 20:08:32
// Design Name: 
// Module Name: mul_2bit_tb
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


module mul_2bit_tb(

    );
    reg [1:0]a,b;
    wire [3:0]p;
    multiplication_2bit dut(a,b,p);
    initial
    begin
    a=2'b11;b=2'b10;
    #10 a=2'b00;b=2'b11;
    #10 a=2'b10;b=2'b10;
    #10 $finish();
    end
    
endmodule
