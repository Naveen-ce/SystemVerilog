module array;
  byte array [3:0];
  
  initial begin
    array= '{8'h01,8'h29,8'h2D,8'h3D} ;
            
    
    foreach(array[i]) begin
      $display("array[%0d]=%h",i,array[i]);
      foreach(array[i][j]) begin
        $display("array[%0d][%0d]=%h",i,j,array[i][j]);
        
    end
  end
  end
endmodule
               
