module pwm_5_variation(clk,out,increase,decrease);

input clk,increase,decrease;
output out;
reg [7:0]duty = 50;
reg [7:0]counter;

always@(posedge clk)
begin

	if(counter < 99)
		counter = counter + 1;
	else
		counter = 0;
	if(increase)
		duty = duty + 5;
	if(decrease)
		duty = duty - 5;
end

assign out = (counter<duty)?1:0;

endmodule