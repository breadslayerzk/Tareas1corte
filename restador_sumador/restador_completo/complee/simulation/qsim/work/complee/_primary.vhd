library verilog;
use verilog.vl_types.all;
entity complee is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C               : in     vl_logic;
        F               : out    vl_logic_vector(6 downto 0);
        G               : out    vl_logic_vector(6 downto 0);
        H               : out    vl_logic
    );
end complee;
