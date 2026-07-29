module DLatch (
    input clk, 
    input reset,
    input power, 
    output reg out_LOW);
    
  always @(posedge clk) begin
        if(reset) 
            out_LOW<=1;
        else if(power)
            out_LOW<=0;
         else
           out_LOW<=out_LOW;
         end   
    
endmodule
