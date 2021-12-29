module mod14_JK(w,q0,q1,q2,q3,clk);

input w,clk;
output q0,q1,q2,q3;

assign reset = q0 & q2 & q3; 

assign j0 = w;
assign k0 = j0;
JK_FF(j0,k0,clk,reset,out0);
assign q0 = out0;

assign j1 = w & q0;
assign k1 = j1;
JK_FF(j1,k1,clk,reset,out1);
assign q1 = out1;

assign j2 = j1 & q1;
assign k2 = j2;
JK_FF(j2,k2,clk,reset,out2);
assign q2 = out2;

assign j3 = j2 & q2;
assign k3 = j3;
JK_FF(j3,k3,clk,reset,out3);
assign q3 = out3;

endmodule
 
module JK_FF(J,K,clk,clear,OUT);

input J,K,clear,clk;
output reg OUT;

always@(posedge clk)
if(~clear)
begin
	if(~J & ~K)
		OUT <= OUT;
	else if(~J & K)
		OUT <= 0;
	else if(J & ~K)
		OUT <= 1;
	else if(J & K)
		OUT <= ~OUT;
end
else
	OUT <= 0;

endmodule