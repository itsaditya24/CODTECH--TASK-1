module half_sub_behavioral(output reg d,bo, input a,b);
always @(*)
begin
d=a^b;
bo=(~a)&b;
end
endmodule

module halfsub_df(output d,bo,input a,b);
assign d=a^b;
assign bo=(~a)&b;
endmodule


module half_sub_str(d,bo,a,b);
input a,b;
output d,bo;
// bo is borrow
// d is difference
wire abar;
xor(d,a,b);
not(abar,a);
and(bo,abar,b);
endmodule