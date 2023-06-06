module tb_mux_4to1;
reg [1:0] S;
reg [3:0] I0,I1,I2,I3;
wire [3:0] Y;
mux4to1 Mux4to1(.in1(I0),.in2(I1),.in3(I2),.in4(I3),.S(S),.mux_out(Y));
initial
begin
S=2'b00; I0=4'b0011; I1=4'b1100; I2=4'b0110; I3=4'b0101;
#5 S=2'b01;
#5 S=2'b10;
#5 S=2'b11;
#5 S=2'b00; I0=4'b1011; I1=4'b1101; I2=4'b1110; I3=4'b0111;
#5 S=2'b01;
#5 S=2'b10;
#5 S=2'b11;
end
endmodule
