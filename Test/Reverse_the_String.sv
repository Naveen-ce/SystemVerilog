module tb;
  string sv="SystemVerilog";
  string rev="";
  initial begin
    for(int i=sv.len()-1;i>=0;i--) begin
      rev={rev,sv[i]};
    end
     
    $display("Original string=%s",sv);
    
    $display("Reversed String =%s",rev);
    
  end
endmodule


/*
Original string=SystemVerilog
Reversed String =golireVmetsyS
*/
