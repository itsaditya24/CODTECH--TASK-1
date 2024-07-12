module half_str(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
xor (sum,in1,in2);
and (carry,in1,in2);
endmodule

module half_df(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
assign sum = in1^in2;
assign carry = in1&in2;
endmodule

module half_b(sum,carry,in1,in2);
input in1,in2;
output reg sum,carry;
always @(*)
begin
sum = in1^in2;
carry = in1&in2;
end
endmodule