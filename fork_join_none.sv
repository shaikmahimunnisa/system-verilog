module fork_join_none;
  initial begin
    fork
      begin
//         $display("--------------------------------------------------------");
        $display($time,"\tProcess 1  is started");
        #5;
        $display($time,"\tProcess 1 is ended");
      end
      begin
        $display($time,"\tProcess2 is started");
        #20;
        $display($time,"\tProcess 2 is ended");
      end
    join_none
    
    $display("-----------------------------------------------------------");
    $display($time,"\toutside of the fork join none");
    $display("-------------------------------------------------");
    
  end
endmodule
