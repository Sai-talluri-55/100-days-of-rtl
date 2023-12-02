`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2023 19:25:19
// Design Name: 
// Module Name: down_convertor
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


module down_convertor(
    input rst,
    input clk,
    output [3:0] counter_op
    );
    T_FF TFF1(.t(1),.clk(clk),.rst(rst),.qn_bar(counter_op[0]));
    T_FF TFF2(.t(1),.clk(counter_op[0]),.rst(rst),.qn_bar(counter_op[1]));
    T_FF TFF3(.t(1),.clk(counter_op[1]),.rst(rst),.qn_bar(counter_op[2]));
    T_FF TFF4(.t(1),.clk(counter_op[2]),.rst(rst),.qn_bar(counter_op[3]));
endmodule
module T_FF(t,clk,rst,qn,qn_bar);
input t,clk,rst; output reg qn;output qn_bar; 
always@(posedge clk) 
begin 
if(!rst) 
qn=0;
else 
begin
case(t) 
0:qn=qn;
1:qn=~qn;
endcase 
end
end
assign qn_bar=~qn;
endmodule
