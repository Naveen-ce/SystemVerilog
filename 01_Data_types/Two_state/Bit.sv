module tb;
  bit [7:0] data;
  bit [3:0] id;
  logic [7:0] data1;
initial begin

  $display("Data=0x%0h | Id=0x%0h | Data1=0x%0h",data,id,data1);

data=8'hac;
data1=8'hdx;  

  $display("Data=0x%0h | Id=0x%0h | Data1=0x%0h",data,id,data1);

  $display("Assigning four state datatype to two state datatype");  
data=data1;
  
  $display("Data=0x%0h | Id=0x%0h | Data1=0x%0h",data,id,data1);
  
  $display("Truncating the value");

id=16'habcd;  
  
  $display("Data=0x%0h | Id=0x%0h | Data1=0x%0h",data,id,data1);
end
endmodule

 
   
/* OUTPUT

Data=0x0 | Id=0x0 | Data1=0xx
Data=0xac | Id=0x0 | Data1=0xdx
Assigning four state datatype to two state datatype
Data=0xd0 | Id=0x0 | Data1=0xdx
Truncating the value
Data=0xd0 | Id=0xd | Data1=0xdx
*/
