module tb;
  int data;
  int unsigned data1;
   

initial begin
  
  $display("Size of Data=%0d | Size of Data1=%0d",$bits(data),$bits(data1));
  
 data=2**10; data1=2**2;
 #10 data=2**33-2; data1=2**35-1; 
 #10 data=2**35-2; data1=2**35-2; 
 #10 data=2**34-1; data1=2**34-1; 
#10 $finish;
end

initial begin
  $monitor("Time=%0t | Data=d%0d | Data1=d%0d",$time,data,data1);
end

endmodule

/* OUTPUT

Size of Data=32 | Size of Data1=32
Time=0 | Data=d1024 | Data1=d4
Time=10 | Data=d-2 | Data1=d4294967295
Time=20 | Data=d-2 | Data1=d4294967294
Time=30 | Data=d-1 | Data1=d4294967295
Simulation complete via $finish(1) at time 40 NS + 0
./testbench.sv:14 #10 $finish;
*/
