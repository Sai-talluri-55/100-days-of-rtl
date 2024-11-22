`define addr_width 16

`define width 32

class common;
  static mailbox mbox=new();
  static mailbox mon2cov=new();
  static int drivedone=0;
  static event finish;
endclass
