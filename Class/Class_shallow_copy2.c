//Parent class


class parent;
  
  string name;
  string roll_no;
  
  function new( string name, string roll_no);
    
    this.name=name;
    this.roll_no=roll_no;
    
  endfunction
  
endclass
  
  
//Child class

  class child extends parent;
  
 int id;
 string grade;
  
    function new( string name,string roll_no,int id, string grade);
      
      super.new(name,roll_no); 
    this.id=id;
    this.grade=grade;
    
  endfunction
    
    function void display();
      
      $display("Name of the student = %s | Roll_no = %s | Id = %0d | Grade = %s",name,roll_no,id,grade);
      
    endfunction
    
  endclass

module shallow_copy;
  
  child c1,c2;
  
  initial begin
    
    c1=new("Naveen","22ECE37",37,"A");
    
    c1.display();
    
    c2=new c1;
    
    c2.display();
    
    c2.name="Megalan";
    c2.roll_no="22ECE35";
    c2.id=35;
    c2.grade="A+";
    
    c1.display();
    
    c2.display();
    
  end
endmodule
    
    
/* OUTPUT 

Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A
Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A
Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A
Name of the student = Megalan | Roll_no = 22ECE35 | Id = 35 | Grade = A+

*/
   
    
    
  
















































  
