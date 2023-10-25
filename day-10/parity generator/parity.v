`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 19:19:34
// Design Name: 
// Module Name: parity
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


module parity(
    input [4:0] a,
    input s,
    output reg p
    
    );
    
    
    always @(*)
    begin
   
    if(s==0)
    begin
    p=a[0]^a[1]^a[2]^a[3];
    end
    else
    begin
    p=~(a[0]^a[1]^a[2]^a[3]);
    end
    end
endmodule
