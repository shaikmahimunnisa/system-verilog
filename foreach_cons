class packet;
  rand byte addr [];
  rand byte data [];

  constraint avalues { foreach( addr[i] ) addr[i] inside {4,8,12,16}; }
  constraint dvalues { foreach( data[j] ) data[j] > 4 * j; }
  constraint asize   { addr.size < 4; }
  constraint dsize   { data.size == addr.size; }
endclass

module constr_iteration;
  initial begin
    packet pkt;
    pkt = new();

    $display("------------------------------------");
    repeat(2) begin
      pkt.randomize();
      $display("\taddr-size = %0d data-size = %0d",pkt.addr.size(),pkt.data.size());
      foreach(pkt.addr[i]) $display("\taddr = %0d data = %0d",pkt.addr[i],pkt.data[i]);
      $display("------------------------------------");
    end
  end
endmodule
