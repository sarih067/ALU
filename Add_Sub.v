module Add_sub (
    input [7:0] A,
    B,
    input sel,
    output [7:0] out,
    output cout
);
  wire [7:0] b;
  wire c;
  wire [3:0] x, y;
  assign b = B ^ {8{sel}};
  cla4 adder_sub1 (
      .a(A[3:0]),
      .b(b[3:0]),
      .carry(sel),
      .carry_out(c),
      .cla_out(x)
  );
  cla4 adder_sub2 (
      .a(A[7:4]),
      .b(b[7:4]),
      .carry(c),
      .carry_out(cout),
      .cla_out(y)
  );
  assign out = {y, x};
endmodule

module cla4 (
    input [3:0] a,
    b,
    input carry,
    output [3:0] cla_out,
    output carry_out
);
  wire [3:0] p, s, g;
  wire [4:0] c;

  assign p = a ^ b;
  assign g = a & b;
  assign c[0] = carry;
  assign c[1] = g[0] | (p[0] & c[0]);
  assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
  assign c[3] = g[2] | p[2] & g[1] | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
  assign c[4] = g[3] | p[3] & g[2] | p[3] & p[2] & g[1] | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
  assign carry_out = c[4];

  assign cla_out = p ^ c[3:0];
endmodule
