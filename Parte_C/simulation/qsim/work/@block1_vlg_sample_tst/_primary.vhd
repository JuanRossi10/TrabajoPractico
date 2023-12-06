library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        D               : in     vl_logic;
        D41             : in     vl_logic;
        D42             : in     vl_logic;
        D43             : in     vl_logic;
        D44             : in     vl_logic;
        D45             : in     vl_logic;
        D46             : in     vl_logic;
        D47             : in     vl_logic;
        D48             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
