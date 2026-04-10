module tb;
  initial begin 
    
    $display("Time=%0t | Main display : Fork join is starting",$time);
    
    fork
      
      $display("Time=%0t | Thread_1  is printed",$time);
      
      #5 $display("Time=%0t | Thread_1_0  is printed",$time);
      
      fork 
        
        #5 $display("Time=%0t | Thread_2  is printed",$time);
        
        #10 $display("Time=%0t | Thread_2_0  is printed",$time);
        
        #25 $display("Time=%0t | Thread_2_1  is printed",$time);
        
      join
      
      begin
        
        #20 $display("Time=%0t | Thread_3  is printed",$time);
        
        #10 $display("Time=%0t | Thread_3_0  is printed",$time);
        
      end
      
    join_none
    
    $display("Time=%0t | Main display : Fork join is Ended",$time);
    
  end
  
  
  
endmodule
      
      


/* OUTPUT 

Time=0 | Main display : Fork join is starting
Time=0 | Main display : Fork join is Ended
Time=0 | Thread_1  is printed
Time=5 | Thread_1_0  is printed
Time=5 | Thread_2  is printed
Time=10 | Thread_2_0  is printed
Time=20 | Thread_3  is printed
Time=25 | Thread_2_1  is printed
Time=30 | Thread_3_0  is printed
xmsim: *W,RNQUIE: Simulation is complete.

*/
