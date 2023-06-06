module tb_ALU;
reg [2:0] alu_opcode;
reg [3:0] reg1,reg2;
wire [3:0] ALU_out;
wire zero_flag;
ALU alu(.reg1(reg1),.reg2(reg2),.alu_opcode(alu_opcode),.ALU_out(ALU_out),.zero_flag(zero_flag));
initial
begin
reg1=4'b0100; reg2=4'b0101;
alu_opcode=3'b000;
#5 alu_opcode=3'b001;
#5 alu_opcode=3'b010;
#5 alu_opcode=3'b011;
#5 alu_opcode=3'b100;
#5 alu_opcode=3'b101;
#5 alu_opcode=3'b110;
#5 alu_opcode=3'b111;
end
endmodule

