`timescale 1ns / 1ps


module top_tb();
    reg clk = 1'b0;
    reg  [7:0] in_port;
    wire [7:0] port_id;
    wire [7:0] out_port;
    wire write_strobe;
    wire read_strobe;
	reg  interrupt;
    wire interrupt_ack;
    
    always #5 clk = ~clk;
    
    top UUT(
        .clk(clk),
        .in_port(in_port),
        .port_id(port_id),
        .out_port(out_port),
        .write_strobe(write_strobe),
        .read_strobe(read_strobe),
		.interrupt(interrupt),
        .interrupt_ack(interrupt_ack)
    );
    
endmodule