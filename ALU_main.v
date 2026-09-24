module ALU_main (
    input clk,
    rst_n,
    valid,
    input [3:0] opcode,
    input [7:0] A,
    B,
    output reg [7:0] result,
    output reg done
);
  wire  [7:0] add_result,sub_result,and_result,or_result,xor_result,not_result,Shift_left_result,shift_right_result;
  wire ca, cb, equl_result;

  localparam ADD = 4'b0000;
  localparam SUB = 4'b0001;
  localparam AND = 4'b0010;
  localparam OR = 4'b0011;
  localparam Xor = 4'b0100;
  localparam Not = 4'b0101;
  localparam Shift_left = 4'b0110;
  localparam Shift_right = 4'b0111;
  localparam Equal = 4'b1000;

  Add_sub adsx (
      .A(A),
      .B(B),
      .sel(1'b0),
      .out(add_result),
      .cout(ca)
  );
  Add_sub subx (
      .A(A),
      .B(B),
      .sel(1'b1),
      .out(sub_result),
      .cout(cb)
  );
  assign and_result = A & B;
  assign or_result = A | B;
  assign xor_result = A ^ B;
  assign not_result = ~A;
  assign Shift_left_result = A << 1;
  assign shift_right_result = A >> 1;
  assign equl_result = A == B ? 8'b00000001 : 8'b00000000;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      result <= 8'b0;
      done   <= 1'b0;
    end else if (valid) begin
      case (opcode)
        ADD: result <= add_result;
        SUB: result <= sub_result;
        AND: result <= and_result;
        OR: result <= or_result;
        Xor: result <= xor_result;
        Not: result <= not_result;
        Shift_left: result <= Shift_left_result;
        Shift_right: result <= shift_right_result;
        Equal: result <= equl_result;
        default: result <= 8'b0;
      endcase
      done <= 1;
    end else if (!valid) begin
      done <= 1'b0;
    end
  end
endmodule
