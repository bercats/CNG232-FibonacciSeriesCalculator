module datapath(wrt_addr,rd_addr1,rd_addr2,wrt_en,clk,load_data,alu_opcode,zero_flag,data,count);
  parameter size=4;
  input [2:0]alu_opcode;
  input [1:0]wrt_addr,rd_addr1,rd_addr2;
  input [size-1:0]count;
  input wrt_en,clk,load_data;
  output [size-1:0]data;
  output zero_flag;
  wire [3:0]out;
  wire W0,W1,W2,W3,S0,S1,S2,S3;
  wire [size-1:0]Q0,Q1,Q2,Q3,Q4,D0,D1,D2,D3,D4,reg1,reg2;
  decoder_2to4 decoder(wrt_addr,out); //decoder
  assign W0 = out[0];
  assign W1 = out[1];
  assign W2 = out[2];
  assign W3 = out[3];
  //and gates
  assign S0=W0&wrt_en;
  assign S1=W1&wrt_en;
  assign S2=W2&wrt_en;
  assign S3=W3&wrt_en;
  //2to1 muxes
  mux2to1 Mux2to1_0(Q0,D4,S0,D0);
  mux2to1 Mux2to1_1(Q1,D4,S1,D1);
  mux2to1 Mux2to1_2(Q2,D4,S2,D2);
  mux2to1 Mux2to1_3(Q3,D4,S3,D3);
  mux2to1 Mux2to1_4(Q4,count,load_data,D4);
  //registers
  Register R0(D0,clk,Q0);
  Register R1(D1,clk,Q1);
  Register R2(D2,clk,Q2);
  Register R3(D3,clk,Q3);
  //4to1 muxes
  mux4to1 Mux4to1_1(Q0,Q1,Q2,Q3,rd_addr1,reg1);
  mux4to1 Mux4to1_2(Q0,Q1,Q2,Q3,rd_addr2,reg2);
  //alu
  ALU alu(reg1,reg2,alu_opcode,Q4,zero_flag);
  assign data=Q1;
endmodule  

  
  
  
