module test();
  
  class par_trans;
    int a;
    function new(int a);
      this.a = a;
    endfunction : new
  endclass : par_trans

  class child_trans extends par_trans;
    int b;
    function new(int a, int b);
      super.new(a);
      this.b = b;
    endfunction
  endclass : child_trans

  child_trans c_h;

  initial begin
    c_h = new(7, 10);
  end

endmodule : test
