module tb;
  shortint data;
  shortint data1;
   

initial begin
  
  $display("Size of Data=%0d | Size of Data1=%0d",$bits(data),$bits(data1));
  
 data=2**0; data1=2**2;
 #10 data=2**7; data1=2**10-3; 
 #10 data=2**8-1; data1=2**15; 
 #10 data=2**17-1; data1=2**16-2; 
#10 $finish;
end

initial begin
  $monitor("Time=%0t | Data=d%0d | Data1=d%0d",$time,data,data1);
end

endmodule

/* OUTPUT 

Size of Data=16 | Size of Data1=16
Time=0 | Data=d1 | Data1=d4
Time=10 | Data=d128 | Data1=d1021
Time=20 | Data=d255 | Data1=d-32768
Time=30 | Data=d-1 | Data1=d-2
Simulation complete via $finish(1) at time 40 NS + 0
./testbench.sv:14 #10 $finish;
*/
