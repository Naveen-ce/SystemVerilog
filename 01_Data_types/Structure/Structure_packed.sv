module tb;
  struct packed{
    int a;
    byte b;
 bit[3:0] c;}struct_t;
  
  initial begin

    struct_t='{32'habcdefdb,8'hae,4'b0011};
    $display("Elements in Structure=%p",struct_t);
    
    
    $display("Elements in a=%h",struct_t.a);
    
    struct_t.b=8'hfd;
    $display("Elements in b=%h",struct_t.b);
     
  struct_t.c=4'b1010;
  $display("Elements in c=%h",struct_t.c);
    
    $display("Elements in Structure=%p",struct_t);
    
    
  end
endmodule
    
    /*
Elements in Structure='{a:-1412567077, b:'hae, c:'h3}
Elements in a=abcdefdb
Elements in b=fd
Elements in c=a
Elements in Structure='{a:-1412567077, b:'hfd, c:'ha}
*/
