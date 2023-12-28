`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 22:10:05
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(

    );
    wire [7:0] result;
    wire carry_out;
    reg [7:0] operand_a;
    reg [7:0] operand_b;
    reg [3:0] operation;
    alu uut(result, carry_out, operand_a, operand_b, operation);
    
    initial begin
        operand_a = 8'b00110011; 
        operand_b = 8'b11001100;  
        operation = 4'b0000;      
        #1000 $finish;
        
     end

    always
     begin
        operand_a =$random; 
        operand_b =$random;  
        operation =$random;  
        #50;
    end
endmodule
