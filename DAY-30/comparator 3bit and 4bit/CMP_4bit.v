`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 20:24:05
// Design Name: 
// Module Name: CMP_4bit
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


module CMP_4bit(

    );
    reg [3:0]a,b;wire equal,gt,lt;
integer i;
Comparator_4bit dut(.a(a),.b(b),.equal(equal),.gt(gt),.lt(lt));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin
a=$random;
b=$random;
#10;
end
$finish();
end
endmodule
