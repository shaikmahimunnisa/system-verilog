virtual class base_class;
  int data;
  bit id;
  function void display();
    $display("\t values of data=%0d id=%0d",data,id);
  endfunction
endclass
  
  class sub_cls extends base_class;
  endclass
  
  module virtual_class;
    
    initial begin
    sub_cls s;   //only with subclass handle we need to access the virtual class
    base_class b;
    s=new(); 
    
     s.data = 10;
     s.id = 1;
    s.display();
    end
  endmodule
