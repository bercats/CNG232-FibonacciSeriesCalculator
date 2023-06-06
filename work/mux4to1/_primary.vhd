library verilog;
use verilog.vl_types.all;
entity mux4to1 is
    generic(
        size            : integer := 4
    );
    port(
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        in3             : in     vl_logic_vector;
        in4             : in     vl_logic_vector;
        S               : in     vl_logic_vector(1 downto 0);
        mux_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end mux4to1;
