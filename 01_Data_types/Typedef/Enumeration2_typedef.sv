module tb;
  typedef enum {Red,Green,Yellow,Blue,White} color;
  
  typedef enum {Green[5]} color1;
  
  typedef enum {Pink[3]=6} color3;
  
  initial begin
    
    color state1;
    color1 state2;
    color3 state3;
    
    state1=Red;
    $display("Color_name=%0d",state1.first());
    
    $display("Color_name=%0d",state1.next());
    
    $display("Color_name=%0d",state1.last());
    
    $display("Color_name=%0d",state1.prev());
    
    
    $display(" --------------------------");
   
     
    state2=Green2;  
    
    $display("Color_name=%0d",state2.first());
    
    $display("Color_name=%0d",state2.next());
    
    $display("Color_name=%0d",state2.last());
    
    $display("Color_name=%0d",state2.prev());
   
    $display(" Color_name=%0d",state2.next());
    
    $display(" --------------------------");
    
    state3=Pink2;
    
    
    $display("Color_name=%0d",state3.first());
    
    $display("Color_name=%0d",state3.next());
    
    $display("Color_name=%0d",state3.last());
    
    $display("Color_name=%0d",state3.prev());
   
    
    
    
  end
endmodule
    
  
  
  /* OUTPUT

Color_name=0
Color_name=1
Color_name=4
Color_name=4
 --------------------------
Color_name=0
Color_name=3
Color_name=4
Color_name=1
 Color_name=3
 --------------------------
Color_name=6
Color_name=6
Color_name=8
Color_name=7
*/
                
                
                
               

