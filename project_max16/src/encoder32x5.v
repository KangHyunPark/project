`timescale 1ns / 1ps

module encoder32x5(
    input [31:0] din,
    
    output reg [4:0] dout
    );
    always @(*) begin
        case(din)
            32'h00000001: dout = 00000;
            32'h00000002: dout = 00001;
            32'h00000004: dout = 00010;
            32'h00000008: dout = 00011;
            32'h00000010: dout = 00100;
            32'h00000020: dout = 00101;
            32'h00000040: dout = 00110;
            32'h00000080: dout = 00111;
            32'h00000100: dout = 01000;
            32'h00000200: dout = 01001;
            32'h00000400: dout = 01010;
            32'h00000800: dout = 01011;
            32'h00001000: dout = 01100;
            32'h00002000: dout = 01101;
            32'h00004000: dout = 01110;
            32'h00008000: dout = 01111;
            32'h00010000: dout = 10000;
            32'h00020000: dout = 10001;
            32'h00040000: dout = 10010;
            32'h00080000: dout = 10011;
            32'h00100000: dout = 10100;
            32'h00200000: dout = 10101;
            32'h00400000: dout = 10110;
            32'h00800000: dout = 10111;
            32'h01000000: dout = 11000;
            32'h02000000: dout = 11001;
            32'h04000000: dout = 11010;
            32'h08000000: dout = 11011;
            32'h10000000: dout = 11100;
            32'h20000000: dout = 11101;
            32'h40000000: dout = 11110;
            32'h80000000: dout = 11111;
        endcase
    end
endmodule
