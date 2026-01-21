library verilog;
use verilog.vl_types.all;
entity ShiftingUnit is
    port(
        F               : out    vl_logic_vector(3 downto 0);
        S2              : in     vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0)
    );
end ShiftingUnit;
