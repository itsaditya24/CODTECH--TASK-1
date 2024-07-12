Name: ADITYA JANGIR<br />
Company: CODTECH IT SOLUTIONS<br />
ID: :CT08DS2335<br />
Domain: VLSI<br />
Duration: (4 Weeks) JUNE 15th,2024 to JULY 15th, 2024<br />
Mentor: NEELA SANTHOSH KUMAR<br />

# Overview of the Project

# TASK ONE: DIGITAL LOGIC DESIGN WITH VERILOG

Design basic digital logic circuits like logic gates, adders, and multiplexers using
Verilog within the VLSI software. Simulate the Verilog designs to ensure correct
functionality. Use the waveform viewer in the VLSI software to analyze the
simulation results.


**Tools used:** ModelSim, vscode

## Logic gates

1) AND gates
```
module andgate(a,b,y);
input a,b;
output y;
and (y,a,b);
endmodule
```

![Screenshot (146)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/7337af90-5025-4ed7-8a22-529e80fe42d0)

2) OR gate

```
module orgate(a,b,y);
input a,b;
output y;
or (y,a,b);
endmodule
```
![Screenshot (147)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/7aa66496-e2c1-49db-886d-8fee52983df2)

3) NOT gate

```
module notgate(a,y);
input a;
output y;
not (y,a);
endmodule
```
![Screenshot (148)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/6b2ae98a-8016-43ad-904d-483789b339d1)

4) NAND gate
```
module nandgate(a,b,y);
input a,b;
output y;
nand (y,a,b);
endmodule
```
![Screenshot (149)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/46cac2ca-645a-456a-b979-cfa3ddb8117c)

5) NOR gate
```
module norgate(a,b,y);
input a,b;
output y;
nor (y,a,b);
endmodule
```
![Screenshot (150)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/1a30a96d-dedf-464d-aee4-9bb3725e1b6f)

6) BUFFER gate
```
module buffergate(a,y);
input a;
output y;
buf (y,a);
endmodule
```

![Screenshot (151)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/10a87bb5-f15c-45e7-9967-8e17a53d671a)

7) XOR gate
```
module xorgate(a,b,y);
input a,b;
output y;
xor (y,a,b);
endmodule
```
![Screenshot (152)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/a3cc1a80-bf23-4c9a-be44-00eeb9925df4)

8) XNOR gate
```
module xnorgate(a,b,y);
input a,b;
output y;
xnor (y,a,b);
endmodule
```

![Screenshot (153)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/f414f15c-fcf9-4139-8a8f-abd0dc2b6910)

## Adders

1) Half Adder
#### Structural
```
module half_str(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
xor (sum,in1,in2);
and (carry,in1,in2);
endmodule
```
#### Dataflow
```
module half_df(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
assign sum = in1^in2;
assign carry = in1&in2;
endmodule
```
#### Behavioral 
```
module half_b(sum,carry,in1,in2);
input in1,in2;
output reg sum,carry;
always @(*)
begin
sum = in1^in2;
carry = in1&in2;
end
endmodule
```
![Screenshot (137)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/f7e48e88-98f5-4b7d-8aae-5bac9774f0a8)

2) Full Adder
#### Structural
```
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
```
#### Dataflow
```
module full_df(s,co,a,b,c);
input a,b,c;
output s,co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(a&c);
endmodule
```
#### Behavioral 
```
module full_b(s,co,a,b,c);
input a,b,c;
output reg s,co;
always @(*)
begin
s=a^b^c;
co=(a&b)|(b&c)|(a&c);
end

endmodule
```
![Screenshot (140)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/3beb2d08-5aa3-40eb-b4bb-30dffadfabe0)

## Multiplexer

#### Multiplexer
```
module mux_2_1(out,in,s);
output out;
input [1:0]in;
input s;
// s is select
// in is vector input
assign out = s ? in[1] : in[0];
endmodule
```

#### Demultiplexer
```
module mux_2_1(out,in,s);
output out;
input [1:0]in;
input s;
// s is select
// in is vector input
assign out = s ? in[1] : in[0];
endmodule
```

![mux_2_1](https://github.com/harris8099/CODTECH-Task1/assets/108947643/dee0dd8b-8f71-4163-8067-e3784e3f8fb8)


## Subtractor
1) Half Subtractor
#### Structural
```
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
```
#### Dataflow
```
module halfsub_df(output d,bo,input a,b);
assign d=a^b;
assign bo=(~a)&b;
endmodule
```
#### Behavioral 
```
module half_sub_behavioral(output reg d,bo, input a,b);
always @(*)
begin
d=a^b;
bo=(~a)&b;
end
endmodule
```
![Screenshot (141)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/762ed0bd-b71d-417e-b9a0-f464443737b7)

2) Full Subtractor
#### Structural
```
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
```
#### Dataflow
```
module full_sub_df(output d, bo,input a,b,bi);
assign d=a^b^bi;
assign bo=((~a)&b)|(~(a^b)&bi);
endmodule
```
#### Behavioral 
```
module full_sub_b(output reg d, bo,input a,b,bi);
always @(*)
begin
d=a^b^bi;
bo=((~a)&b)|(~(a^b)&bi);
end
endmodule
```

![Screenshot (142)](https://github.com/harris8099/CODTECH-Task1/assets/108947643/5ca609aa-6b10-4cee-a320-9de19753eb1d)









