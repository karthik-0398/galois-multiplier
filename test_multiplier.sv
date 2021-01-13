
module test_multiplier;

logic  n_rst, clk; 
logic [2:0] A, B; 
logic [2:0] Y;

multiplier m0 (.*);

initial 
begin
  clk = 1'b0; 
  forever #10ns clk = ~clk; 
end

initial
  begin
  n_rst = '1;
  #2ns n_rst = '0;
  #2ns n_rst = '1;
  end
  
initial
  begin
  A  = 3;
  B  = 4;
  #4ns Y = (A*B) ;
  
      $display("Test passed: at %t A = %d, B = %d, Y = %d", $time, A , B, Y);
   
  end
  
endmodule