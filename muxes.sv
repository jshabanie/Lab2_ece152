module muxes (
  input a_i,
  input b_i,
  input c_i,
  input d_i,
  input logic [1:0] sel4_i,
  output logic y0_o,
  output logic y1_o
);

  // 2-input mux
  assign y0_o = (a_i ^ b_i) ? d_i : c_i;

  // 4-input mux
  always_comb begin
    case (sel4_i)
      2'b00: y1_o = 1'b0;
      2'b01: y1_o = c_i;
      2'b10: y1_o = 1'b0;
      2'b11: y1_o = d_i;
      default: y1_o = 1'b0;
    endcase
  end

endmodule
