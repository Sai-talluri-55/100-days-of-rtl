`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2023 20:33:39
// Design Name: 
// Module Name: btog
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


module btog(
    input [3:0] a,
    input [3:0] y
    );
    assign y[3]=a[3];
    assign y[2]=a[3]^a[2];
    assign y[1]=a[2]^a[1];
    assign y[0]=a[1]^a[0];
    
    
endmodule
