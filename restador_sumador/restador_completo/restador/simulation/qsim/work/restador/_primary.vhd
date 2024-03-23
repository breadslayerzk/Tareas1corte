library verilog;
use verilog.vl_types.all;
entity restador is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        f               : out    vl_logic_vector(3 downto 0);
        g               : out    vl_logic
    );
end restador;
