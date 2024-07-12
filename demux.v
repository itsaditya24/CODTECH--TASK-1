module mux_2_1(out,in,s);
output out;
input [1:0]in;
input s;
// s is select
// in is vector input
assign out = s ? in[1] : in[0];
endmodule