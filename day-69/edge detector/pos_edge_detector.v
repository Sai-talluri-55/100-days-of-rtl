`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:16:43
// Design Name: 
// Module Name: pos_edge_detector
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


module pos_edge_detector( input signal,clk,
output edge_detect

    );
    reg signal_dly;
always @(posedge clk)
begin signal_dly<=signal;
end
assign edge_detect = signal & ~(signal_dly);
endmodule
