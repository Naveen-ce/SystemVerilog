module array;
  byte array [2:0] [3:0] [3:0];
  
  initial begin
    array='{ '{ '{8'h01, 8'h02, 8'h03, 8'h04}, '{8'h05, 8'h06, 8'h07, 8'h08}, '{8'h09, 8'h0A, 8'h0B, 8'h0C}, '{8'h0D, 8'h0E, 8'h0F, 8'h10} },
    '{ '{8'h11, 8'h12, 8'h13, 8'h14}, '{8'h15, 8'h16, 8'h17, 8'h18}, '{8'h19, 8'h1A, 8'h1B, 8'h1C}, '{8'h1D, 8'h1E, 8'h1F, 8'h20} },
    '{ '{8'h21, 8'h22, 8'h23, 8'h24}, '{8'h25, 8'h26, 8'h27, 8'h28}, '{8'h29, 8'h2A, 8'h2B, 8'h2C}, '{8'h2D, 8'h2E, 8'h2F, 8'h30} }
};
            
    
    foreach(array[i]) begin
      $display("array[%0d]=%p",i,array[i]);
      foreach(array[i][j]) begin
        $display("array[%0d][%0d]=%p",i,j,array[i][j]);
        foreach(array[i][j][k]) begin
          $display("array[%0d][%0d][%0d]=%0h",i,j,k,array[i][j][k]);
      end
    end
  end
  end
endmodule
               
