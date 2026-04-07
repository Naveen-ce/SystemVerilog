module array;
  logic [4:0] [3:0] [3:0] array;
  
  initial begin
    array='{ {4'ha , 4'hb , 4'hc , 4'hd},
            { 4'he , 4'hf , 4'h0001, 4'h0010},
            { 4'h0011 , 4'h0100 , 4'h0101, 4'h0110},
            { 4'h0111 , 4'h1000 , 4'h1001, 4'h1010},
            { 4'h1011 , 4'h1100 , 4'h1101, 4'h1110}};
            
    
    foreach(array[i]) begin
      $display("array[%0d]=%0h",i,array[i]);
      foreach(array[i][j]) begin
        $display("array[%0d][%0d]=%0h",i,j,array[i][j]);
        foreach(array[i][j][k]) begin
          $display("array[%0d][%0d][%0d]=%0h",i,j,k,array[i][j][k]);
      end
    end
  end
  end
endmodule
               
