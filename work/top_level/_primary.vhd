library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        start           : in     vl_logic;
        clk             : in     vl_logic;
        done            : out    vl_logic;
        count           : in     vl_logic_vector(3 downto 0);
        data            : out    vl_logic_vector(3 downto 0)
    );
end top_level;
