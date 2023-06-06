library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        size            : integer := 4
    );
    port(
        reg1            : in     vl_logic_vector;
        reg2            : in     vl_logic_vector;
        alu_opcode      : in     vl_logic_vector(2 downto 0);
        ALU_out         : out    vl_logic_vector;
        zero_flag       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end ALU;
