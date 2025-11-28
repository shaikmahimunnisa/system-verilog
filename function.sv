module func;
  int x;
  
  function  int sum;
   input int a,b;
    return a+b;
  endfunction
  
  initial begin
    x=sum(10,5);
    $display("\tValue fo the x is %0d",x);
    end
  endmodule
