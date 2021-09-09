module structural_adder (
    input [13:0] a,
    input [13:0] b,
    output [14:0] sum
);
    wire [14:0] c;

    genvar i;

    generate
        for (i = 0; i < 14; i = i + 1) begin:ripple_adder
		full_adder add(.a(a[i]), .b(b[i]), .carry_in(c[i]), .sum(sum[i]), .carry_out(c[i+1]));
	end
    endgenerate

    assign c[0] = 1'b0;
    assign sum[14] = c[14];
endmodule
