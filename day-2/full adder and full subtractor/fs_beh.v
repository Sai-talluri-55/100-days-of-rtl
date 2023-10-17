`timescale 1ns / 1ps
module fs_beh(
    input a,b,cin,
    output reg di,bo
    );
    always @(*)
    begin
    di=a^b^cin;
    bo=(~a&b)|(b&cin)|(~a&cin);
    end
endmodule