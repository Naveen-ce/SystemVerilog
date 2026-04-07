module tb;
 typedef struct {
    int data;
    string name;
    int id;
    }struct_t;
  
  initial begin
  
  struct_t fixed_array[4];
  struct_t dynamic_array[];
  struct_t associative_array[int];
  
  $display("  +++++++ Fixed array +++++++   ");
  
    for(int i=0;i<$size(fixed_array);i++) begin
  fixed_array[i].data=i*5;
  fixed_array[i].name=$sformatf ("Fixed%0d",i);
  fixed_array[i].id=i*30;
  
      $display("Fixed_array[%0d] | Data=%0d | Name=%s | Id=%0d",i,fixed_array[i].data,fixed_array[i].name,fixed_array[i].id);
  end
  
  
    $display("+++++++ Dynamic array +++++++   ");
  
  dynamic_array=new[3];
  dynamic_array[0].data=32'h123;
  dynamic_array[0].name="Mekleo";
  dynamic_array[0].id=32'h456;
  
  dynamic_array[1].data=32'h789;
  dynamic_array[1].name="Chuck";
  dynamic_array[1].id=32'habc;
  
  dynamic_array[2].data=32'hdef;
  dynamic_array[2].name="Lokesh";
  dynamic_array[2].id=32'h375;
  
  foreach(dynamic_array[i]) begin
  
    $display("Dynamic_array[%0d] | Data=%0d | Name=%s | Id=%0d",i,dynamic_array[i].data,dynamic_array[i].name,dynamic_array[i].id);
  end
  
  
  $display(" +++++++ Associative array  +++++++  ");
  
  associative_array[12]='{32'habcde,"Koushik",32'h9159};
  associative_array[9]='{32'hfbdac,"Naveen",32'h9786};
  associative_array[20]='{32'hbdfce,"Akash",32'h6474};
  
    $display("Iterating through Associative array");
  
  foreach(associative_array[key]) begin
  
    $display("Associative_array[%0d] | Data=%0d | Name=%s | Id=%0d",key,associative_array[key].data,associative_array[key].name,associative_array[key].id);
  
  end
  
  
  end
  endmodule
  
  
  
  
  
   
    
  
 /*
 +++++++ Fixed array +++++++
Fixed_array[0] | Data=0 | Name=Fixed0 | Id=0
Fixed_array[1] | Data=5 | Name=Fixed1 | Id=30
Fixed_array[2] | Data=10 | Name=Fixed2 | Id=60
Fixed_array[3] | Data=15 | Name=Fixed3 | Id=90
+++++++ Dynamic array +++++++
Dynamic_array[0] | Data=291 | Name=Mekleo | Id=1110
Dynamic_array[1] | Data=1929 | Name=Chuck | Id=2748
Dynamic_array[2] | Data=3567 | Name=Lokesh | Id=885
 +++++++ Associative array  +++++++ 
Iterating through Associative array
Associative_array[9] | Data=1031596 | Name=Naveen | Id=38790
Associative_array[12] | Data=703710 | Name=Koushik | Id=37209
Associative_array[20] | Data=778190 | Name=Akash | Id=25716
*/
