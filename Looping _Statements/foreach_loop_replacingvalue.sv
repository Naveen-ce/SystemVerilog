module loop;
  string fruits[6]= '{"Apple", "Banana", "Grapes", "Kiwi", "Papaya", "Muskmelon"};
  
  initial begin
    
    foreach (fruits[i]) begin
      $display("Fruits[%0d]=%0s",i,fruits[i]);
      foreach (fruits[i][j]) begin
        fruits[i][0]="k";
        $display("Fruits[%0d][%0d]=%0s",i,j,fruits[i][j]);
      end
    end
  end
    endmodule
        
               
