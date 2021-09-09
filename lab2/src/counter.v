module counter (
  input clk,
  input ce,
  output [3:0] LEDS
);
    // Some initial code has been provided for you
    // You can change this code if needed
    reg [3:0] led_cnt_value = 4'b0;
    assign LEDS = led_cnt_value;

    // TODO: Instantiate a reg net to count the number of cycles
    // required to reach one second. Note that our clock period is 8ns.
    // Think about how many bits are needed for your reg.
    //assign cycle = 9'd125000000;

    reg[26:0] net = 27'd0;
    always @(posedge clk) begin
        // TODO: update the reg if clock is enabled (ce is 1).
        // Once the requisite number of cycles is reached, increment the count.
        if (ce == 1)
	    begin
		net <= net + 1'd1;
	    end
        if (ce == 1 && net == 27'd125000000)
            begin
		led_cnt_value <= led_cnt_value + 1'b1;
		net <= 27'd0;
	    end 
    end
endmodule

