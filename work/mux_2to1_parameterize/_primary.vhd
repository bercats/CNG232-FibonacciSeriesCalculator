library verilog;
use verilog.vl_types.all;
entity mux_2to1_parameterize is
    generic(
        size            : integer := 4
    );
    port(
        I0              : in     vl_logic_vector;
        I1              : in     vl_logic_vector;
        S               : in     vl_logic;
        Y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end mux_2to1_parameterize;
