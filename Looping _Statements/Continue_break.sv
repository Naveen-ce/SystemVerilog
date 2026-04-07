module loop;
  int count;
  
  initial begin
    for(int i=0;i<20;i++) begin
       
       count++;
      
      if(count==3) 
        continue;
      
      if(count==18)
        break;
    $display("count[%0d]=%0d",i,count);  
      
      

    end
    
  end
  
    endmodule
        
               
