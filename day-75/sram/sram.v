`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 22:10:23
// Design Name: 
// Module Name: sram
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


module sram#(parameter addr_width = 6,
parameter data_width = 8,
parameter depth = 64)
    (
        input we,clk,
        input [data_width-1:0] data,
        input [addr_width-1:0] addr,
        output [data_width-1:0] out
    );
    
    reg [data_width-1:0] ram [depth-1:0];
    reg [addr_width-1:0] addr_reg;
    
    always @(posedge clk)
    begin
    if(we)
        ram[addr] <= data;
    else
        addr_reg <= addr;
    end
    assign out = ram [addr_reg];

endmodule
