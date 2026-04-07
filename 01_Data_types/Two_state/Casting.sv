module tb;
shortint sig;
shortint unsigned unsig;

initial begin

sig=2**22-1; unsig=2**22-1;

$display("  ---  Displaying the original value  ---   ");

$display("Signed_value=%0d | Unsigned_value=%0d",sig,unsig);

$display("  ---  Signed value is converted into unsigned value  ---   ");

$display("Signed_value=%0d | Unsigned_value=%0d",unsigned'(sig),unsig);


$display("  ---  Unsigned value is converted into signed value  ---   ");

$display("Signed_value=%0d | Unsigned_value=%0d",sig,signed'(unsig));

end
endmodule




/* OUTPUT

 ---  Displaying the original value  ---   
Signed_value=-1 | Unsigned_value=65535
  ---  Signed value is converted into unsigned value  ---   
Signed_value=65535 | Unsigned_value=65535
  ---  Unsigned value is converted into signed value  ---   
Signed_value=-1 | Unsigned_value=-1
xmsim: *W,RNQUIE: Simulation is complete.
*/
