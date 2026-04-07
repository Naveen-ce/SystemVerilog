module loop;
  string fruits[$]= {"Apple", "Banana", "Grapes", "Kiwi", "Papaya", "Muskmelon"};
  string temp;
  
  initial begin
    
    foreach(fruits[i]) begin
  
      $display("Fruits[%0d]=%0s",i,fruits[i]);
    end
    
    fruits.insert(3,"Guava");
    
    $display("New fruit inserted=%0p",fruits);
    
    fruits.delete(0);
    
    $display("Fruit removed=%0p",fruits);
    
    fruits.push_front("Pineapple");
    
    $display("New fruit pushed front=%0p",fruits);
    
    fruits.push_back("Avacado");
    
    $display("New fruit pushed back=%0p",fruits);
    
    temp=fruits.pop_back();
    
    $display("Fruit popped from back=%0s",temp);
    
    temp=fruits.pop_front();
    
    $display("Fruit popped from front=%0s",temp);
    
    $display("Fruits=%0p",fruits);
    
    fruits[0]="Lemon";
    
    $display("New fruit replaced at index 0=%0p",fruits);
    
    fruits={fruits,"Strawberry"};
    
    $display("New fruit appended at the end=%0p",fruits);
    
    fruits={"Pomegranate",fruits};
    
    $display("New fruit added at the first=%0p",fruits);
    
    temp=fruits[3];
    
    $display("Fruit at index 3=%0s",temp);
    
    
    fruits=fruits[1:$];
    
    $display("Fruit deleted at index 0=%0p",fruits);
    
    fruits=fruits[0:$-1];
    
    $display("Last fruit deleted=%0p",fruits);
    
    
    fruits={};

    $display("Deleted all elements=%0p",fruits);
  end
    
    
    
      
    endmodule
        
               
