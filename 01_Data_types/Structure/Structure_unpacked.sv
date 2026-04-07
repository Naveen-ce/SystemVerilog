module tb;
  struct {
    int a;
    byte b;
    logic[15:0]c;}struct_t;
  
  initial begin
    
    struct_t='{32'habcdefdb,8'hae,16'habcd};
    $display("Elements in Structure=%p",struct_t);
    
    
    $display("Elements in a=%h",struct_t.a);
    
    struct_t.b=8'hfd;
    $display("Elements in b=%h",struct_t.b);
     
  struct_t.c=16'hdefa;
  $display("Elements in c=%h",struct_t.c);
    
    $display("Elements in Structure=%p",struct_t);
    
    
   
    
  end
endmodule
    
/*
Elements in Structure='{a:-1412567077, b:'hae, c:'habcd}
Elements in a=abcdefdb
Elements in b=fd
Elements in c=defa
Elements in Structure='{a:-1412567077, b:'hfd, c:'hdefa}
*/
    
