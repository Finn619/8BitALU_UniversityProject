library verilog;
use verilog.vl_types.all;
entity ArithmeticUnit is
    port(
        V               : out    vl_logic;
        S0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C               : out    vl_logic;
        F               : out    vl_logic_vector(3 downto 0)
    );
end ArithmeticUnit;
