module Register(D,clk,Q);
parameter size = 4;
input [size-1:0] D;
input clk;
output reg[size-1:0] Q;
initial begin
  Q=0;
end
always @(posedge clk)
begin
Q <= D;//load data 
end
endmodule

