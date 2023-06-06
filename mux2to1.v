module mux2to1(in1,in2,S,mux_out);
  
  parameter size =4;
  input [size-1:0]in1,in2;
  input S;
  output [size-1:0]mux_out;
  reg [size-1:0]mux_out;
  
  always@(S,in1,in2)
  if(S == 0)
    begin
      mux_out=in1;
    end
  else
    begin
      mux_out=in2;
    end
      
   
endmodule
