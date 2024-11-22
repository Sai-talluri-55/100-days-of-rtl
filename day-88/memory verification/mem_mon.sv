class mem_mon;
  mem_tx tx;
 virtual mem_intf  vif;
 function new();
   vif=top.pif;
 endfunction
  task run();
  forever begin
  	@(vif.mon_cb);
	if(vif.mon_cb.valid_i==1 &&vif.mon_cb.ready_o==1);
	 tx=new();
	 tx.wr_rd=vif.mon_cb.wr_rd_i;
	 tx.addr=vif.mon_cb.addr_i;
	 if(tx.wr_rd==1) tx.data=vif.mon_cb.wdata_i;
	 else tx.data=vif.mon_cb.rdata_o;
	 
	 common::mon2cov.put(tx);
 end
  endtask


endclass
