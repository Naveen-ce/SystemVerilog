//Parent class


class parent;
  
  string name;
  string roll_no;
  
  function new( string name, string roll_no);
    
    this.name=name;
    this.roll_no=roll_no;
    
  endfunction
  
endclass
  

  
  //Nested Class

class address;
  string addr;
  
  function new(string addr);
   
    this.addr=addr;
    
  endfunction
  
endclass


  
//Child class

  class child ;
  
 int id;
 string grade;
    parent hdr;
    address adr;
  
    function new( string name,string roll_no,int id, string grade,string addr);
      
     hdr=new(name,roll_no); 
      adr=new(addr);
    this.id=id;
    this.grade=grade;
    
  endfunction
    
    function void display(string name);
      
      $display(" [%s] Name of the student = %s | Roll_no = %s | Id = %0d | Grade = %s | Address = %s",name,hdr.name,hdr.roll_no,id,grade,adr.addr);
      
    endfunction

      
      
      function copy(child c);
        
        this.id=c.id;
        this.grade=c.grade;
        this.hdr.name=c.hdr.name;
        this.hdr.roll_no=c.hdr.roll_no;
        this.adr.addr=c.adr.addr;
        
      
      endfunction
    
  endclass

module Deep_copy;
  
  child c1,c2;
  
  initial begin
    
    c1=new("Naveen","22ECE37",37,"A","Chennai");
    
    c1.display("c1");
    
    c2=new("Naveen","22ECE37",37,"A","Chennai");
    
    c2.copy(c1);
    
    c2.display("c2");
    
    c1.hdr.name="Megalan";
    c1.hdr.roll_no="22ECE35";
    c1.id=35;
    c1.grade="A+";
    c1.adr.addr="Madurai";
    
    c1.display("c1");
    
    c2.display("c2");
    
  end
endmodule
    
   



/* OUTPUT 


[c1] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Chennai
 [c2] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Chennai
 [c1] Name of the student = Megalan | Roll_no = 22ECE35 | Id = 35 | Grade = A+ | Address = Madurai
 [c2] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Chennai

*/










































  




