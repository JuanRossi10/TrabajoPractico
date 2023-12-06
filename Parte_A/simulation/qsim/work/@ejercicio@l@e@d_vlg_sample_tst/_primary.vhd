library verilog;
use verilog.vl_types.all;
entity EjercicioLED_vlg_sample_tst is
    port(
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end EjercicioLED_vlg_sample_tst;
