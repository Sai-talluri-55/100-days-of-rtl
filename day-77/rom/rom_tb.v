`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 22:33:59
// Design Name: 
// Module Name: rom_tb
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


module rom_tb(

    );
    reg clk;
    reg [3:0]addr;
    wire [15:0]data_out;
    rom dut(data_out, addr, clk);
    initial
    begin
    clk=0;
    addr=3'b000;
    #10 addr=3'b001;
    #10 addr=3'b010;
    #10 addr=3'b011;
    #10 addr=3'b100;
    #10 addr=3'b101;
    #10 addr=3'b110;
    #10 addr=3'b111;
    end
    always #5 clk=~clk;
endmodule
