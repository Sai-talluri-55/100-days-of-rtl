`timescale 1ns / 1ps


module fs_struct(
    input a,b,cin,
    output di,bo
    );
    wire w1,w2,w3,w4;
    not a6(w4,a);
    xor a1(di,w4,b,cin);
    and a2(w1,a,b);
     and a3(w2,cin,b);
      and a4(w3,w4,cin);
      or a5(bo,w1,w2,w3);
endmodule