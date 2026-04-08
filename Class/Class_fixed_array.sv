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
      
      array fixed_array[6];
      
      initial begin
      
        for(int i=0;i<$size(fixed_array);i++) begin
        
          fixed_array[i]=new(i*20);
        
      end
      
      fixed_array[0].subject="English";
      fixed_array[1].subject="Tamil";
      fixed_array[2].subject="Mathematics";
      fixed_array[3].subject="Chemistry";
      fixed_array[4].subject="Physics";
      fixed_array[5].subject="Biology";
      
        for(int i=0;i<$size(fixed_array);i++) begin
         $display("");
          
        $display("Fixed_array[%0d]",i);
        fixed_array[i].display();
        
        $display("");
      end
      
      end
    endmodule
       
      
      
      

      
      
    
/* OUTPUT 

Fixed_array[0]
Name of the Subject = English | Marks obtained = 0


Fixed_array[1]
Name of the Subject = Tamil | Marks obtained = 20


Fixed_array[2]
Name of the Subject = Mathematics | Marks obtained = 40


Fixed_array[3]
Name of the Subject = Chemistry | Marks obtained = 60


Fixed_array[4]
Name of the Subject = Physics | Marks obtained = 80


Fixed_array[5]
Name of the Subject = Biology | Marks obtained = 100

xmsim: *W,RNQUIE: Simulation is complete.

*/
