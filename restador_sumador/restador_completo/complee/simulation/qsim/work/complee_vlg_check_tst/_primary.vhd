library verilog;
use verilog.vl_types.all;
entity complee_vlg_check_tst is
    port(
        F               : in     vl_logic_vector(6 downto 0);
        G               : in     vl_logic_vector(6 downto 0);
        H               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end complee_vlg_check_tst;
