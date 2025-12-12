// base class 
class base_class;
  virtual function void display();
    $display("\t  inside BASE CLASS");
  endfunction
endclass

// extended class 1
class child_1 extends base_class;
  function void display();
    $display("\t iniside child class 1");
    endfunction
endclass

// extended class 2
class child_2 extends base_class;
  function void display();
    $display("\t inside child class 2");
  endfunction
endclass

// extended class 3
class child_3 extends base_class;
  function void display();
    $display("\t inside the child class 3 ");
  endfunction
endclass

  module class_polymorphism;
  initial begin

    //declare and create extended class
    child_1 c_1=new();
    child_2 c_2=new();
    child_3 c_3=new();

    //base class handle
    base_class bs_c[3];
    
    //assigning extended class to base class
    bs_c[0]=c_1;
    bs_c[1]=c_2;
    bs_c[2]=c_3;
    
    //accessing extended class methods using base class handle
    bs_c[0].display();
    bs_c[1].display();
    bs_c[2].display();
    
  end
  endmodule
    
