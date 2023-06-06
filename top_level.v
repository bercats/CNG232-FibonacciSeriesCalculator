module top_level(start,clk,done,count,data);
  input start,clk;
  input [3:0]count;
  output done;
  output [3:0]data;
  wire zero_flag;
  wire [2:0]alu_opcode;
  wire [1:0]rd_addr1,rd_addr2,wrt_addr;
  wire wrt_en,load_data;
  wire [3:0]temp;
  assign temp=count-2;
  FIBO_FSM FSM(start,zero_flag,clk,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data,done);
  datapath DATAPATH(wrt_addr,rd_addr1,rd_addr2,wrt_en,clk,load_data,alu_opcode,zero_flag,data,temp);
endmodule