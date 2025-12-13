module casting;
  real r_a;
  int i_a;
  
  initial begin
    r_a = (4.2 * 3.2);
    i_a = int '(r_a);
    
    $display("\t value of r_a=%f",r_a);
    $display("\t value of int i_a=%0d",i_a);
    
  end
endmodule
           
