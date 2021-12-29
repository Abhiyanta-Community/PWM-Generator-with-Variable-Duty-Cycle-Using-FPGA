library verilog;
use verilog.vl_types.all;
entity pwm_5_variation_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        decrease        : in     vl_logic;
        increase        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pwm_5_variation_vlg_sample_tst;
