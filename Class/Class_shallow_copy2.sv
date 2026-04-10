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

  class child extends parent;
  
 int id;
 string grade;
    address adr;
  
    function new( string name,string roll_no,int id, string grade,string addr);
      
      super.new(name,roll_no); 
      adr=new(addr);
    this.id=id;
    this.grade=grade;
    
  endfunction
    
    function void display(string name1);
      
      $display("[%s] Name of the student = %s | Roll_no = %s | Id = %0d | Grade = %s | Address = %s",name1,name,roll_no,id,grade,adr.addr);
      
    endfunction
    
  endclass

module shallow_copy;
  
  child c1,c2;
  
  initial begin
    
    c1=new("Naveen","22ECE37",37,"A","Chennai");
    
    c1.display("c1");
    
    c2=new c1;
    
    c2.display("c2");
    
    c2.name="Megalan";
    c2.roll_no="22ECE35";
    c2.id=35;
    c2.grade="A+";
    c2.adr.addr="Erode";
    
    c1.display("c1");
    
    c2.display("c2");
    
  end
endmodule
    
    

 /* OUTPUT 

  
[c1] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Chennai
[c2] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Chennai
[c1] Name of the student = Naveen | Roll_no = 22ECE37 | Id = 37 | Grade = A | Address = Erode
[c2] Name of the student = Megalan | Roll_no = 22ECE35 | Id = 35 | Grade = A+ | Address = Erode

*/
    
  
















































  
