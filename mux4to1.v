module mux4to1(in1,in2,in3,in4,S,mux_out);
  
  parameter size =4;
  input [size-1:0] in1,in2,in3,in4;
  input [1:0] S;
  output [size-1:0]mux_out;
  reg [size-1:0] mux_out;
  
  always@(in1,in2,in3,in4,S)
  begin
    if(S[0]==0 && S[1]==0)
      begin
        mux_out=in1;
      end
    else if(S[0]==0 && S[1]==1)
      begin
        mux_out=in3;
      end
    else if(S[0]==1 && S[1]==0)
      begin
        mux_out=in2;
      end
    else
      begin
        mux_out=in4;
      end
    end
  endmodule
        
    
