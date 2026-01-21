library verilog;
use verilog.vl_types.all;
entity ArithmeticUnit_vlg_check_tst is
    port(
        C               : in     vl_logic;
        F               : in     vl_logic_vector(3 downto 0);
        V               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ArithmeticUnit_vlg_check_tst;
