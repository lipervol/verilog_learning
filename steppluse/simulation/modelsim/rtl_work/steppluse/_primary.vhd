library verilog;
use verilog.vl_types.all;
entity steppluse is
    port(
        P               : out    vl_logic_vector(3 downto 0);
        M               : out    vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        Stop            : in     vl_logic;
        Step            : in     vl_logic;
        Clk             : in     vl_logic
    );
end steppluse;
