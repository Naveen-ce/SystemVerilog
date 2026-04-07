module tb;
  logic [3:0] a;
  logic [3:0] b;
  
  initial begin
    
    #10 a=4'b1001; b=4'b1001;
    
    #10 a=4'b1011; b=4'b1010;
    
    #10 a=4'b101x; b=4'b101x;
    
    #10 $finish;
    
  end
  
  always@*  begin
    
    if(a===b)
      
      $display("a=%b | b=%b |  a is equal to b | a===b =%2d",a,b,a===b);
    
    else if(a!==b) 
      
      $display("a=%b | b=%b | a is not equal to b | a!==b =%2d",a,b,a!==b);
    
    else
      
      $display("a=%b | b=%b | The value is unknown | a===b =%2d | a!==b=%2d",a,b,a===b,a!==b);
   
  
  end
endmodule
    

/*OUTPUT 

a=1001 | b=1001 |  a is equal to b | a===b = 1
a=1011 | b=1010 | a is not equal to b | a!==b = 1
a=101x | b=101z | a is not equal to b | a!==b = 1
Simulation complete via $finish(1) at time 40 NS + 0
./testbench.sv:13     #10 $finish;
*/
