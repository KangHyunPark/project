
module simple_sram2 // 1 input 2 output
#(
    parameter integer addr_width = 11,
    parameter integer data_width = 32
    )
(
    input wire clk,
    input wire [addr_width-1:0] waddr,
    input wire [addr_width-1:0] raddr_a,
    input wire [addr_width-1:0] raddr_b,
    input wire write,
    input wire signed [data_width-1:0] din,
    
    output wire signed [data_width-1:0] dout_a,
    output wire signed [data_width-1:0] dout_b
    );
    
    reg signed [data_width-1:0] mem [2**addr_width-1:0];
    
    reg [addr_width-1:0] waddr_buf;
    reg [addr_width-1:0] raddr_a_buf;
    reg [addr_width-1:0] raddr_b_buf;
    reg signed [data_width-1:0] din_buf;
    reg write_buf;
    
    always @(posedge clk) begin
        waddr_buf <= waddr;
        raddr_a_buf <= raddr_a;
        raddr_b_buf <= raddr_b;
        din_buf <= din;
        write_buf <= write;
        if(write_buf)
            mem[waddr_buf] <= din_buf;
    end
    
    assign dout_a = mem[raddr_a_buf];
    assign dout_b = mem[raddr_b_buf];
    
endmodule

