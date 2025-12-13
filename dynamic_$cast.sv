class base_class;
  bit [32:0] addr;
  function void display();
    $display("\t value of addr=%0d ",addr);
  endfunction
endclass

class child_class extends base_class;
  bit [32:0] data;
  function void display();
    super.display();
     $display("\t value of data = %0d",data);
  endfunction
endclass

module cast;
  initial begin
    base_class b ;
    child_class c=new();
    child_class c1;
    
    c.addr=10;
    c.data=20;
    b=c;
    
    $cast(c1,b);
    c.display();
  end
endmodule
  
