module full_adder (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
    // Insert your RTL here to calculate the sum and carry out bits
    // Remove these assign statements once you write your own RTL

    xor(sum, a, b, carry_in);

    wire xor_a_b;
    wire cin_and;
    wire and_a_b;

    xor(xor_a_b, a, b);
    and(cin_and, carry_in, xor_a_b);
    and(and_a_b, a, b);
    or(carry_out, and_a_b, cin_and);
    
endmodule
