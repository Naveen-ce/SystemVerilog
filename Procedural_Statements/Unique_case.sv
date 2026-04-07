module tb;
  logic [3:0] value;
  initial begin
    value=4'b0001;
    unique case(value)
      4'b0001:$display("Value is valid");
      4'b0001:$display("Value is valid1");
      4'b0010:$display("Value is valid2");
      4'b0011:$display("Value is valid3");
      default:$display("Value is invalid");
    endcase
    
  end
endmodule
  
      
