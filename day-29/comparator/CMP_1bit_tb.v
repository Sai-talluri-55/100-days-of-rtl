`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 09:54:20
// Design Name: 
// Module Name: CMP_1bit_tb
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


module CMP_1bit_tb();
reg A,B;wire Equal,GT,LT; 
Comparator_1bit dut(.A(A),.B(B),.Equal(Equal),.GT(GT),.LT(LT));
initial
begin
A=1'b0; B=1'b0; #10;
A=1'b0; B=1'b1; #10;
A=1'b1; B=1'b0; #10;
A=1'b1; B=1'b1; #10;
$finish();
end

endmodule
