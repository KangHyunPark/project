`timescale 1ns / 1ps

module valid_generator32
(
    input [1023:0] din,
    
    output wire [31:0] dout

    );
    

    assign dout = din[31:0] | din[63:32] | din[95:64] | din[127:96] | din[159:128] | din[191:160] | din[223:192] | din[255:224] | din[287:256] | din[319:288] | din[351:320] | din[383:352] | din[415:384] | din[447:416] | din[479:448] | din[511:480] | din[543:512] | din[575:544] | din[607:576] | din[639:608] | din[671:640] | din[703:672] | din[735:704] | din[767:736] | din[799:768] | din[831:800] | din[863:832] | din[895:864] | din[927:896] | din[959:928] | din[991:960] | din[1023:992];

endmodule
