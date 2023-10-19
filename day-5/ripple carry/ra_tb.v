`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 22:17:11
// Design Name: 
// Module Name: ra_tb
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


module ra_tb(

    );
    reg [3:0]a,b;
    wire [3:0]s;
    wire cout;
    ra a1(a,b,s,cout);
    initial 
    begin
     a=4'b1010;b=4'b1000;
    # 10 a=4'b1000;b=4'b1001;
    #10 a=4'b1111;b=4'b1010;
    #10 a=4'b1111;b=4'b1111;
    end
    
endmodule
