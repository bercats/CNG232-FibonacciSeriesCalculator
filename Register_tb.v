module Register_tb;
reg [3:0] D;
reg clk;
wire [3:0] Q;
Register register(.D(D),.clk(clk),.Q(Q));
always 
#5 clk=~clk;
initial
begin
clk=0; 
D=4'b0011;
#30 D=4'b1001;
#50 D=4'b1101;
#30 D=4'b1011;
#50 D=4'b0001;
end

endmodule

