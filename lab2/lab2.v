//magnitude_comparator
module comparator (outB,outA,out0,A,B);
	input A,B;
	output outA,outB,out0;
	wire nA,nB;
	not (nA,A);
	not (nB,B);
	and (outB,B,nA);
	and (outA,A,nB);
	nor (out0,outA,outB);
endmodule 

module lab2 (D0,D1,D2,A0,A1,A2,A3,B0,B1,B2,B3);
	input A0,A1,A2,A3,B0,B1,B2,B3;
	output D0,D1,D2;
	wire ca0,ca1,ca2,ca3,cb0,cb1,cb2,cb3,X0,X1,X2,X3;
	wire oand1,oand2,oand3,oand4,oand5,oand6;
	
	comparator (cb3,ca3,X3,A3,B3);
	comparator (cb2,ca2,X2,A2,B2);
	comparator (cb1,ca1,X1,A1,B1);
	comparator (cb0,ca0,X0,A0,B0);
	
	and (oand6,X3,cb2);
	and (oand5,X3,ca2);
	and (oand4,X3,X2,cb1);
	and (oand3,X3,X2,ca1);
	and (oand2,X3,X2,X1,cb0);
	and (oand1,X3,X2,X1,ca0);
	and (D0,X3,X2,X1,X0);
	
	or (D2,cb3,oand6,oand4,oand2);
	or (D1,ca3,oand5,oand3,oand1);
endmodule 
