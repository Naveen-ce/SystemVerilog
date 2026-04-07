module loop;
  int count;
  
  initial begin
    for(int i=0;i<10;i++) begin
    
      
      unique0 if(count>=3) 
        $display("count is valid,count[%0d]=%0d",i,count);
      
      else if (count>=5)
        $display("count is valid1,count[%0d]=%0d",i,count);
        
       
      
      count++;
      

    end
    
  end
  
    endmodule
        
               
