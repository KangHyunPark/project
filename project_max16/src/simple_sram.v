
module simple_sram
#(
    parameter integer addr_width = 11,
    parameter integer data_width = 32
    )
(
    input wire clk,
    input wire [addr_width-1:0] raddr,
    input wire [addr_width-1:0] waddr,
    input wire write,
    input wire signed [data_width-1:0] din,
    
    output wire signed [data_width-1:0] dout
    );
    
    reg signed [data_width-1:0] mem [2**addr_width-1:0];
    
    reg [addr_width-1:0] raddr_buf;
    reg [addr_width-1:0] waddr_buf;
    reg signed [data_width-1:0] din_buf;
    reg write_buf;
    
    always @(posedge clk) begin
        raddr_buf <= raddr;
        waddr_buf <= waddr;
        din_buf <= din;
        write_buf <= write;
        if(write_buf)
            mem[waddr_buf] <= din_buf;
    end
    
    assign dout = mem[raddr_buf];
    
endmodule
