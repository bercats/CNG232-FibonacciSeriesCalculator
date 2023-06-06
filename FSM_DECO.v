module FSM_DECO(opcode,op1,op2,alu_opcode,rd_addr1,rd_addr2,wrt_addr,wrt_en,load_data);
  input[2:0]opcode;
  input[1:0]op1,op2;
  output reg [1:0]wrt_addr,rd_addr1,rd_addr2;
  output reg load_data,wrt_en;
  output reg[2:0]alu_opcode;
  always @(opcode,op1,op2)
  begin
    if(opcode==3'b000)//no operation
    begin
      alu_opcode=3'b000;
      rd_addr1=2'b00;
      rd_addr2=2'b00;
      wrt_addr=2'b00;
      wrt_en=1'b0;
      load_data=1'b0;
    end
  else if(opcode==3'b001)//set
    begin
      alu_opcode=3'b001;
      rd_addr1=2'b00;
      rd_addr2=2'b00;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b0;
    end
  else if(opcode==3'b010)//increment
      begin
      alu_opcode=3'b010;
      rd_addr1=op1;
      rd_addr2=2'b00;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b0;
    end
  else if(opcode==3'b011) //decrement
    begin
      alu_opcode=3'b011;
      rd_addr1=op1;
      rd_addr2=2'b00;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b0;
    end
  else if(opcode==3'b100) //load
    begin
      alu_opcode=3'b100;
      rd_addr1=2'b00;
      rd_addr2=2'b00;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b1;
    end
  else if(opcode==3'b101) //store
    begin
      alu_opcode=3'b101;
      rd_addr1=op1;
      rd_addr2=2'b00;
      wrt_addr=2'b00;
      wrt_en=1'b0;
      load_data=1'b0;
    end
  else if(opcode==3'b110) //add
    begin
      alu_opcode=3'b110;
      rd_addr1=op1;
      rd_addr2=op2;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b0;
    end
  else  //copy
    begin
      alu_opcode=3'b111;
      rd_addr1=op2;
      rd_addr2=2'b00;
      wrt_addr=op1;
      wrt_en=1'b1;
      load_data=1'b0;
    end
  end
endmodule