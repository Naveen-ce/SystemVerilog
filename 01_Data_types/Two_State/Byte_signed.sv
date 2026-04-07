module tb;
  byte data;

initial begin

 data=2**0;
 #10 data=2**7;
 #10 data=2**6;
 #10 data=2**8-1;
 #10 data=2**9-2;
#10 $finish;
end

initial begin
$monitor("Time=%0t | Data=d%0d",$time,data);
end

endmodule

/*OUTPUT

Time=0 | Data=d1
Time=10 | Data=d-128
Time=20 | Data=d64
Time=30 | Data=d-1
Time=40 | Data=d-2
*/
