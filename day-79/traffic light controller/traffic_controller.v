`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 21:49:31
// Design Name: 
// Module Name: traffic_controller
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


module traffic_controller(
input clk, rst,
  output reg [1:0] state,
  output reg red, yellow, green
);

  reg [3:0] cnt;

  parameter red_signal = 2'b00, 
              red_yellow = 2'b01, 
              green_signal = 2'b10, 
              green_yellow = 2'b11;

  always @(posedge clk or posedge rst)
    if (rst) begin
      red <= 1;
      yellow <= 0;
      green <= 0;
      state <= red_signal;
      cnt <= 0;
    end 
    else begin
      case(state)
        red_signal: begin
          if (cnt == 10) 
            cnt <= 0;
          else begin
            cnt <= cnt + 1;
            red <= 1; 
            yellow <= 0; 
            green <= 0;
            state <= red_yellow;
            #30;
          end
        end

        green_signal: begin
          red <= 0;
          yellow <= 0; 
          green <= 1;
          state <= green_yellow;
          #15;
        end

        red_yellow: begin
          red <= 0; 
          yellow <= 1; 
          green <= 0;
          state <= green_signal;
          #5;
        end

        green_yellow: begin
          red <= 0; 
          yellow <= 1; 
          green <= 0;
          state <= red_signal;
          #5;
        end

        default: state <= red_signal;
      endcase
    end

  always @(posedge clk)
  begin
    if (cnt == 10) cnt <= 0;
    else cnt <= cnt + 1;
    end
endmodule
