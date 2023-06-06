module top_level_tb;
  reg start,clk;
  reg [3:0]count;
  wire done;
  wire [3:0]data;
  top_level fibo(start,clk,done,count,data);
  always
  #10 clk=~clk;
  initial
  begin
    clk=0;start=1;count=4'b0110;
    
  end
endmodule
    
