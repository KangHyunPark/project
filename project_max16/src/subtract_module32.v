
module subtract_module32
#(
    parameter integer INPUT_DATA_WIDTH = 8,
    parameter integer PE_ROW = 16
    )
(   
    input wire clk,
    input wire rstn,
    input wire is_neighbor,
    input wire is_centroid,
    input wire [(INPUT_DATA_WIDTH*PE_ROW-1):0] din_neighbor,
    input wire [(INPUT_DATA_WIDTH*PE_ROW-1):0] din_centroid,
    
    output wire [(INPUT_DATA_WIDTH*PE_ROW)-1:0] dout,
    output reg done
    );
    
    reg [(INPUT_DATA_WIDTH*PE_ROW)-1:0] neighbor;
    reg [(INPUT_DATA_WIDTH*PE_ROW)-1:0] centroid;
    
    reg [1:0] counter2;
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            neighbor <= {(INPUT_DATA_WIDTH*PE_ROW){1'b0}};
            centroid <= {(INPUT_DATA_WIDTH*PE_ROW){1'b0}};
            counter2 <= 2'b00;
            done <= 1'b0;
        end
        else begin
            if(is_centroid) begin
                centroid <= din_centroid;
                done <= 1'b0;
            end
            else if(is_neighbor) begin
                if(counter2 == 2'b11) begin
                    neighbor <= din_neighbor;
                    counter2 <= 2'b00;
                    done <= 1'b1;
                end
                else begin
                    counter2 <= counter2 + 1;
                    done <= 1'b0;
                end
            end
            else begin
                done <= 1'b0;
            end
        end        
    end
    
    genvar i;
    generate
        for(i=0 ; i <= PE_ROW-1; i=i+1) begin
			subtract_operator # (
				.DATA_WIDTH(INPUT_DATA_WIDTH)
			) u_subtract_operator (
			     .in_a(neighbor[INPUT_DATA_WIDTH*i+:INPUT_DATA_WIDTH]),
			     .in_b(centroid[INPUT_DATA_WIDTH*i+:INPUT_DATA_WIDTH]),
			     
			     .out(dout[INPUT_DATA_WIDTH*i+:INPUT_DATA_WIDTH])
			);        
        end
    endgenerate
    
endmodule
