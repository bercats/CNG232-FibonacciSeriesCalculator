module FIBO_FSM(start,zero_flag,clk,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data,done);
  input clk,start,zero_flag;
  output wrt_en,done,load_data;
  output[1:0]wrt_addr,rd_addr1,rd_addr2;
  output[2:0]alu_opcode;
  wire [2:0]opcode;
  wire [1:0]op1,op2;
  FSM fsm(start,zero_flag,clk,done,opcode,op1,op2);
  FSM_DECO deco(opcode,op1,op2,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data);
endmodule
