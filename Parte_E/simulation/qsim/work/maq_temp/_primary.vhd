library verilog;
use verilog.vl_types.all;
entity maq_temp is
    port(
        clk             : in     vl_logic;
        x               : in     vl_logic;
        reset           : in     vl_logic;
        output          : out    vl_logic_vector(3 downto 0)
    );
end maq_temp;
