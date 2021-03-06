module pwm_tb;
  
  wire [4:0]out1;
  reg clk1 = 0;
  reg [4:0]increase1;
  reg [4:0]decrease1;
  always #250 clk1 = ~clk1;
  pwm_5_variation m0(clk1,out1[0],increase1[0],decrease1[0]);
  pwm_5_variation m1(clk1,out1[1],increase1[1],decrease1[1]);
  pwm_5_variation m2(clk1,out1[2],increase1[2],decrease1[2]);
  pwm_5_variation m3(clk1,out1[3],increase1[3],decrease1[3]);
  pwm_5_variation m4(clk1,out1[4],increase1[4],decrease1[4]);
  initial 
  begin
    //clk1 = 0;
    decrease1[0] = 0;increase1[0] = 0;
    decrease1[1] = 0;increase1[1] = 0;
    decrease1[2] = 0;increase1[2] = 0;
    decrease1[3] = 0;increase1[3] = 0;
    decrease1[4] = 0;increase1[4] = 0;
    
    #0
    decrease1[0] = 1;
    decrease1[1] = 1;
    increase1[3] = 1;
    increase1[4] = 1;
    
    #1500
    increase1[3] = 0;
    #1000
    decrease1[1] = 0;
    #2500
    decrease1[0] = 0;
    increase1[4] = 0;
  end
  
endmodule  