//class def for a simple transaction
class transaction;
  //properties (variables) of the class
  int id;
   string source;
   string destination;
   bit[3:0] data;

  //constructor with default values
function new(int id_val=0, string source_val="unknown", string destination_val="unknown" , bit[3:0] data_val= 4'b0000);
  this.id=id_val;
  this.source=source_val;
  this.destination=destination_val;
  this.data=data_val;
endfunction
  
//methods to display transaction values
function void display();
  $display("------------------------------------------");
  $display("value of id:%0d",id);
  $display("value of source:%0s",source);
  $display("value of destination:%0s",destination);
  $display("value of data:%0d",data);
  $display("--------------------------------------------");
endfunction
endclass

//testbench to create and display transactions
module test;
  initial begin
    //declare obj handles
    transaction t1, t2, t3;
    
    t1=new(); //default values will be displayed
    t1.display();// display transaction details
    
    t2=new(101,"CPU","MEM",4'b0101);
    t2.display();
    
    t3=new(2003,"scl","home"); //default data will be display
    t3.display();
  end
endmodule
