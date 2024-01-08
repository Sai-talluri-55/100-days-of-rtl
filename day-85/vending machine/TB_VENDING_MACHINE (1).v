`timescale 1ns / 1ps

module TB_VENDING_MACHINE;
    reg clock;
    reg [1:0] coin;
    reg rst;
    wire chocolate;

VENDING_MACHINE dut(coin, clock, rst, chocolate);

    initial begin
        $monitor("%d %d %d", coin, rst, chocolate);
        clock = 0;
        coin = 0 ;
        rst = 1 ;
        #50 rst = 0 ;
        @(negedge clock); 
        #40 coin = 1; #20 coin = 0;
        #40 coin = 1; #20 coin = 0;
        #40 coin = 1; #20 coin = 0 ;
        #80 coin = 1; #20 coin = 0; 
        #40 coin = 2; #20 coin = 0;
        #80 coin = 2 ; #20 coin = 0 ;
        #40 coin = 2; #20 coin = 0;
        #80 coin = 2; #20 coin = 0;
        $finish;
    end
    always #10 clock = ~clock;

endmodule