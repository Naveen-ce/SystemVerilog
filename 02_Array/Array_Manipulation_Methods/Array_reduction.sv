module tb;
  int q[]='{8,9,3,4,1,5};
  int temp;
  
initial begin

  $display("");
  
  $display("----------Reduction in P-----------"); 
  
  $display("");

 temp=q.sum();
 $display("Sum of p=%0d",temp);
 
 temp=q.product();
 $display("Product of q=%0d",temp);
 
 temp=q.and();
 $display("And of q=%0d",temp);
 
  temp=q.or();
 $display("Or of q=%0d",temp);
   
 temp=q.xor();
 $display("XOR of q=%0d",temp);
   
end
endmodule


/* OUTPUT


----------Reduction in P-----------

Sum of p=30
Product of q=4320
And of q=0
Or of q=15
XOR of q=2
xmsim: *W,RNQUIE: Simulation is complete.
*/
