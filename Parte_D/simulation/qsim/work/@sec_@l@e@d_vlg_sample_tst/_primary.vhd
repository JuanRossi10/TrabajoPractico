library verilog;
use verilog.vl_types.all;
entity Sec_LED_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Sec_LED_vlg_sample_tst;
