module Universal_SR(clk,left_in,right_in,par_in,se,clr,out);

input [1:0]se;
input clk,left_in,right_in,clr;
input [3:0]par_in;
output reg [3:0]out;
//output shift_out_left,shift_out_right;

//assign shift_out_right = out[3];
//assign shift_out_left = out[0];

always@(posedge clk)
begin

if(clr)
	out = 4'b0000;
else

begin
	case(se)
	2'b00: begin
		out[0] <= out[0];
		out[1] <= out[1];
		out[2] <= out[2];
		out[3] <= out[3];
	end
	2'b01: begin
		out <= out << 1;
		out[0] <= right_in;
	end
	2'b10: begin
		out <= out >> 1;
		out[3] <= left_in;
	end
	2'b11: begin
		out[0] = par_in[0];
		out[1] = par_in[1];
		out[2] = par_in[2];
		out[3] = par_in[3];
	end
	endcase
end

end

endmodule