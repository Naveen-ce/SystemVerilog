module tb;
  string str1="Great power comes with great responsibilities";
  string str2="Why so serious";
  
  initial begin
    
    
    $display("String1=%s",str1);
    $display("String2=%s",str2);     
    $display("Converting the string1 to uppercase=%s",str1.toupper());
    $display("Converting the string2 to uppercase=%s",str2.toupper());
    $display("Converting the string1 to lowercase=%s",str1.tolower());
    $display("Converting the string2 to lowercase=%s",str2.tolower());
    $display("Getting the words from the range of index=%s",str1.substr(1,15));
    $display("Getting the words from the range of index=%s",str2.substr(1,7));
    $display("Comparing the string with case sensitive=%s",str1.compare(str2));
    $display("Comparing the string without case sensitive=%s",str1.icompare(str2));
             
    str1.putc(3,"e");
    str2.putc(2,"i");
    $display("Inserting the word in the particular index in String1=%s",str1);
    $display("Inserting the word in the particular index in String2=%s",str2);
             
    $display("Getting the particular word from the particular index in string1=%s",str1.getc(4));
    $display("Getting the particular word from the particular index in string2=%s",str2.getc(5));
             
    $display("Length of the string1=%0d",str1.len());
    $display("Length of the string2=%0d",str2.len());
             end
             endmodule

                          
             

                          

                          

/* OUTPUT

String1=Great power comes with great responsibilities
String2=Why so serious
Converting the string1 to uppercase=GREAT POWER COMES WITH GREAT RESPONSIBILITIES
Converting the string2 to uppercase=WHY SO SERIOUS
Converting the string1 to lowercase=great power comes with great responsibilities
Converting the string2 to lowercase=why so serious
Getting the words from the range of index=reat power come
Getting the words from the range of index=hy so s
Comparing the string with case sensitive=????
Comparing the string without case sensitive=????
Inserting the word in the particular index in String1=Greet power comes with great responsibilities
Inserting the word in the particular index in String2=Whi so serious
Getting the particular word from the particular index in string1=t
Getting the particular word from the particular index in string2=o
Length of the string1=45
Length of the string2=14
*/
