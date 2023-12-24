`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 19:36:45
// Design Name: 
// Module Name: mealy_nonoverlap
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


module mealy_nonoverlap(
input din,clk,rst,
output  reg dout

    );
    reg [1:0] current_state, next_state;
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
        
    always @(posedge clk) begin
        if (rst == 1) begin
            current_state <= s0;
        end else begin
            current_state <= next_state;
        end
    end
    
    always @(din or current_state) begin
        case (current_state)
            s0: if (din == 1) begin
                next_state = s1;
                dout = 1'b0; end
                else begin
                next_state = current_state;
                dout = 1'b0; end
                
            s1: if (din == 0) begin
                next_state = s2;
                dout = 1'b0; end
                else begin
                next_state = current_state;
                dout = 1'b0; end	 
                 
            s2: if (din == 0) begin
                next_state = s3;
                dout = 1'b0; end
                else begin
                next_state = s1;
                dout = 1'b0; end
            
            s3: if (din == 1) begin
                next_state = s0;
                dout = 1'b1; end
                else begin
                next_state = s0;
                dout = 1'b0; end	 
                 
            default: next_state = s0;
        endcase
    end
endmodule
