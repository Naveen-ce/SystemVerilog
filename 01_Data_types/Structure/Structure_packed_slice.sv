module tb;
  struct packed{
    int a;
    byte b;
    logic[3:0]c;}struct_t;
  
  initial begin
    
logic[7:0] sliced_bc;
    logic [15:0] sliced_a;

    struct_t='{32'habcdefdb,8'hae,4'b0011};
    $display("Elements in Structure=%p",struct_t);
    
    
    $display("Elements in a=%h",struct_t.a);
    
    struct_t.b=8'hfd;
    $display("Elements in b=%h",struct_t.b);
     
  struct_t.c=4'b1010;
  $display("Elements in c=%h",struct_t.c);
    
    $display("Elements in Structure=%p",struct_t);
    
    
    sliced_bc=struct_t[7:0];
    sliced_a=struct_t[27:12];
    
    $display("Sliced_bc=%h | sliced_a=%h",sliced_bc,sliced_a);
  
    
  end
endmodule

/*
Elements in Structure='{a:-1412567077, b:'hae, c:'h3}
Elements in a=abcdefdb
Elements in b=fd
Elements in c=a
Elements in Structure='{a:-1412567077, b:'hfd, c:'ha}
Sliced_bc=da | sliced_a=efdb
/*
    
