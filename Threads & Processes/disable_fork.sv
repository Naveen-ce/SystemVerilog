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
      
    join_any
    
    $display("Time=%0t | Main display : Fork join is Ended && disabling fork",$time);
    
    disable fork;
    
  end
  
  
  
endmodule
      
      
/* OUTPUT 

Time=0 | Main display : Fork join is starting
Time=0 | Thread_1  is printed
Time=0 | Main display : Fork join is Ended && disabling fork
xmsim: *W,RNQUIE: Simulation is complete.

*/


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
    
    $display("Time=%0t | Main display : Fork join is Ended && disabling fork",$time);
    
    disable fork;
    
  end
  
  
  
endmodule
      
      


/* OUTPUT 

Time=0 | Main display : Fork join is starting
Time=0 | Main display : Fork join is Ended && disabling fork
xmsim: *W,RNQUIE: Simulation is complete.

*/

