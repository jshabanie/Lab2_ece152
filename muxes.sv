module muxes (
input a_i, b_i, c_i, d_i, input logic [1:0] sel4_i, output logic yo_o, y1_o
) ;
assign y0_o = (a_i^b_i) ? (d_i) : (c_i) ;
// y1_0 = MUX (0, c_1,0, d_i) w control sel4_i
// 4-input MUX:
always_comb begin
case (sel4_i)
0: y1_0 = 1'b0;
1: y1_0 = c_ i;
2: y1_0 = 1'b0;
3: y1_0 = d_i;
default: y1_0 = 1'b0;
endcase
end
endmodule
