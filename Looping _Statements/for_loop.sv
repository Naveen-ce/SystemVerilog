module loop;
  string fruits[6]= '{"Apple", "Banana", "Grapes", "Kiwi", "Papaya", "Muskmelon"};
  
  initial begin
    
    for (int i=0;i<$size(fruits);i++) begin
      $display("Fruits[%0d]=%0s",i,fruits[i]);
      for(int j=0;j<fruits[i].len();j++) begin
               $display("Fruits[%0d][%0d]=%0s",i,j,fruits[i][j]);
      end
    end
  end
    endmodule
        
               
