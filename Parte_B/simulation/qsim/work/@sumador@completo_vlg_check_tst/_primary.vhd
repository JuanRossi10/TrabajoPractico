library verilog;
use verilog.vl_types.all;
entity SumadorCompleto_vlg_check_tst is
    port(
        carry_out       : in     vl_logic;
        suma            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end SumadorCompleto_vlg_check_tst;
