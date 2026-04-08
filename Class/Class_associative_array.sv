class  array;
  
 string subject;
  
  int mark;
  
  
  function new( string subject,int mark);
    
    this.subject=subject;
    this.mark=mark;
    
    endfunction
 
    function void display();
      
      $display("Name of the Subject = %s | Marks obtained = %0d",subject,mark);
      
    endfunction

    endclass
    
    
    module tb;
      
      array associative_array[int];
      
      initial begin
        $display("");
        
        $display("               -------Associative array-------               ");
        
        $display("");
        
        associative_array[36]=new("Biology",91);
        associative_array[12]=new("Mathematics",99);
        associative_array[6]=new("Tamil",94);
        associative_array[2]=new("English",81);
        associative_array[15]=new("Physics",87);
        associative_array[21]=new("Chemistry",78);
  
         
        foreach(associative_array[key]) begin
           $display("");
          
          $display("Associative_array[%0d]",key);
          associative_array[key].display();
          
           $display("");
          
        end
          
      end
     
    endmodule
       
      
      
      
      
      
      
    
/* OUTPUT

            -------Associative array-------               


Associative_array[2]
Name of the Subject = English | Marks obtained = 81


Associative_array[6]
Name of the Subject = Tamil | Marks obtained = 94


Associative_array[12]
Name of the Subject = Mathematics | Marks obtained = 99


Associative_array[15]
Name of the Subject = Physics | Marks obtained = 87


Associative_array[21]
Name of the Subject = Chemistry | Marks obtained = 78


Associative_array[36]
Name of the Subject = Biology | Marks obtained = 91

xmsim: *W,RNQUIE: Simulation is complete.

*/
