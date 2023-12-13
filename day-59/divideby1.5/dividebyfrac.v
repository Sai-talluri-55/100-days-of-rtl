`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 20:21:29
// Design Name: 
// Module Name: dividebyfrac
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


module dividebyfrac(
    input clk,rst,
    output q
    );
    wire w1,w2;
    divideby3 a2(clk,rst,w2);
    mux2x1 a3(~clk,clk,w2,w1);
    t_flipflop a1(1,w1,rst,q);
    
endmodule
module t_flipflop1(
    input t,clk,rst,
    output reg q);
   initial q=0;
   always @(negedge clk)
   begin
    if(!rst)
    begin
    q=0;
    end
    else begin
     case(t)
     0:q=q;
     1:q=~q;
     endcase
    end
   
    
end
endmodule
