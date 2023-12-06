library verilog;
use verilog.vl_types.all;
entity SumadorCompleto is
    port(
        a_in            : in     vl_logic;
        b_in            : in     vl_logic;
        clock           : in     vl_logic;
        carry_in        : in     vl_logic;
        suma            : out    vl_logic;
        carry_out       : out    vl_logic
    );
end SumadorCompleto;
