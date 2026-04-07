module tb;
  int p[$:5]='{3,4,5,7,3};
  int q[]='{8,9,3,4,1,5,9};
  int r[5]='{2,4,6,8,9};
  int temp[$];


initial begin

  $display("Sum of p=%0d",p.sum());
  
  
  $display("Product of p=%0d",p.product());
  
  
  $display("Min of p=%p",p.min());
  
  
  $display("Max of q=%p",q.max());
  
  
  $display("Product of q=%0d",q.product());
  
  
  $display("Sum of r=%0d", r.sum());
  
 
  $display("Min of r=%p", r.min());
  
 
  $display("Max of p=%p",r.max());

  
  temp=p.unique();
  
  $display("Unique of p=%p",temp);
  
  temp=q.unique();
  
  $display("Unique of q=%p",temp);
  
  temp=r.unique();
  
  $display("Unique of r=%p",temp);
  
  temp=p.find with (item>3);
  
  $display("Items>3 in p=%p",temp);
  
  temp=q.find with (item<7);
  
  $display("Items<7 in q=%p",temp);
  
  temp=r.find_index with (item>3);
  
  $display("Items>3 index in r=%p",temp);
  
  temp=p.find_first_index with (item<6);
  
  $display("First index with item<6 in p=%p",temp);
  
  temp=q.find_last_index with (item<8);
  
  $display(" Last index with Items<8 in q=%p",temp);
  
  temp=p.find_index with (item==3);
  
  $display("Items==3 in p=%p",temp);
  
  temp=q.find_index with (item==9);
  
  $display("Items==9 in q=%p",temp);
  
 
  
end
endmodule




/* OUTPUT 

Sum of p=22
Product of p=1260
Min of p='{3}
Max of q='{9}
Product of q=38880
Sum of r=29
Min of r='{2}
Max of p='{9}
Unique of p='{3, 4, 5, 7}
Unique of q='{8, 9, 3, 4, 1, 5}
Unique of r='{2, 4, 6, 8, 9}
Items>3 in p='{4, 5, 7}
Items<7 in q='{3, 4, 1, 5}
Items>3 index in r='{1, 2, 3, 4}
First index with item<6 in p='{0}
 Last index with Items<8 in q='{5}
Items==3 in p='{0, 4}
Items==9 in q='{1, 6}
xmsim: *W,RNQUIE: Simulation is complete.

*/
