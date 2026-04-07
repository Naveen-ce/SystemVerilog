module array;
  logic [3:0] [3:0] array;
  
  initial begin
    array= '{4'ha ,4'hb, 4'hc, 4'hd};
    
    foreach(array[i]) begin
      $display("array[%0d]=%0h",i,array[i]);
      foreach(array[i][j]) begin
        $display("array[%0d][%0d]=%0h",i,j,array[i][j]);
      end
    end
  end
endmodule
               
/*               
array[3]=a
array[3][3]=1
array[3][2]=0
array[3][1]=1
array[3][0]=0
array[2]=b
array[2][3]=1
array[2][2]=0
array[2][1]=1
array[2][0]=1
array[1]=c
array[1][3]=1
array[1][2]=1
array[1][1]=0
array[1][0]=0
array[0]=d
array[0][3]=1
array[0][2]=1
array[0][1]=0
array[0][0]=1
*/
