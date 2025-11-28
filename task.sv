module tast();
  int x;
  
  task sum(input int a,b,output int c);
    c=a+b;
  endtask
  
  initial begin 
    sum(10,5,x);
    $display("\tValue of the task is x=%0d",x);
  end
  
  
  
endmodule
