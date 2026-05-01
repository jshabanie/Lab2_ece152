module ff_reference #(
  parameter WIDTH = 4
) (
  input clk,
  input rst,
  input logic [WIDTH-1:0] data_i,
  output logic [WIDTH-1:0] data_o
);

  logic [WIDTH-1:0] stage1_d, stage1_q;
  logic [WIDTH-1:0] stage2_d, stage2_q;
  logic [WIDTH-1:0] stage3_d, stage3_q;

  assign data_o = stage3_q;

  always_comb begin : data_set
    stage1_d = data_i;
    stage2_d = stage1_q;
    stage3_d = stage2_q;
  end

  // async reset
  always_ff @(posedge clk or posedge rst) begin : data_ff
    if (rst) begin
      stage1_q <= '0;
      stage2_q <= '0;
      stage3_q <= '0;
    end else begin
      stage1_q <= stage1_d;
      stage2_q <= stage2_d;
      stage3_q <= stage3_d;
    end
  end

endmodule
