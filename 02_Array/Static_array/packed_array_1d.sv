module array;
  logic [15:0] array;
  
  initial begin
    array=16'habcd;
    
    foreach(array[i]) begin
      $display("array[%0d]=%0h",i,array[i]);
    end
  end
endmodule
               
