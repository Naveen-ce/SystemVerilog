module tb;
  typedef enum {Red,Green,Yellow} color;
  
  typedef enum {Green[5]} color1;
  
  typedef enum {Pink[3]=6} color3;
  
  initial begin
    
    color state1;
    color1 state2;
    color3 state3;
    
    state1=Red;
    $display("Color=%0d | Color_name=%s",state1,state1.name());
    
    
    state2=Green2;         
    $display("Color=%0d | Color_name=%s",state2,state2.name());
    
    state3=Pink2;
    $display("Color=%0d | Color_name=%s",state3,state3.name());
  end
endmodule
    
  
  
                
                
                
               

