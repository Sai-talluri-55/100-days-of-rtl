`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2024 22:34:39
// Design Name: 
// Module Name: carparking
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


module carparking(
 input clk, rst, car_arrive, car_exit,
  input [2:0] exit_from, 
  input [7:0] exit_code, 
  output reg [2:0] parking_slot,
  output reg can_park,  
  output reg [7:0] parking_register
); 
  
  reg [7:0] slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8;
  reg [2:0] available_spot; 
  reg [7:0] temp; 
  reg match;
  integer i;
  
  always @(posedge clk) begin
    if (rst) begin
      parking_slot = 3'b111;
      can_park = 1;
      parking_register = 8'b0;
    end
    else if (car_exit) begin
      case (exit_from)
        0 : match = exit_code == slot1 ? 1 : 0;
        1 : match = exit_code == slot2 ? 1 : 0;
        2 : match = exit_code == slot3 ? 1 : 0;
        3 : match = exit_code == slot4 ? 1 : 0;
        4 : match = exit_code == slot5 ? 1 : 0;
        5 : match = exit_code == slot6 ? 1 : 0;
        6 : match = exit_code == slot7 ? 1 : 0;
        7 : match = exit_code == slot8 ? 1 : 0;
        default : match = 0;
      endcase
    end
    else if (!parking_slot) 
      can_park = 0;
    
    else if (car_arrive) begin
      parking_slot = parking_slot - 1;
      can_park = 1;      
      for (i = 0; i <= 7; i = i + 1) begin
        if (parking_register[i] == 0)
          available_spot = i;
      end
      parking_register[available_spot] = 1;
      task_code(available_spot, temp);
      case (available_spot)
        0 : slot1 = temp;
        1 : slot2 = temp;
        2 : slot3 = temp;
        3 : slot4 = temp;
        4 : slot5 = temp;
        5 : slot6 = temp;
        6 : slot7 = temp;
        7 : slot8 = temp;
      endcase
    end
    if (match) begin
      parking_slot = parking_slot + 1;
      can_park = 1;
      parking_register[exit_from] = 0;
    end
    else
      parking_slot = parking_slot;
  end
  
  task task_code;
    input [2:0] slot_number;
    output reg [7:0] out;
   
    begin
      case (slot_number)
        0 : out = 1;
        1 : out = 1 + 2;
        2 : out = 1 + 2 + 3;
        3 : out = 1 + 2 + 3 + 5;
        4 : out = 1 + 2 + 3 + 5 + 8;
        5 : out = 1 + 2 + 3 + 5 + 8 + 13;
        6 : out = 1 + 2 + 3 + 5 + 8 + 13 + 21;
        7 : out = 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34;
        default : out = 8'bz;
      endcase
    end
  endtask
endmodule
