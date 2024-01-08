`timescale 1ns / 1ps

module VENDING_MACHINE(
    input [1:0] coin,
    input clock,rst,
    output chocolate); 

    wire [1:0] NEXT_STATE; 
    reg [1:0] P_STATE;

    parameter s0 = 2'b00,
              s1 = 2'b01,
              s2 = 2'b10,
              s3 = 2'b11;

    function [2:0] fsm;    
    input [1:0] fsm_coin; 
    input [1:0] fsm_P_STATE;
    
    reg fsm_chocolate; 
    reg [1:0] fsm_NEXT_STATE;
    
    begin
        case (fsm_P_STATE)
        s0: begin
                if (fsm_coin == 2'b10)
                begin
                    fsm_chocolate = 1'b0; 
                    fsm_NEXT_STATE = s2;
                end

                else if (fsm_coin == 2'b01)
                begin
                    fsm_chocolate = 1'b0; 
                    fsm_NEXT_STATE = s1;
                end
        
                else 
                begin
                    fsm_chocolate = 1'b0; 
                    fsm_NEXT_STATE = s0;
                end
            end
        
        s1: begin
                if (fsm_coin == 2'b10)
                begin
                    fsm_chocolate = 1'b0 ;
                    fsm_NEXT_STATE = s3 ;
                end
        
                else if (fsm_coin == 2'b01) 
                begin
                    fsm_chocolate = 1'b0; 
                    fsm_NEXT_STATE = s2;
                end
        
                else
                begin
                    fsm_chocolate = 1'b0 ;
                    fsm_NEXT_STATE = s1;
                end
            end
        
        s2: begin
                if (fsm_coin == 2'b10)
                begin
                    fsm_chocolate = 1'b0 ;
                    fsm_NEXT_STATE =s3 ;
                end
        
                else if (fsm_coin == 2'b01 )
                begin
                    fsm_chocolate = 1'b0;
                    fsm_NEXT_STATE = s3 ;
                end 
        
                else
                begin
                    fsm_chocolate = 1'b0 ; 
                    fsm_NEXT_STATE = s2;
                end
            end
        
        s3: begin 
                fsm_chocolate = 1'b1 ;
                fsm_NEXT_STATE = s0 ;
            end
        endcase
    
        fsm= {fsm_chocolate, fsm_NEXT_STATE};
    end
endfunction

        assign {chocolate, NEXT_STATE}= fsm(coin, P_STATE);

        always @(posedge clock) 
            begin
                if (rst == 1'b1) P_STATE = s0 ;
                else P_STATE = NEXT_STATE;
            end
endmodule