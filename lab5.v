module lab5 (str_out, match, rst, str_in, clk);
	input clk, rst, str_in ;
	output [2:0]str_out;
	output match;
	
	reg [2:0]str_out;
	reg [1:0]current_state, next_state;
	reg match;
	
	parameter [1:0]s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;

	always@ (posedge clk or posedge rst)begin
		if(rst) current_state <= s0;
		else begin
			current_state<=next_state;
			str_out[0]<=str_in;
			str_out[1]<=str_out[0];
			str_out[2]<=str_out[1];
		end
	end
	
	always@ (current_state or str_in)begin	
			if(current_state==s0 && str_in==0)next_state=s0;
			if(current_state==s0 && str_in==1)next_state=s1;
			
			if(current_state==s1 && str_in==0)next_state=s0;
			if(current_state==s1 && str_in==1)next_state=s2;
			
			if(current_state==s2 && str_in==0)next_state=s3;
			if(current_state==s2 && str_in==1)next_state=s2;
			
			if(current_state==s3 && str_in==0)next_state=s0;
			if(current_state==s3 && str_in==1)next_state=s1;
	end
		
	always@ (current_state)begin
		if(current_state==s3)match=1;
		else match=0;
	end
endmodule 