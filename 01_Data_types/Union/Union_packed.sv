
   module tb;
 typedef union packed {
    bit [31:0] a;
    bit [7:0] [3:0] b;
    bit [15:0] [1:0] c;} union_t;
  
  initial begin
  
  union_t union_1;
  union_t union_2;
  
   $display("Elements in Union_1");
    
    union_1={32'habcdefdb,8'hae,16'habcd};  
    
     $display("Elements in Union_1=%p",union_1);
    
    
    $display("Elements in a=%h",union_1.a);
    
    union_1.b=8'hfd;
    $display("Elements in b=%h",union_1.b);
     
  union_1.c=16'hdefa;
  $display("Elements in c=%h",union_1.c);
    
    $display("Elements in Union_1=%p",union_1);
    
    $display("Union_1=%p | Union_2=%p",union_1,union_2);
    
    $display("-------------------------------");
    
     $display("Elements in Union_2");
    
    
     union_2={32'hdefdbabc,8'hde,16'hfabd};
     
     $display("Elements in Union_2=%p",union_2);
   
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
Elements in Union_1='{a:'hdbaeabcd}
Elements in a=dbaeabcd
Elements in b=000000fd
Elements in c=0000defa
Elements in Union_1='{a:'hdefa}
Union_1='{a:'hdefa} | Union_2='{a:'h0}
-------------------------------
Elements in Union_2
Elements in Union_2='{a:'hbcdefabd}
Elements in a=bcdefabd
Elements in b=000000af
Elements in c=0000acdf
Elements in Union_2='{a:'hacdf}
-----------------Union_1--------------------------------
Elements in a=0000defa
Elements in b=0000defa
Elements in c=0000defa
-------------------------------------------------
-----------------Union_2--------------------------------
Elements in a=0000acdf
Elements in b=0000acdf
Elements in c=0000acdf
-------------------------------------------------
Union_1='{a:'hdefa} | Union_2='{a:'hacdf}
*/
   
 
 
 
    
