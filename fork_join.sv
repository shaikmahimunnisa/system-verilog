module fork_join;
  initial begin
 
  fork
    begin
      $display("----------------------");
      $display($time,"\tprocess 1 is started");
      #5;
      $display($time,"\tprocess 2 is finished");
    end
    
    begin
      $display($time,"\t process 2 is started");
      #20;
      $display($time,"\t process 2 is finished");
    end
  join
    $display($time,"\toutside of the fork-join");
     $display("-----------------------");
    $finish;
   
  end
endmodule
    
