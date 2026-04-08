

class car;
  
  string Brand;
  bit[31:0] Series_number;
  string Type ;
  
  
  function new(string Brand="Porsche", string Type="Sports car");
    this.Brand=Brand;
    Series_number=12'h911;
    this.Type=Type;
    
  endfunction    
  
  
  function void display();
   
    
    $display("Name of the Brand = %0s | Series Number = %0h | Type of the Car = %0s",Brand,Series_number,Type);
    
    endfunction
    
endclass
               
module tb;
  
  car c1,c2;
  
  initial begin
  
    c1=new("BMW","Family car");
    c2=new(); 
  
  c1.display();
  c2.display();
  
  end
  
endmodule



/* OUTPUT 

Name of the Brand = BMW | Series Number = 911 | Type of the Car = Family car
Name of the Brand = Porsche | Series Number = 911 | Type of the Car = Sports car
xmsim: *W,RNQUIE: Simulation is complete.
*/


