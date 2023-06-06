module decoder_2to4_tb();
  reg [1:0]A;
  wire [3:0]out;
  decoder_2to4 Decoder2to4(A,out);
  initial
  begin
    A=2'b00;
    #5 A=2'b01;
    #5 A=2'b10;
    #5 A=2'b11;
  end
endmodule
