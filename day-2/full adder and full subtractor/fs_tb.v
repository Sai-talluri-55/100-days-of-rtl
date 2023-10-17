`timescale 1ns / 1ps
module fs_tb(

    );
    reg a,b,cin;
    wire di,bo;
    fs_beh a1(a,b,cin,di,bo);
    initial
     begin
     #10 a=0;b=0;cin=0;
     #10 a=0;b=0;cin=1;
     #10 a=0;b=1;cin=0;
     #10 a=0;b=1;cin=1;
     #10 a=1;b=0;cin=0;
     #10 a=1;b=0;cin=1;
     #10 a=1;b=1;cin=0;
     #10 a=1;b=1;cin=1;
     
    end
    
endmodule