module ALU(reg1,reg2,alu_opcode,ALU_out,zero_flag);
parameter size = 4;
input [size-1:0] reg1,reg2;
input [2:0] alu_opcode;
output [size-1:0] ALU_out;
reg [size-1:0] ALU_out;
output zero_flag;
reg zero_flag;
reg [size-1:0] temp;
always @(*)
begin
if (alu_opcode==3'b001)
temp=4'b0001;//set 
else if (alu_opcode==3'b010)
temp=reg1+1;//increment 
else if (alu_opcode==3'b011)
temp=reg1-1;//decrement 
else if (alu_opcode==3'b100)
temp=temp;//load 
else if (alu_opcode==3'b101)
temp=reg1;//store 
else if (alu_opcode==3'b110)
temp=reg1+reg2;//add 
else if (alu_opcode==3'b111)
temp=reg1;//copy 
else
temp=temp;//noop
end
always @(*)
begin
ALU_out=temp;
zero_flag = ~(|temp);//check result is 0 or not 
end

endmodule

