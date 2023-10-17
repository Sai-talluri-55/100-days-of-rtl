`timescale 1ns / 1ps


module fa_struct(
    input a,b,cin,
    output s,cout
    );
    wire w1,w2,w3;
    xor a1(s,a,b,cin);
    and a2(w1,a,b);
     and a3(w2,cin,b);
      and a4(w3,a,cin);
      or a5(cout,w1,w2,w3);
endmodule
