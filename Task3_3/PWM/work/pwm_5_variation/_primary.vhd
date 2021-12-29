library verilog;
use verilog.vl_types.all;
entity pwm_5_variation is
    port(
        clk             : in     vl_logic;
        \out\           : out    vl_logic;
        increase        : in     vl_logic;
        decrease        : in     vl_logic
    );
end pwm_5_variation;
