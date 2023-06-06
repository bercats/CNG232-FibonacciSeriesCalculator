library verilog;
use verilog.vl_types.all;
entity mux_4to1_parameterize is
    generic(
        size            : integer := 4
    );
    port(
        I0              : in     vl_logic_vector;
        I1              : in     vl_logic_vector;
        I2              : in     vl_logic_vector;
        I3              : in     vl_logic_vector;
        S               : in     vl_logic_vector(1 downto 0);
        Y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end mux_4to1_parameterize;
