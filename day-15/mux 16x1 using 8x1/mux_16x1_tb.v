`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 19:08:06
// Design Name: 
// Module Name: mux_16x1_tb
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


module mux_16x1_tb(

    );
    reg [16:0] a;
    reg [3:0] s;
    wire y;
    mux_16x1_8x1 dut(a,s,y);
    initial
    begin
    a=16'b1011010101011011;s=4'b0000;
    #10 s=4'b0001;
     #10 s=4'b0010;
      #10 s=4'b0011;
     #10 s=4'b0100;
     #10 s=4'b0101;
     #10 s=4'b0110;
      #10 s=4'b0111;
      #10 s=4'b1000;
    #10 s=4'b1001;
     #10 s=4'b1010;
      #10 s=4'b1011;
     #10 s=4'b1100;
     #10 s=4'b1101;
     #10 s=4'b110;
      #10 s=4'b1111;
      #10 $finish;
    end
endmodule
