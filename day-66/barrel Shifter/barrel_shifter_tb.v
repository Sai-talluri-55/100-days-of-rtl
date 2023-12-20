`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 20:05:33
// Design Name: 
// Module Name: barrel_shifter_tb
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


module barrel_shifter_tb(

    );
    reg [7:0]din;
    reg [2:0]shift;
    wire [7:0]out;
    barrel_shifter dut(din,shift,out);
    initial 
    begin
    din=8'd6;shift=3'd0;
    #10 din=8'd16;shift=3'd2;
    #10 din=8'd4;shift=3'd5;
    #10 $finish;
    end
endmodule
