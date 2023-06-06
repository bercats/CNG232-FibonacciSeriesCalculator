library verilog;
use verilog.vl_types.all;
entity FIBO_FSM is
    port(
        start           : in     vl_logic;
        zero_flag       : in     vl_logic;
        clk             : in     vl_logic;
        alu_opcode      : out    vl_logic_vector(2 downto 0);
        rd_addr1        : out    vl_logic_vector(1 downto 0);
        rd_addr2        : out    vl_logic_vector(1 downto 0);
        wrt_addr        : out    vl_logic_vector(1 downto 0);
        wrt_en          : out    vl_logic;
        load_data       : out    vl_logic;
        done            : out    vl_logic
    );
end FIBO_FSM;
