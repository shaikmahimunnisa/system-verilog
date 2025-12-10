class address_range;
  bit[3:0] starting_address;
  bit [3:0] ending_address;
  function new();
    starting_address=4'd3;
    ending_address =4'd3;
    endfunction
      endclass
      
//class properties
      class packet;
        bit [3:0] addr;
        bit [3:0] data;
        address_range ad_r;
        
        //new constructor
        function new();
          addr=4'd0;
          data =4'd0;
          ad_r = new(); //creating obj
        endfunction
        
        //method use to display properties
        function void display();
          $display("===============================================");
          $display("\t addr = %0d",addr);
          $display("\t data=%0d",data);
          $display("\t starting_address =%0d",ad_r.starting_address);
          $display("\t ending_address=%0d",ad_r.ending_address);
          $display("===============================================");
        endfunction
      endclass
      
      module shallow_copy;
        packet pkt_1;
        packet pkt_2;
        
        initial begin
          pkt_1=new();  //creating pkt_1 obj
          $display("the values of PKT_1 ");
          pkt_1.display();
          
          pkt_2=new pkt_1;  //shallow copy
          $display("the values of PKT_2");
          pkt_2.display();
          
          
          //changing value with packet assignment
          pkt_2=new();
          pkt_2.addr=4'd1;
          pkt_2.data=4'd1;
          pkt_2.ad_r.starting_address=4'd2;
          pkt_2.ad_r.ending_address=4'd2;
          $display("after the modification of pkt_2");
          pkt_2.display();
          $display("after the modification in pkt_2,PKT_1 is");
          pkt_1.display();
          
        end
      endmodule
