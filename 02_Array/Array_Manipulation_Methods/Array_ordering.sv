module tb;
  int p[$:5]='{3,4,5,7,3};
  int q[]='{8,9,3,4,1,5,10,15,20};
  
initial begin

  $display("");
  
  $display("----------Ordering in P-----------"); 
  
  $display("");

 p.reverse();
 $display("Reverse of p=%p",p);
 
 p.sort();
 $display("Ascending order of p=%p",p);
 
 p.rsort();
 $display("Descending order of p=%p",p);
 
  p.shuffle();
 $display("Shuffling of p=%p",p);
  
  $display("");
 
 $display("----------Ordering in Q-----------");
  
  $display("");
 
 q.reverse();
 $display("Reverse of q=%p",q);
 
 q.sort();
 $display("Ascending order of q=%p",q);
 
 q.rsort();
 $display("Descending order of q=%p",q);
 
  q.shuffle();
 $display("Shuffling of q=%p",q);
 
  
end
endmodule






/* OUTPUT	

----------Ordering in P-----------

Reverse of p='{3, 7, 5, 4, 3}
Ascending order of p='{3, 3, 4, 5, 7}
Descending order of p='{7, 5, 4, 3, 3}
Shuffling of p='{3, 4, 5, 7, 3}

----------Ordering in Q-----------

Reverse of q='{20, 15, 10, 5, 1, 4, 3, 9, 8}
Ascending order of q='{1, 3, 4, 5, 8, 9, 10, 15, 20}
Descending order of q='{20, 15, 10, 9, 8, 5, 4, 3, 1}
Shuffling of q='{8, 20, 4, 9, 15, 1, 3, 5, 10}
xmsim: *W,RNQUIE: Simulation is complete.

*/
