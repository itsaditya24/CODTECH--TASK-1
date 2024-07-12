module full_str(output s,co, input a,b,c);
wire t1,t2,k;
// s is sum
// co is carry out
// Full adder
xor g1(s,a,b,c);
xor g2(k,a,b);
and (t1,a,b);
and (t2,k,c);
or(co, t1, t2);

endmodule

module full_df(s,co,a,b,c);
input a,b,c;
output s,co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(a&c);
endmodule

module full_b(s,co,a,b,c);
input a,b,c;
output reg s,co;
always @(*)
begin
s=a^b^c;
co=(a&b)|(b&c)|(a&c);
end

endmodule