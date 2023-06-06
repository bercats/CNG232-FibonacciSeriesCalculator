module FSM_DECO_tb;
  reg [2:0]opcode;
  reg [1:0]op1,op2;
  wire [2:0]alu_opcode;
  wire [1:0]rd_addr1,rd_addr2,wrt_addr;
  wire wrt_en,load_data;
  FSM_DECO DUT(opcode,op1,op2,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data);
  initial
  begin
    opcode=3'b000; op1=2'b10; op2=2'b01;
#10 opcode=3'b001; op1=2'b10; op2=2'b01;
#10 opcode=3'b010; op1=2'b10; op2=2'b01;
#10 opcode=3'b011; op1=2'b10; op2=2'b01;
#10 opcode=3'b100; op1=2'b10; op2=2'b01;
#10 opcode=3'b101; op1=2'b10; op2=2'b01;
#10 opcode=3'b110; op1=2'b10; op2=2'b01;
#10 opcode=3'b111; op1=2'b10; op2=2'b01;
end
endmodule

    
