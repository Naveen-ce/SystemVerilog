module loop;
  int count=10;
  
  initial begin
      while(count>0) begin
  # 5 $display("count=%0d",count);
      count--;
    end
    
  end
  
    endmodule
        
               
