module datapath_tb;
reg [3:0] count;
reg [2:0] alu_opcode;
reg [1:0] wrt_addr,rd_addr1,rd_addr2;
reg wrt_en,clk,load_data;
wire [3:0] data;
wire zero_flag;
datapath FIBODATAPATH(wrt_addr,rd_addr1,rd_addr2,wrt_en,clk,load_data,alu_opcode,zero_flag,data,count);
always 
#5 clk=~clk;
initial
begin
wrt_addr=2'b00; rd_addr1=2'b00; rd_addr2=2'b00;
wrt_en=1'b0; load_data=1'b0; clk=0;
alu_opcode=3'b000;
count=4'b0000;
#10 alu_opcode=3'b000; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b0; load_data=1'b0;
#10 alu_opcode=3'b100; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b1;
#10 alu_opcode=3'b001; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b001; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b101; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b0; load_data=1'b0;
//3rd sequence
#10 alu_opcode=3'b111; rd_addr1=2'b01; rd_addr2=2'b00; wrt_addr=2'b11; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b110; rd_addr1=2'b01; rd_addr2=2'b10; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b111; rd_addr1=2'b11; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b011; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b0;

//4th sequence
#10 alu_opcode=3'b111; rd_addr1=2'b01; rd_addr2=2'b00; wrt_addr=2'b11; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b110; rd_addr1=2'b01; rd_addr2=2'b10; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b111; rd_addr1=2'b11; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b011; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b0;

//5th sequence
#10 alu_opcode=3'b111; rd_addr1=2'b01; rd_addr2=2'b00; wrt_addr=2'b11; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b110; rd_addr1=2'b01; rd_addr2=2'b10; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b111; rd_addr1=2'b11; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b011; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b0;

//6th sequence
#10 alu_opcode=3'b111; rd_addr1=2'b01; rd_addr2=2'b00; wrt_addr=2'b11; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b110; rd_addr1=2'b01; rd_addr2=2'b10; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b111; rd_addr1=2'b11; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b011; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b0;

//7th sequence
#10 alu_opcode=3'b111; rd_addr1=2'b01; rd_addr2=2'b00; wrt_addr=2'b11; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b110; rd_addr1=2'b01; rd_addr2=2'b10; wrt_addr=2'b01; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b111; rd_addr1=2'b11; rd_addr2=2'b00; wrt_addr=2'b10; wrt_en=1'b1; load_data=1'b0;
#10 alu_opcode=3'b011; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b1; load_data=1'b0;

#10 alu_opcode=3'b000; rd_addr1=2'b00; rd_addr2=2'b00; wrt_addr=2'b00; wrt_en=1'b0; load_data=1'b0;
end

endmodule

