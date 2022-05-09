`timescale 1ns / 1ps

module microaddr_generator(
    input [9:0] addr,
    
    output wire [31:0] valid,
    output wire [4:0] microaddr
    );
    
    assign valid = {{31{1'b0}},1'b1} << addr[9:5];
    assign microaddr = addr[4:0];

endmodule
