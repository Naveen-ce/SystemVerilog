module tb;
  longint data;
  longint unsigned data1;
   

initial begin
  
  $display("Size of Data=%0d | Size of Data1=%0d",$bits(data),$bits(data1));
  
 data=2**101; data1=2**120;
 #10 data=2**123-2; data1=2**123-2; 
 #10 data=2**128-4; data1=2**128-2; 
 #10 data=2**50-3; data1=2**132-2; 
#10 $finish;
end

initial begin
  $monitor("Time=%0t | Data=d%0d | Data1=d%0d",$time,data,data1);
end

endmodule

/* OUTPUT

Size of Data=64 | Size of Data1=64
Time=0 | Data=d0 | Data1=d0
Time=10 | Data=d-2 | Data1=d18446744073709551614
Time=20 | Data=d-4 | Data1=d18446744073709551614
Time=30 | Data=d1125899906842621 | Data1=d18446744073709551614
Simulation complete via $finish(1) at time 40 NS + 0
./testbench.sv:14 #10 $finish;
*/
