`timescale 1ns / 1ps


module block_design_verilog_tb();
    reg  clk = 1'b0;
    reg  ena;
	reg  [0:0] wea;
	reg  interrupt;
    wire interrupt_ack;
    wire read_strobe;
    wire write_strobe;
    wire k_write_strobe;

    always #5 clk = ~clk;
    
    design_1_wrapper UUT(
        .clk(clk),
        .ena(ena),
        .wea(wea),
		.interrupt(interrupt),
        .interrupt_ack(interrupt_ack),
        .read_strobe(read_strobe),
        .write_strobe(write_strobe),
        .k_write_strobe(k_write_strobe)
    );
    
endmodule