module fork_join_any;
  
  initial begin
   fork
     begin
       $display("=============================================");
    $display($time,"\tthe process 1 is started");
    #5;
    $display($time,"\tthe process 1 is finished");
     end
  
  begin
    $display($time,"\tthe process 2 is started ");
    #20;
    $display($time,"\tthe process 2 is ended");
    $display("================================================");
  end 

  join_any
  
  $display($time,"\toutside fork join any");
//     $display("=================================");
  end
endmodule
