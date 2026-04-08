class  array;
  
 string subject;
  
  int mark;
  
  function new( int mark);
    
    this.mark=mark;
    
    endfunction

    function void display();
      
      $display("Name of the Subject = %s | Marks obtained = %0d",subject,mark);
      
    endfunction

    endclass
    
    
    module tb;
      
      array dynamic_array[];
      
      initial begin
        
        dynamic_array=new[5];
      
        for(int i=0;i<$size(dynamic_array);i++) begin
        
          dynamic_array[i]=new(i*20);
        
      end
      
      dynamic_array[0].subject="English";
      dynamic_array[1].subject="Tamil";
      dynamic_array[2].subject="Mathematics";
      dynamic_array[3].subject="Chemistry";
      dynamic_array[4].subject="Physics";
      
      
        for(int i=0;i<$size(dynamic_array);i++) begin
        
        $display("");
          
        $display("Dynamic_array[%0d]",i);
        dynamic_array[i].display();
        
        $display("");
        end
          
        $display(" ");
         
     $display("           -------After extending memory-------         ");
        
      $display(" ");
          
          dynamic_array=new[6](dynamic_array);
      
        for(int i=0;i<$size(dynamic_array);i++) begin
        
          dynamic_array[i]=new(i*20);
        
      end
      
      dynamic_array[0].subject="English";
      dynamic_array[1].subject="Tamil";
      dynamic_array[2].subject="Mathematics";
      dynamic_array[3].subject="Chemistry";
      dynamic_array[4].subject="Physics";
      dynamic_array[5].subject="Biology";
      
        for(int i=0;i<$size(dynamic_array);i++) begin
        
        $display("");
          
        $display("Dynamic_array[%0d]",i);
        dynamic_array[i].display();
        
        $display("");
      end
          
      end
     
    endmodule
       
      
      
      
      
      
      
    



/* OUTPUT 


Dynamic_array[0]
Name of the Subject = English | Marks obtained = 0


Dynamic_array[1]
Name of the Subject = Tamil | Marks obtained = 20


Dynamic_array[2]
Name of the Subject = Mathematics | Marks obtained = 40


Dynamic_array[3]
Name of the Subject = Chemistry | Marks obtained = 60


Dynamic_array[4]
Name of the Subject = Physics | Marks obtained = 80

 
           -------After extending memory-------         
 

Dynamic_array[0]
Name of the Subject = English | Marks obtained = 0


Dynamic_array[1]
Name of the Subject = Tamil | Marks obtained = 20


Dynamic_array[2]
Name of the Subject = Mathematics | Marks obtained = 40


Dynamic_array[3]
Name of the Subject = Chemistry | Marks obtained = 60


Dynamic_array[4]
Name of the Subject = Physics | Marks obtained = 80


Dynamic_array[5]
Name of the Subject = Biology | Marks obtained = 100

xmsim: *W,RNQUIE: Simulation is complete.
*/
