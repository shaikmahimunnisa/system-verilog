class address_range;
  bit[15:0] start_addr;
  bit [15:0] end_addr;
  function new();
    start_addr=16'h11;
    end_addr=16'h11;
  endfunction
  
  //copy method
  function address_range copy;
    copy=new();
    copy.start_addr=this.start_addr;
    copy.end_addr=this.end_addr;
    return copy;
  endfunction
endclass

class packet;
  bit[15:0] addr;
  bit[15:0] data;
  address_range ad_r;
  
  //constructor
  function new();
    addr=15'h9;
    data=15'h9;
    ad_r=new();
  endfunction
  
  //method to display class properties
  function void display();
    $display("===================================================");
    $display("\t value of addr=%0h",addr);
    $display("\t value of data=%0h",data);
    $display("\t value of start_adddr=%0h",ad_r.start_addr);
    $display("\t value of end_addr=%0h",ad_r.end_addr);
    $display("====================================================");
  endfunction
  
  //copy method
  function packet copy;
    copy=new();
    copy.addr=this.addr;
    copy.data=this.data;
    copy.ad_r = ad_r.copy; //deep copy
    return copy;
  endfunction
endclass

module deep_copy;
  packet pkt_1;
  packet pkt_2;
  
  initial begin
    
    pkt_1=new(); //creating pkt_1 obj
    $display("t PKT_1");
    pkt_1.display();
    
    pkt_2=new();  //creating pkt_2 obj
    $display("\t PKT_2");
    pkt_2.display();
    pkt_2=pkt_1.copy();  //deep copy
    
    pkt_2.addr=16'h15;
    pkt_2.data=16'h15;
    pkt_2.ad_r.start_addr=16'h15;
    pkt_2.ad_r.end_addr=16'h15;
    $display("\t PKT_2 AFTER CHANGING FROM HANDLE");
    pkt_2.display();
    $display("\t PKT_1 AFTER CHANGING PKT_2");
    pkt_1.display();
  end
endmodule
