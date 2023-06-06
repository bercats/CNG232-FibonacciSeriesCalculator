module FSM(start,zero_flag,clk,done,opcode,op1,op2);
  input zero_flag;
  input clk,start;
  reg [3:0]state,nextstate;
  output reg [2:0]opcode;
  output reg [1:0]op1,op2;
  output reg done;
  parameter S0=4'b0000,S1=4'b0001,S2=4'b0010,S3=4'b0011,S4=4'b0100,S5=4'b0101,S6=4'b0110,S7=4'b0111,S8=4'b1000,S9=4'b1001;
  always @(posedge clk or posedge start)
  if(start)
    state<=nextstate; //fsm will keep continuing as long as start is 1
  else
    state<=S0; //if start input is 0, the fsm will begin from state 0
    
    always @(state or zero_flag or start)
    begin
      op1=2'b00;op2=2'b00;opcode=3'b000;done=0;nextstate=S0;//inital state 
      case(state)
        S0: //reset state
        if(start)
          begin
            opcode=3'b000;
            op1=2'b00;
            op2=2'b00;
            done=0;
            nextstate=S1;
          end
        else
          nextstate=S0;
          
          S1:  //load count value
          begin
            opcode=3'b100;
            op1=2'b00;
            op2=2'b00;
            done=0;
            nextstate=S2;
          end
          S2:  //set num1
          begin
            opcode=3'b001;
            op1=2'b01;
            op2=2'b00;
            done=0;
            nextstate=S3;
          end
          S3: //set num2
          begin
            opcode=3'b001;
            op1=2'b10;
            op2=2'b00;
            done=0;
            nextstate=S4;
          end
          S4: //check count
          begin
            opcode=3'b101;
            op1=2'b00;
            op2=2'b00;
            done=1'b0;
            if(zero_flag)
              nextstate=S1; //if count is 0 load new count
            else
              nextstate=S5; //if count is not 0, continue calculating
            end
           S5: // R3<-R1
           begin
              opcode=3'b111; //copy
              op1=2'b11; //R3
              op2=2'b01; //R1
              done=0;
              nextstate=S6;
            end
            S6: //R1<-R1+R2
            begin
              opcode=3'b110; //add
              op1=2'b01;
              op2=2'b10;
              done=1'b0;
              nextstate=S7;
            end
            S7: //R2<-R3
            begin
              opcode=3'b111;
              op1=2'b10;
              op2=2'b11;
              done=1'b0;
              nextstate=S8;
            end
            S8: //count<-count-1
            begin
              opcode=3'b011;
              op1=2'b00;
              op2=2'b00;
              done=1'b0;
              if(zero_flag)
                nextstate=S9;
              else
                nextstate=S5;
              end
              S9: //last state, does no operation, sets done=1
              begin
                opcode=3'b000;
                op1=2'b00;
                op2=2'b00;
                done=1'b1;
                nextstate=S9;
              end
            endcase
          end
        endmodule
            
              
            
            
              