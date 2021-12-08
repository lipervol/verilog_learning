library verilog;
use verilog.vl_types.all;
entity myname is
    port(
        M               : out    vl_logic_vector(3 downto 0);
        dotout          : out    vl_logic_vector(15 downto 0);
        selout          : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic
    );
end myname;
