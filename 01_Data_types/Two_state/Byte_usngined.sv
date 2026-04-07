module tb;
  byte data;
  byte unsigned data1; 

initial begin
  
  $display("Size of Data=%0d | Size of Data1=%0d",$bits(data),$bits(data1));
  
 data=2**0; data1=2**2;
 #10 data=2**7; data1=2**7; // Signed data is -128 & Unsigned data1 is 128
 #10 data=2**8-1; data1=2**8-1; // Signed data is -1 & Unsigned data1 is 255
 #10 data=2**9-2; data1=2**9-2; // Signed data is -2 & Unsigned data1 is 254
#10 $finish;
end

initial begin
  $monitor("Time=%0t | Data=d%0d | Data1=d%0d",$time,data,data1);
end

endmodule


/* OUTPUT

Size of Data=8 | Size of Data1=8
Time=0 | Data=d1 | Data1=d4
Time=10 | Data=d-128 | Data1=d4
Time=20 | Data=d-128 | Data1=d128
Time=30 | Data=d-1 | Data1=d255
Time=40 | Data=d-2 | Data1=d254
Simulation complete via $finish(1) at time 50 NS + 0
./testbench.sv:14 #10 $finish;
*/
