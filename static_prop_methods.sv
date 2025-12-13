class packet;
  static byte packet_count;
  
  function new();
    packet_count++;
  endfunction 

static function void display();
  $display("===========================================");
  $display("packet_count=%0d",packet_count);
  $display("===========================================");
endfunction
  
endclass
 
module static_prop_methods;
  packet p_k[3];
  packet p;
 
  initial begin
    p_k[0]=new();
    p_k[1]=new();
    p_k[2]=new();
    
    $display("\t packet_count =%0d",p.packet_count);
    p.display();
  end
    endmodule
