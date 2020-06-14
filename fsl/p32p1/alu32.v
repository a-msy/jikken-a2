/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 17:20:04 JST 2020
 * 
 * The source file of this code: 'alu32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: alu32 */

module alu32(p_reset, m_clock, a, b, out, overflow, zero, op_add, op_sub, op_and, op_or, op_xor, op_nor);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] a;
  wire   [31:0] a;
  input  [31:0] b;
  wire   [31:0] b;
  output [31:0] out;
  wire   [31:0] out;
  output        overflow;
  wire          overflow;
  output        zero;
  wire          zero;
  input         op_add;
  wire          op_add;
  input         op_sub;
  wire          op_sub;
  input         op_and;
  wire          op_and;
  input         op_or;
  wire          op_or;
  input         op_xor;
  wire          op_xor;
  input         op_nor;
  wire          op_nor;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: _op_sub_a0: ___no_package___.add32 */
  wire          __op_sub_a0_p_reset;
  wire          __op_sub_a0_m_clock;
  wire   [31:0] __op_sub_a0_b;
  wire          __op_sub_a0_cin;
  wire          __op_sub_a0_cout;
  wire   [31:0] __op_sub_a0_a;
  wire   [31:0] __op_sub_a0_sum;
  wire          __op_sub_a0_ov;
  wire          __op_sub_a0_add;
  add32 _op_sub_a0(.p_reset(__op_sub_a0_p_reset),
                   .m_clock(__op_sub_a0_m_clock),
                   .b(__op_sub_a0_b),
                   .cin(__op_sub_a0_cin),
                   .cout(__op_sub_a0_cout),
                   .a(__op_sub_a0_a),
                   .sum(__op_sub_a0_sum),
                   .ov(__op_sub_a0_ov),
                   .add(__op_sub_a0_add));
  /* ModuleInstance: _op_add_a0: ___no_package___.add32 */
  wire          __op_add_a0_p_reset;
  wire          __op_add_a0_m_clock;
  wire   [31:0] __op_add_a0_b;
  wire          __op_add_a0_cin;
  wire          __op_add_a0_cout;
  wire   [31:0] __op_add_a0_a;
  wire   [31:0] __op_add_a0_sum;
  wire          __op_add_a0_ov;
  wire          __op_add_a0_add;
  add32 _op_add_a0(.p_reset(__op_add_a0_p_reset),
                   .m_clock(__op_add_a0_m_clock),
                   .b(__op_add_a0_b),
                   .cin(__op_add_a0_cin),
                   .cout(__op_add_a0_cout),
                   .a(__op_add_a0_a),
                   .sum(__op_add_a0_sum),
                   .ov(__op_add_a0_ov),
                   .add(__op_add_a0_add));
  /* local decls */
  wire   [31:0] __net0;
  wire   [31:0] __net1;
  wire          __net10;
  wire          __net11;
  wire          __net2;
  wire          __net3;
  wire   [31:0] __net4;
  wire   [31:0] __net5;
  wire          __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  /* assigns */
  assign __net0 = op_add ? a : 32'bx;
  assign __net1 = op_add ? b : 32'bx;
  assign __net10 = op_xor ? 
                     out == 32'B00000000000000000000000000000000 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net11 = op_nor ? 
                     out == 32'B00000000000000000000000000000000 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net2 = op_add ? 1'B0 : 1'bx;
  assign __net3 = op_add ? 
                    out == 32'B00000000000000000000000000000000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net4 = op_sub ? a : 32'bx;
  assign __net5 = op_sub ? ~b : 32'bx;
  assign __net6 = op_sub ? 1'B1 : 1'bx;
  assign __net7 = op_sub ? 
                    out == 32'B00000000000000000000000000000000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net8 = op_and ? 
                    out == 32'B00000000000000000000000000000000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net9 = op_or ? 
                    out == 32'B00000000000000000000000000000000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __op_add_a0_a = op_add ? __net0 : 32'bx;
  assign __op_add_a0_add = op_add ? 1'b1 : 1'b0;
  assign __op_add_a0_b = op_add ? __net1 : 32'bx;
  assign __op_add_a0_cin = op_add ? __net2 : 1'bx;
  assign __op_add_a0_m_clock = m_clock;
  assign __op_add_a0_p_reset = p_reset;
  assign __op_sub_a0_a = op_sub ? __net4 : 32'bx;
  assign __op_sub_a0_add = op_sub ? 1'b1 : 1'b0;
  assign __op_sub_a0_b = op_sub ? __net5 : 32'bx;
  assign __op_sub_a0_cin = op_sub ? __net6 : 1'bx;
  assign __op_sub_a0_m_clock = m_clock;
  assign __op_sub_a0_p_reset = p_reset;
  assign out = op_nor ? 
                 ~(a | b) : 
                 op_xor ? 
                   a ^ b : 
                   op_or ? 
                     a | b : 
                     op_and ? 
                       a & b : 
                       op_sub ? 
                         __op_sub_a0_sum : 
                         op_add ? 
                           __op_add_a0_sum : 
                           32'bx;
  assign overflow = op_nor ? 
                      1'B0 : 
                      op_xor ? 
                        1'B0 : 
                        op_or ? 
                          1'B0 : 
                          op_and ? 
                            1'B0 : 
                            op_sub ? 
                              __op_sub_a0_ov : 
                              op_add ? 
                                __op_add_a0_ov : 
                                1'bx;
  assign zero = op_nor ? 
                  out == 32'B00000000000000000000000000000000 ? 
                    1'B1 : 
                    1'B0 : 
                  op_xor ? 
                    out == 32'B00000000000000000000000000000000 ? 
                      1'B1 : 
                      1'B0 : 
                    op_or ? 
                      out == 32'B00000000000000000000000000000000 ? 
                        1'B1 : 
                        1'B0 : 
                      op_and ? 
                        out == 32'B00000000000000000000000000000000 ? 
                          1'B1 : 
                          1'B0 : 
                        op_sub ? 
                          out == 32'B00000000000000000000000000000000 ? 
                            1'B1 : 
                            1'B0 : 
                          op_add ? 
                            out == 32'B00000000000000000000000000000000 ? 
                              1'B1 : 
                              1'B0 : 
                            1'bx;
  /* defs */
  /* FunDef op_add */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /* FunDef op_sub */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /* FunDef op_and */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /* FunDef op_or */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /* FunDef op_xor */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /* FunDef op_nor */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
endmodule
/* End of file (alu32.v) */
