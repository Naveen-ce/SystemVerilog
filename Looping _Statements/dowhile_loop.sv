module loop;
  int count;
  
  initial begin
    
    do begin
      
     # 5 $display("count=%0d",count);
      count++;
    end
    while(count>=0);
    
  end
  
  initial begin
    
    #100 $finish;
     
  end
    endmodule
        
               
