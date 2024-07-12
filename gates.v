module andgate(a,b,y);
input a,b;
output y;
and (y,a,b);
endmodule

module orgate(a,b,y);
input a,b;
output y;
or (y,a,b);
endmodule

module notgate(a,y);
input a;
output y;
not (y,a);
endmodule

module nandgate(a,b,y);
input a,b;
output y;
nand (y,a,b);
endmodule

module norgate(a,b,y);
input a,b;
output y;
nor (y,a,b);
endmodule

module buffergate(a,y);
input a;
output y;
buf (y,a);
endmodule

module xorgate(a,b,y);
input a,b;
output y;
xor (y,a,b);
endmodule

module xnorgate(a,b,y);
input a,b;
output y;
xnor (y,a,b);
endmodule

