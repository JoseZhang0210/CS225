`timescale 1ns/10ps
module Adder4bit_tb;
reg [3:0]a;
reg [3:0]b;
reg c_input;
wire [3:0]s;
wire c_output;

Adder4bit DUT (
    .a (a),
    .b (b),
    .c_input(c_input),
    .s(s),
    .c_output(c_output)
);

initial begin 
    a=4'b0000; b=4'b0000; c_input=0;
    #10 a=4'b1011; b=4'b0100; c_input=0; 
    #10 a=4'b0111; b=4'b1101; c_input=1; 
    #10 $stop;

end

endmodule 