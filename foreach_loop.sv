module foreach_loop;
  int a[3][2];
  initial begin
    $display("----------------------------------------------------------------------------------");
    foreach(a[i,j])  begin
      a[i][j] = i+j;
       end
    foreach(a[i,j])  $display("\t the value of a[%0d][%0d]=%0d",i,j,a[i][j]); 
                            $display("------------------------------------------------------------"); 
     end
 endmodule
