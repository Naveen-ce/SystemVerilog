
// Parent Class


class car;
  
  string Brand;
  bit[31:0] Series_number;
  string Type ;
  
  
  function print();
    Brand="Porsche";
    Series_number=12'h911;
    Type="Sports car";
    
    $display("                   ------------Car Details------------                ");
    
    
    $display("Name of the Brand = %0s | Series Number = %0h | Type of the Car = %0s",Brand,Series_number,Type);
    
    $display("");
    
    
    
  endfunction    
  
  
  function void display();
    
    
    $display("===========================+++++++++++++++++++++++++++++++++++++++===========================           ");
    
    
    $display("");
    
    $display("                   ------------Car Details------------                ");
    
    
    $display("Name of the Brand = %0s | Series Number = %0h | Type of the Car = %0s",Brand,Series_number,Type);
    
    $display("");
    
    endfunction
    
endclass


// Child Class
    

class specifications ;
      car c1;
      string model_name;
      bit[31:0] speed; 
      string Registeration_Details[string];
      
      
      function print();
     model_name="Turbo Series";
     speed=12'h320;
     Registeration_Details["Owner Name : Naveen"]=" Reg No : TN 51 AB 1011";  
         
        $display("Name of the model = %0s | Top Speed = %0h",model_name,speed);
        
        $display("");
        
    $display("                   -------Registeration Details-------                    ");
        
        $display("");
        
        $display("Registeration_Details = %0p",Registeration_Details);
        
        $display("");
        
      endfunction
      
      
      
      function void display();
        
        $display("Name of the model = %0s | Top Speed = %0h ",model_name,speed,);
        
        $display("");
        
        $display("                  --------Registeration Details-------                      ");
        
        $display("");
        
        $display("Registeration_Details = %0p",Registeration_Details);
        
        $display("");
        
      endfunction
                 
endclass


                 
   
module class_tb;
     specifications s1;
     
       
    initial begin
     
     s1=new();
     s1.c1=new();
     
     s1.c1.print();
     s1.print();
      
     s1.c1.Brand="BMW";
     s1.c1.Series_number=12'h532;
     s1.c1.Type="Sedan";
     
     s1.model_name="M Series";
     s1.speed=12'h330;
     s1.Registeration_Details.delete();
     s1.Registeration_Details["Owner Name : Praveen"]= "Reg No : TN 51 AC 5260";
     
     s1.c1.display();
     s1.display();
     
     end
   endmodule
     
     
     
        
  
  
  




/* OUTPUT

                   ------------Car Details------------                
Name of the Brand = Porsche | Series Number = 911 | Type of the Car = Sports car

Name of the model = Turbo Series | Top Speed = 320

                   -------Registeration Details-------                    

Registeration_Details = '{"Owner Name : Naveen":" Reg No : TN 51 AB 1011"}

===========================+++++++++++++++++++++++++++++++++++++++===========================           

                   ------------Car Details------------                
Name of the Brand = BMW | Series Number = 532 | Type of the Car = Sedan

Name of the model = M Series | Top Speed = 330  

                  --------Registeration Details-------                      

Registeration_Details = '{"Owner Name : Praveen":"Reg No : TN 51 AC 5260"}

*/
