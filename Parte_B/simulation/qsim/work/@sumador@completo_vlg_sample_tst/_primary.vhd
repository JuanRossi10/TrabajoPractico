library verilog;
use verilog.vl_types.all;
entity SumadorCompleto_vlg_sample_tst is
    port(
        a_in            : in     vl_logic;
        b_in            : in     vl_logic;
        carry_in        : in     vl_logic;
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SumadorCompleto_vlg_sample_tst;
