module tb;
logic [3:0] data;
logic [2:0] id;

initial begin

  $display("Data=0x%0h | Id=0x%0d",data,id);

data=4'hc;

  $display("Data=0x%0h | Id=0x%0d",data,id);
//id=data[3:1];
  $display("Data=0x%0h | Id=0x%0d",data,id);
  
  #1;
  $display("Data=0x%0h | Id=0x%0d",data,id);

  

end
  assign id=data[2:0]; //Logic datatype can also be assigned by continuous assignment
endmodule


/*
Data=0xx | Id=0xx
Data=0xc | Id=0xx
Data=0xc | Id=0xx
Data=0xc | Id=0x4
*/
