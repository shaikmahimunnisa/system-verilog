class packet;
  static bit [32:0] id;
  logic [32:0] addr;
  
  function display (bit[32:0] a,b);
    $display("\t value of a=%0d b=%0d",a,b);
  endfunction
  
endclass

module scope_resolution;
  int id=10;
  initial begin
    packet p;
    p=new();
    packet::id=20;
    p.display(packet::id,id);
  end
endmodule
