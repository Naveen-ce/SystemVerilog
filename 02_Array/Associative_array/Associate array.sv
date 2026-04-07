module associate_array;
  int a1[*]; 
  
  int a2[string];

  string a3[string]='{"sports":"cricket","Team":"India","Player":"Hitman","Jersy":"45"};
 
  initial begin
    a2["CSK"]=5;
    a2["MI"]=5;
    a2["RCB"]=1;
    a2["PBKS"]=0;
    a1[7]=224;
    a1[18]=183;
    a1[45]=264;
    $display("Associate array1 size=%0d",a1.size());
    $display("Associate array2 size=%0d",a2.num());
    $display("Associate array3 size=%0d",a3.num());
    
    $display("----------------");
    
    $display("Associate array1=%p",a1); 
    $display("Searching for index 1");
    if(a1.exists(1))
      $display("--FOUND--");
    else
      $display("NOT FOUND!");
    $display("Searching for index 18");
    if(a1.exists(18))
      $display("--FOUND--");
    else
      $display("NOT FOUND!");
    
    $display("----------------");
    
    $display("Associate array2=%p",a2);
    
    $display("Deleting the index PBKS");
    a2.delete("PBKS");
    $display("After delete, Associate array2=%p",a2);
    
    $display("----------------");
    
    
    $display("Associate array3=%p",a3);
    $display("Displaying each elements in Associate array3");
    foreach(a3[i])begin
      $display("%s = %s", i, a3[i]);
    end
  end
endmodule
