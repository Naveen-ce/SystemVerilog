module tb;
   enum {Red=5,Green=6,Yellow,Blue,Pink} color;
  
  initial begin
    
    color=Blue;
    $display("Color=%0d | Color_name=%s",color,color.name());
    
    
    color=Green;         
    $display("Color=%0d | Color_name=%s",color,color.name());
    
    color=Pink;
    $display("Color=%0d | Color_name=%s",color,color.name());
  end
endmodule
    
  
/* OUTPUT

Color=8 | Color_name=Blue
Color=6 | Color_name=Green
Color=9 | Color_name=Pink
xmsim: *W,RNQUIE: Simulation is complete.
*/
                
                
                
               
