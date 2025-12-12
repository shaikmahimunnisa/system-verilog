class parent_class;
  bit[15:0] addr;
  function void display();
    $display("\t addr=%0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [15:0] data;
  function  void display();
    super.display();
    $display("\t data=%0d",data);
  endfunction
endclass

module inheritance;
  initial begin
  child_class c =new();
  c.addr=10;
  c.data=15; 
    c.display();
//     $display("\t the value of addr=%0d data=%0d",c.addr,data);
  end
endmodule
