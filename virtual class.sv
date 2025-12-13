class packet;
  bit [32:0] addr;
endclass

class extended_class extends packet;
  function void display();
    $display("\t addr=%0d ",addr);
  endfunction
endclass

module virtual_class;
  extended_class e;
  
  initial begin
    e=new();
    e.addr=10;
    e.display();
  end
endmodule
