module full_sub_str(output d, bo,input a,b,bi);
// bi is borrow in
// bo is borrow out
// d is difference
wire abar,v1bar,v1,v2,v3;
not g4(abar,a);
not g3(v1bar,v1);
xor g1(v1,a,b);
xor g2(d,v1,bi);
and g5(v2,abar,b);
and g6(v3,v1bar,bi);
or g7(bo,v2,v3);
endmodule

module full_sub_df(output d, bo,input a,b,bi);
assign d=a^b^bi;
assign bo=((~a)&b)|(~(a^b)&bi);
endmodule

module full_sub_b(output reg d, bo,input a,b,bi);
always @(*)
begin
d=a^b^bi;
bo=((~a)&b)|(~(a^b)&bi);
end
endmodule