module tb;
   enum {Red=5,Green=6,Yellow,Blue,Pink} color;
  
  initial begin
    
    $display("---------Displaying first Element-----------");

    $display("Color=%0d | Color_name=%0d",color,color.first());
    
    
    $display("---------Displaying next element------------");

    color=Green;
    $display("Color=%0d | Color_name=%0d",color,color.next());
    
    
    color=Pink;
    $display("Color=%0d | Color_name=%0d",color,color.prev());
    


    $display("---------Displaying last Element-------------");
    
    $display("Color=%0d | Color_name=%0d",color,color.last());
    
    $display("Color=%0d | Color_name=%0d",color,color.next());
             
             
    $display("Color=%0d | Color_name=%0d",color,color.prev());
    
  end
endmodule
    
  
  
                
                
/* OUTPUT

---------Displaying first Element-----------
Color=0 | Color_name=5
---------Displaying next element------------
Color=6 | Color_name=7
Color=9 | Color_name=8
---------Displaying last Element-------------
Color=9 | Color_name=9
Color=9 | Color_name=5
Color=9 | Color_name=8
xmsim: *W,RNQUIE: Simulation is complete.
*/                
               

