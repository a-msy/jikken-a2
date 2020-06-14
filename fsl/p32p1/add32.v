/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 17:20:04 JST 2020
 * 
 * The source file of this code: 'add32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: add4 */

module add4(p_reset, m_clock, a, b, ci, out, co, ov, add);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  input  [3:0] a;
  wire   [3:0] a;
  input  [3:0] b;
  wire   [3:0] b;
  input        ci;
  wire         ci;
  output [3:0] out;
  wire   [3:0] out;
  output       co;
  wire         co;
  output       ov;
  wire         ov;
  input        add;
  wire         add;
  /* for bundle-type input/output */
  /* local decls */
  wire   [4:0] _add_t1_0_1000;
  wire   [4:0] _add_t2_0_1001;
  wire   [4:0] _add_t3_0_1002;
  /* assigns */
  assign _add_t1_0_1000 = add ? {1'B0, a} : 5'bx;
  assign _add_t2_0_1001 = add ? {1'B0, b} : 5'bx;
  assign _add_t3_0_1002 = add ? 
                            _add_t1_0_1000 + _add_t2_0_1001 + {4'b0000, ci} : 
                            5'bx;
  assign co = add ? _add_t3_0_1002[4] : 1'bx;
  assign out = add ? _add_t3_0_1002[3:0] : 4'bx;
  assign ov = add ? ~a[3] & ~b[3] & out[3] | a[3] & b[3] & ~out[3] : 1'bx;
  /* defs */
  /* FunDef add */
  /*   parameter: a: Bit(4) */
  /*   parameter: b: Bit(4) */
  /*   parameter: ci: Bit(1) */
endmodule
/* ModuleDef: add8 */

module add8(p_reset, m_clock, a, b, ci, out, co, ov, add);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  input  [7:0] a;
  wire   [7:0] a;
  input  [7:0] b;
  wire   [7:0] b;
  input        ci;
  wire         ci;
  output [7:0] out;
  wire   [7:0] out;
  output       co;
  wire         co;
  output       ov;
  wire         ov;
  input        add;
  wire         add;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: a0: ___no_package___.add4 */
  wire         _a0_p_reset;
  wire         _a0_m_clock;
  wire   [3:0] _a0_b;
  wire         _a0_co;
  wire         _a0_ci;
  wire   [3:0] _a0_a;
  wire   [3:0] _a0_out;
  wire         _a0_ov;
  wire         _a0_add;
  add4 a0(.p_reset(_a0_p_reset),
          .m_clock(_a0_m_clock),
          .b(_a0_b),
          .co(_a0_co),
          .ci(_a0_ci),
          .a(_a0_a),
          .out(_a0_out),
          .ov(_a0_ov),
          .add(_a0_add));
  /* ModuleInstance: a1: ___no_package___.add4 */
  wire         _a1_p_reset;
  wire         _a1_m_clock;
  wire   [3:0] _a1_b;
  wire         _a1_co;
  wire         _a1_ci;
  wire   [3:0] _a1_a;
  wire   [3:0] _a1_out;
  wire         _a1_ov;
  wire         _a1_add;
  add4 a1(.p_reset(_a1_p_reset),
          .m_clock(_a1_m_clock),
          .b(_a1_b),
          .co(_a1_co),
          .ci(_a1_ci),
          .a(_a1_a),
          .out(_a1_out),
          .ov(_a1_ov),
          .add(_a1_add));
  /* local decls */
  wire   [3:0] __net0;
  wire   [3:0] __net1;
  wire         __net2;
  wire   [3:0] __net3;
  wire   [3:0] __net4;
  wire         __net5;
  wire         _add_c1_0_1002;
  wire   [3:0] _add_t0_0_1000;
  wire   [3:0] _add_t1_0_1001;
  /* assigns */
  assign __net0 = add ? a[3:0] : 4'bx;
  assign __net1 = add ? b[3:0] : 4'bx;
  assign __net2 = add ? ci : 1'bx;
  assign __net3 = add ? a[7:4] : 4'bx;
  assign __net4 = add ? b[7:4] : 4'bx;
  assign __net5 = add ? _a0_co : 1'bx;
  assign _a0_a = add ? __net0 : 4'bx;
  assign _a0_add = add ? 1'b1 : 1'b0;
  assign _a0_b = add ? __net1 : 4'bx;
  assign _a0_ci = add ? __net2 : 1'bx;
  assign _a0_m_clock = m_clock;
  assign _a0_p_reset = p_reset;
  assign _a1_a = add ? __net3 : 4'bx;
  assign _a1_add = add ? 1'b1 : 1'b0;
  assign _a1_b = add ? __net4 : 4'bx;
  assign _a1_ci = add ? __net5 : 1'bx;
  assign _a1_m_clock = m_clock;
  assign _a1_p_reset = p_reset;
  assign _add_c1_0_1002 = add ? _a1_co : 1'bx;
  assign _add_t0_0_1000 = add ? _a0_out : 4'bx;
  assign _add_t1_0_1001 = add ? _a1_out : 4'bx;
  assign co = add ? _add_c1_0_1002 : 1'bx;
  assign out = add ? {_add_t1_0_1001, _add_t0_0_1000} : 8'bx;
  assign ov = add ? 
                ~a[7] & ~b[7] & _add_t1_0_1001[3] | a[7] & b[7] & ~_add_t1_0_1001[3] : 
                1'bx;
  /* defs */
  /* FunDef add */
  /*   parameter: a: Bit(8) */
  /*   parameter: b: Bit(8) */
  /*   parameter: ci: Bit(1) */
endmodule
/* ModuleDef: add16 */

module add16(p_reset, m_clock, a, b, ci, out, co, ov, add);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [15:0] a;
  wire   [15:0] a;
  input  [15:0] b;
  wire   [15:0] b;
  input         ci;
  wire          ci;
  output [15:0] out;
  wire   [15:0] out;
  output        co;
  wire          co;
  output        ov;
  wire          ov;
  input         add;
  wire          add;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: a0: ___no_package___.add8 */
  wire          _a0_p_reset;
  wire          _a0_m_clock;
  wire    [7:0] _a0_b;
  wire          _a0_co;
  wire          _a0_ci;
  wire    [7:0] _a0_a;
  wire    [7:0] _a0_out;
  wire          _a0_ov;
  wire          _a0_add;
  add8 a0(.p_reset(_a0_p_reset),
          .m_clock(_a0_m_clock),
          .b(_a0_b),
          .co(_a0_co),
          .ci(_a0_ci),
          .a(_a0_a),
          .out(_a0_out),
          .ov(_a0_ov),
          .add(_a0_add));
  /* ModuleInstance: a1: ___no_package___.add8 */
  wire          _a1_p_reset;
  wire          _a1_m_clock;
  wire    [7:0] _a1_b;
  wire          _a1_co;
  wire          _a1_ci;
  wire    [7:0] _a1_a;
  wire    [7:0] _a1_out;
  wire          _a1_ov;
  wire          _a1_add;
  add8 a1(.p_reset(_a1_p_reset),
          .m_clock(_a1_m_clock),
          .b(_a1_b),
          .co(_a1_co),
          .ci(_a1_ci),
          .a(_a1_a),
          .out(_a1_out),
          .ov(_a1_ov),
          .add(_a1_add));
  /* local decls */
  wire    [7:0] __net0;
  wire    [7:0] __net1;
  wire          __net2;
  wire    [7:0] __net3;
  wire    [7:0] __net4;
  wire          __net5;
  wire          _add_c1_0_1002;
  wire    [7:0] _add_t0_0_1000;
  wire    [7:0] _add_t1_0_1001;
  /* assigns */
  assign __net0 = add ? a[7:0] : 8'bx;
  assign __net1 = add ? b[7:0] : 8'bx;
  assign __net2 = add ? ci : 1'bx;
  assign __net3 = add ? a[15:8] : 8'bx;
  assign __net4 = add ? b[15:8] : 8'bx;
  assign __net5 = add ? _a0_co : 1'bx;
  assign _a0_a = add ? __net0 : 8'bx;
  assign _a0_add = add ? 1'b1 : 1'b0;
  assign _a0_b = add ? __net1 : 8'bx;
  assign _a0_ci = add ? __net2 : 1'bx;
  assign _a0_m_clock = m_clock;
  assign _a0_p_reset = p_reset;
  assign _a1_a = add ? __net3 : 8'bx;
  assign _a1_add = add ? 1'b1 : 1'b0;
  assign _a1_b = add ? __net4 : 8'bx;
  assign _a1_ci = add ? __net5 : 1'bx;
  assign _a1_m_clock = m_clock;
  assign _a1_p_reset = p_reset;
  assign _add_c1_0_1002 = add ? _a1_co : 1'bx;
  assign _add_t0_0_1000 = add ? _a0_out : 8'bx;
  assign _add_t1_0_1001 = add ? _a1_out : 8'bx;
  assign co = add ? _add_c1_0_1002 : 1'bx;
  assign out = add ? {_add_t1_0_1001, _add_t0_0_1000} : 16'bx;
  assign ov = add ? 
                ~a[15] & ~b[15] & _add_t1_0_1001[7] | a[15] & b[15] & ~_add_t1_0_1001[7] : 
                1'bx;
  /* defs */
  /* FunDef add */
  /*   parameter: a: Bit(16) */
  /*   parameter: b: Bit(16) */
  /*   parameter: ci: Bit(1) */
endmodule
/* ModuleDef: add32 */

module add32(p_reset, m_clock, a, b, cin, sum, cout, ov, add);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] a;
  wire   [31:0] a;
  input  [31:0] b;
  wire   [31:0] b;
  input         cin;
  wire          cin;
  output [31:0] sum;
  wire   [31:0] sum;
  output        cout;
  wire          cout;
  output        ov;
  wire          ov;
  input         add;
  wire          add;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: a0: ___no_package___.add16 */
  wire          _a0_p_reset;
  wire          _a0_m_clock;
  wire   [15:0] _a0_b;
  wire          _a0_co;
  wire          _a0_ci;
  wire   [15:0] _a0_a;
  wire   [15:0] _a0_out;
  wire          _a0_ov;
  wire          _a0_add;
  add16 a0(.p_reset(_a0_p_reset),
           .m_clock(_a0_m_clock),
           .b(_a0_b),
           .co(_a0_co),
           .ci(_a0_ci),
           .a(_a0_a),
           .out(_a0_out),
           .ov(_a0_ov),
           .add(_a0_add));
  /* ModuleInstance: a1: ___no_package___.add16 */
  wire          _a1_p_reset;
  wire          _a1_m_clock;
  wire   [15:0] _a1_b;
  wire          _a1_co;
  wire          _a1_ci;
  wire   [15:0] _a1_a;
  wire   [15:0] _a1_out;
  wire          _a1_ov;
  wire          _a1_add;
  add16 a1(.p_reset(_a1_p_reset),
           .m_clock(_a1_m_clock),
           .b(_a1_b),
           .co(_a1_co),
           .ci(_a1_ci),
           .a(_a1_a),
           .out(_a1_out),
           .ov(_a1_ov),
           .add(_a1_add));
  /* local decls */
  wire   [15:0] __net0;
  wire   [15:0] __net1;
  wire          __net2;
  wire   [15:0] __net3;
  wire   [15:0] __net4;
  wire          __net5;
  wire          _add_c1_0_1002;
  wire   [15:0] _add_t0_0_1000;
  wire   [15:0] _add_t1_0_1001;
  /* assigns */
  assign __net0 = add ? a[15:0] : 16'bx;
  assign __net1 = add ? b[15:0] : 16'bx;
  assign __net2 = add ? cin : 1'bx;
  assign __net3 = add ? a[31:16] : 16'bx;
  assign __net4 = add ? b[31:16] : 16'bx;
  assign __net5 = add ? _a0_co : 1'bx;
  assign _a0_a = add ? __net0 : 16'bx;
  assign _a0_add = add ? 1'b1 : 1'b0;
  assign _a0_b = add ? __net1 : 16'bx;
  assign _a0_ci = add ? __net2 : 1'bx;
  assign _a0_m_clock = m_clock;
  assign _a0_p_reset = p_reset;
  assign _a1_a = add ? __net3 : 16'bx;
  assign _a1_add = add ? 1'b1 : 1'b0;
  assign _a1_b = add ? __net4 : 16'bx;
  assign _a1_ci = add ? __net5 : 1'bx;
  assign _a1_m_clock = m_clock;
  assign _a1_p_reset = p_reset;
  assign _add_c1_0_1002 = add ? _a1_co : 1'bx;
  assign _add_t0_0_1000 = add ? _a0_out : 16'bx;
  assign _add_t1_0_1001 = add ? _a1_out : 16'bx;
  assign cout = add ? _add_c1_0_1002 : 1'bx;
  assign ov = add ? 
                ~a[31] & ~b[31] & _add_t1_0_1001[15] | a[31] & b[31] & ~_add_t1_0_1001[15] : 
                1'bx;
  assign sum = add ? {_add_t1_0_1001, _add_t0_0_1000} : 32'bx;
  /* defs */
  /* FunDef add */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /*   parameter: cin: Bit(1) */
endmodule
/* End of file (add32.v) */
