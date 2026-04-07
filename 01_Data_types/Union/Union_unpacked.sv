
   module tb;
 typedef union {
    bit[31:0] a;
    byte b;
    logic[15:0]c;} union_t;
  
  initial begin
  
  union_t union_1;
  union_t union_2;
  
   $display("Elements in Union_1");
    
    union_1.a=32'habcdefdb;  
    
    $display("Elements in a=%h",union_1.a);
    
    union_1.b=8'hfd;
    $display("Elements in b=%h",union_1.b);
     
  union_1.c=16'hdefa;
  $display("Elements in c=%h",union_1.c);
    
    $display("Elements in Union_1=%p",union_1);
    
    $display("Union_1=%p | Union_2=%p",union_1,union_2);
    
    $display("-------------------------------");
    
     $display("Elements in Union_2");
    
    
     union_2.a=32'hdefdbabc;
   
    $display("Elements in a=%h",union_2.a);
    
    union_2.b=8'haf;
    $display("Elements in b=%h",union_2.b);
     
  union_2.c=16'hacdf;
  $display("Elements in c=%h",union_2.c);
    
    $display("Elements in Union_2=%p",union_2);
    
    $display("-----------------Union_1--------------------------------");
    
     $display("Elements in a=%h",union_1.a);
     $display("Elements in b=%h",union_1.b);
     $display("Elements in c=%h",union_1.c);
     
    $display("-------------------------------------------------");
    
    
     $display("-----------------Union_2--------------------------------");
    
     $display("Elements in a=%h",union_2.a);
     $display("Elements in b=%h",union_2.b);
     $display("Elements in c=%h",union_2.c);
     
    $display("-------------------------------------------------");
    
    
    
    
     $display("Union_1=%p | Union_2=%p",union_1,union_2);
    
    
    end
    endmodule
    
    
    /*
    Elements in Union_1
Elements in a=abcdefdb
Elements in b=fd
Elements in c=defa
Elements in Union_1='{a:'hffffdefa}
Union_1='{a:'hffffdefa} | Union_2='{a:'h0}
-------------------------------
Elements in Union_2
Elements in a=defdbabc
Elements in b=af
Elements in c=acdf
Elements in Union_2='{a:'hffffacdf}
-----------------Union_1--------------------------------
Elements in a=ffffdefa
Elements in b=fa
Elements in c=defa
-------------------------------------------------
-----------------Union_2--------------------------------
Elements in a=ffffacdf
Elements in b=df
Elements in c=acdf
-------------------------------------------------
Union_1='{a:'hffffdefa} | Union_2='{a:'hffffacdf}
*/
    
   
 
 
 
    
