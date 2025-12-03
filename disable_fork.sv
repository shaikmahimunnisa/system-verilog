module disable_fork;
  initial begin
    fork
      begin
        $display("---------------------------------------------");
        $display($time,"\tFork  1 process1 is started");
        #5;
        $display($time,"\tFork 1 process 1 is ended");
      end
      
      begin
        $display($time,"\tFork 1 process 2 is started");
        #20;
        $display($time,"\tFork1 process2 is ended");
      end
    join_any
    
    fork
      begin
        $display($time,"\tfork2 process1 is stared");
      #10;
        $display($time,"\tfork2 process1 is ended");
      end
    join_none
    disable fork;
      $display($time,"\tafter the disable");
      $display("----------------------------------------------");
      end
      endmodule
      
