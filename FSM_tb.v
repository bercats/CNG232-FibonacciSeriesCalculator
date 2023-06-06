module FSM_tb;
  reg start,clk,zero_flag;
  wire done;
  wire [1:0]op1,op2;
  wire [2:0]opcode;
  FSM DUT(start,zero_flag,clk,done,opcode,op1,op2);
  always
  #10 clk=~clk;
  initial
  begin
    clk=0;start=0;zero_flag=0;
    #30 start=1;
    #20 start=1;
    #10 zero_flag=1;
    #40 zero_flag=0;
    #200 zero_flag=1;
    #30 zero_flag=0;
  end
endmodule