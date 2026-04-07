module array;
  byte dynamic[]='{8'hab, 8'hcd, 8'hef};
  byte dynamic2[];
  initial begin
   
    $display("Size of array=%0d",dynamic.size());
    
    dynamic=new[5] (dynamic);
    $display("Dynamic=%0p",dynamic);
    
    dynamic2=dynamic;
    $display("Dynamic2=%0p",dynamic2);
    
    dynamic2.delete();
    $display("Dynamic2=%0p",dynamic2);
    
    dynamic2=new[dynamic.size()] (dynamic);
    $display("Size of array=%0d,Dynamic2=%0p",dynamic2.size(),dynamic2);
    
    dynamic2[dynamic.size()-2]=8'hac;
    $display("Size of array=%0d,Dynamic2=%0p",dynamic2.size(),dynamic2);
    
    dynamic2[dynamic.size()-1]=8'hbc;
    $display("Size of array=%0d,Dynamic2=%0p",dynamic2.size(),dynamic2);
       
  end
  
    
    endmodule
