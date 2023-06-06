module FIBO_FSM_tb;
  reg clk,start,zero_flag;
  wire wrt_en,done,load_data;
  wire [1:0] wrt_addr,rd_addr1,rd_addr2;
  wire [2:0] alu_opcode;
  FIBO_FSM FIBO_FSM_uut(start,zero_flag,clk,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data,done);

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
