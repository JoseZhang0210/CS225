module lab4 (D,clk,enable,seed);
    input clk, enable, seed;
    output [5:0]D;
	reg [5:0]D;
    always @(posedge clk ) begin
        D[5:1]<=D[4:0];
        if (enable) begin
            D[0]<=seed;
        end 
        else begin
            D[0]<=D[5]^D[4];
        end
    end
endmodule 