module tb;
  int q [$];
  int q1 [$];
  
  initial begin
    
    q='{1,2,3,4,5};
    q1=q;
    
    $display("Elements of q=%p",q);
    $display("Elements copied to q1 from q=%p",q1);
  end

endmodule

/*
Elements of q='{1, 2, 3, 4, 5}
Elements copied to q1 from q='{1, 2, 3, 4, 5}
*/
