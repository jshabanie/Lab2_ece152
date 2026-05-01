module ff_reference #(
parameter WIDTH = 4
) ;
input clk, rst, input logic [WIDTH-1:0] data_i, output logic [WIDTH-1:0] data_o
Logic [WIDTH-1:0] stagel_d, stagel_q; logic [WIDTH-1:0] stage2_d, stage2_q;
Logic [WIDTH-1:0] stage3_d, stage3_q;
assign data_o = stage3_9;
always_comb begin: data_set
stagel_d = data_i;
stage2_d = stagel_q;
stage3_d = stage2_9;
end
always_ff @(posedge clk or posedge rst) begin: data_ff
if (rst) begin

stagel_q <= '0;


stage2_q <= '0;


stage3_q <= '0;


end else begin


stagel_q <= stagel_d;


stage2_q <= stage2_d;


stage3_q <= stage3_d;

end
endmodule
