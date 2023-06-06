module mux_2to1_tb;
reg S;
reg [3:0] I0,I1;
wire [3:0] Y;
mux2to1 Mux2to1(.in1(I0),.in2(I1),.S(S),.mux_out(Y));
initial
begin
S=1'b0; I0=4'b1010; I1=4'b1100; //1010
#5 S=1'b1; //1100
#5 S=1'b0; I0=4'b0000; I1=4'b1111; //0000
#5 S=1'b1; //1111
end
endmodule

