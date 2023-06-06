library verilog;
use verilog.vl_types.all;
entity FSM_DECO is
    port(
        opcode          : in     vl_logic_vector(2 downto 0);
        op1             : in     vl_logic_vector(1 downto 0);
        op2             : in     vl_logic_vector(1 downto 0);
        alu_opcode      : out    vl_logic_vector(2 downto 0);
        rd_addr1        : out    vl_logic_vector(1 downto 0);
        rd_addr2        : out    vl_logic_vector(1 downto 0);
        wrt_addr        : out    vl_logic_vector(1 downto 0);
        wrt_en          : out    vl_logic;
        load_data       : out    vl_logic
    );
end FSM_DECO;
