module queque_datatype;
  int i;
  bit [7:0] queue1[$];
  string queue2[$];
  
  initial begin
    queue1={1,2,3,4,5};
    queue2={"pink","red","blue"};
    $display("--------queue1 size is %0d before the update------",queue1.size());
    foreach(queue1[i]) $display("\tqueue1[%0d]=%0d",i,queue1[i]);
  end
  
  initial begin
    $display("---------queue2 is %0d-----------",queue2.size());
    foreach(queue2[i]) $display("-------\tqueue2[%0d]=%0s",i,queue2[i]);
    
    
    queue2.insert(1,"black");
    $display("-----queue2 after the update is %0d---------",queue2.size());
    foreach (queue2[i]) $display("\tqueue2[%0d]=%0s",i,queue2[i]);
    
    queue1.pop_back();
    $display("the value after the pop bacck is %0d",queue1.size());
    foreach (queue1[i]) $display("\tqueue1[%0d]=%0d",i,queue1[i]);
  end
  
endmodule
