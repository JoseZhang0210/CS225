module hw2 (A,B,C0,C4,S);
    input [3:0]A,B;
    input C0;
    wire [3:0]C;
    output C4;
    output [3:0]S;
    
    assign S[3:0]=A[3:0]^B[3:0]^C[3:0];
    assign C[1]=C0&(A[0]^B[0])|(A[0]&B[0]);
    assign C[2]=C[1]&(A[1]^B[1])|(A[1]&B[1]);
    assign C[3]=C[2]&(A[2]^B[2])|(A[2]&B[2]);
    assign C4=C[3]&(A[3]^B[3])|(A[3]&B[3]);
endmodule