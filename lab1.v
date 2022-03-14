module lab1 (D0,D1,D2,D3,x,y,V);

input D0,D1,D2,D3;
output x,y,V;
wire and1O,D2n;

or or1 (y,D3,and1o);
not not1 (D2n,D2);
and and1 (and1o,D1,D2n);
or or2 (x,D2,D3);
or or3 (V,D1,D0,x);

endmodule 
