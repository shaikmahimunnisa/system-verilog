virtual class base_class;
  int data;
  bit id;
  
  pure virtual  function void display();
    //this does'nt have its own body
    //and it need to implement its body within all subclasses if derived classes are n number created 
    endclass
    
    class sub_class extends base_class;
      function void display();
        $display("\t value of data=%0d id=%0d ",data,id);
      endfunction
    endclass
    
    module pure_virtual;
      initial begin
        
        base_class b;
        sub_class s;
        
        s = new();  //need to create obj  only for sub class
        b=s; //polymorphism concept
        
        s.data=10;
        s.id=1;
        b.display(); // in pure virtual base class display used
        
      end
    endmodule
