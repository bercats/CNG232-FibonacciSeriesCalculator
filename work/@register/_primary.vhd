library verilog;
use verilog.vl_types.all;
entity \Register\ is
    generic(
        size            : integer := 4
    );
    port(
        D               : in     vl_logic_vector;
        clk             : in     vl_logic;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end \Register\;
