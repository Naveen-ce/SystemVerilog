module array;
  byte array [2:0] [3:0];
  
  initial begin
    array='{  '{8'h01, 8'h02, 8'h03, 8'h04},
               
              '{8'h29, 8'h2A, 8'h2B, 8'h2C}, 
               
            '{8'h2D, 8'h2E, 8'h2F, 8'h30} };
            
    
    foreach(array[i]) begin
      $display("array[%0d]=%p",i,array[i]);
      foreach(array[i][j]) begin
        $display("array[%0d][%0d]=%h",i,j,array[i][j]);
        foreach(array[i][j][k]) begin
          $display("array[%0d][%0d][%0d]=%0h",i,j,k,array[i][j][k]);
      end
    end
  end
  end
endmodule
               
