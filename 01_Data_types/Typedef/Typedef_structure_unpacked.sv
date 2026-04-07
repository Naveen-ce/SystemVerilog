module tb;
 typedef struct {
    int a;
    byte b;
    logic[15:0]c;}struct_t;
  
  initial begin
  
  struct_t struct_1;
  struct_t struct_2;
    
    struct_1='{32'habcdefdb,8'hae,16'habcd};
    $display("Elements in Struct_1=%p",struct_1);
    
    
    $display("Elements in a=%h",struct_1.a);
    
    struct_1.b=8'hfd;
    $display("Elements in b=%h",struct_1.b);
     
  struct_1.c=16'hdefa;
  $display("Elements in c=%h",struct_1.c);
    
    $display("Elements in Struct_1=%p",struct_1);
    
    $display("Struct_1=%p | Struct_2=%p",struct_1,struct_2);
    
    $display("-------------------------------");
    
     struct_2='{32'hdefdbabc,8'hde,16'hfabd};
    $display("Elements in Struct_2=%p",struct_2);
    
    
    $display("Elements in a=%h",struct_2.a);
    
    struct_2.b=8'haf;
    $display("Elements in b=%h",struct_2.b);
     
  struct_2.c=16'hacdf;
  $display("Elements in c=%h",struct_2.c);
    
    $display("Elements in Struct_2=%p",struct_2);
    
     $display("Struct_1=%p | Struct_2=%p",struct_1,struct_2);
    
    
    end
    endmodule
    
    
    
   
 
 /*
 Elements in Struct_1='{a:-1412567077, b:'hae, c:'habcd}
Elements in a=abcdefdb
Elements in b=fd
Elements in c=defa
Elements in Struct_1='{a:-1412567077, b:'hfd, c:'hdefa}
Struct_1='{a:-1412567077, b:'hfd, c:'hdefa} | Struct_2='{a:0, b:'h0, c:'hx}
-------------------------------
Elements in Struct_2='{a:-553796932, b:'hde, c:'hfabd}
Elements in a=defdbabc
Elements in b=af
Elements in c=acdf
Elements in Struct_2='{a:-553796932, b:'haf, c:'hacdf}
Struct_1='{a:-1412567077, b:'hfd, c:'hdefa} | Struct_2='{a:-553796932, b:'haf, c:'hacdf}
*/
 
