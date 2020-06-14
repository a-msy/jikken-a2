/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu May 14 17:24:05 JST 2020
 * 
 * The source file of this code: 'test_alu32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_alu32 */

module test_alu32(p_reset, m_clock);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: a0: ___no_package___.alu32 */
  wire         _a0_p_reset;
  wire         _a0_m_clock;
  wire  [31:0] _a0_b;
  wire         _a0_op_and;
  wire         _a0_op_sub;
  wire         _a0_overflow;
  wire         _a0_op_xor;
  wire         _a0_op_or;
  wire  [31:0] _a0_a;
  wire         _a0_op_nor;
  wire         _a0_op_add;
  wire  [31:0] _a0_out;
  wire         _a0_zero;
  alu32 a0(.p_reset(_a0_p_reset),
           .m_clock(_a0_m_clock),
           .b(_a0_b),
           .op_and(_a0_op_and),
           .op_sub(_a0_op_sub),
           .overflow(_a0_overflow),
           .op_xor(_a0_op_xor),
           .op_or(_a0_op_or),
           .a(_a0_a),
           .op_nor(_a0_op_nor),
           .op_add(_a0_op_add),
           .out(_a0_out),
           .zero(_a0_zero));
  /* reg decl */
  reg   [11:0] count;
  /* MemDecl pat (BitType 70) size: IConst(16,16) */
  reg   [69:0] pat[0:15];
  /* local decls */
  wire         __net0;
  wire         __net1;
  wire         __net10;
  wire  [31:0] __net11;
  wire  [31:0] __net12;
  wire         __net13;
  wire  [31:0] __net14;
  wire  [31:0] __net15;
  wire         __net16;
  wire  [31:0] __net17;
  wire  [31:0] __net18;
  wire         __net19;
  wire  [11:0] __net2;
  wire  [31:0] __net20;
  wire  [31:0] __net21;
  wire         __net22;
  wire   [5:0] __net3;
  wire         __net4;
  wire  [31:0] __net5;
  wire  [31:0] __net6;
  wire         __net7;
  wire  [31:0] __net8;
  wire  [31:0] __net9;
  wire  [31:0] a;
  wire  [31:0] b;
  wire   [5:0] f;
  wire  [11:0] i;
  wire  [31:0] out;
  wire         ov;
  wire  [69:0] p;
  wire         zero;
  /* reg decls (system) */
  reg   [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 17 ? 1'b1 : 1'b0;
  assign __net10 = __net1 ? __net3 == 6'B001000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net11 = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                     a : 
                     32'bx;
  assign __net12 = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                     b : 
                     32'bx;
  assign __net13 = __net1 ? __net3 == 6'B000100 ? 1'b1 : 1'b0 : 1'bx;
  assign __net14 = ~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net13))) ? 
                     a : 
                     32'bx;
  assign __net15 = ~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net13))) ? 
                     b : 
                     32'bx;
  assign __net16 = __net1 ? __net3 == 6'B000010 ? 1'b1 : 1'b0 : 1'bx;
  assign __net17 = ~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net16)))) ? 
                     a : 
                     32'bx;
  assign __net18 = ~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net16)))) ? 
                     b : 
                     32'bx;
  assign __net19 = __net1 ? __net3 == 6'B000001 ? 1'b1 : 1'b0 : 1'bx;
  assign __net2 = __net1 ? i : 12'bx;
  assign __net20 = ~(__net1 & __net16) & (~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net19))))) ? 
                     a : 
                     32'bx;
  assign __net21 = ~(__net1 & __net16) & (~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net19))))) ? 
                     b : 
                     32'bx;
  assign __net22 = count == 17 ? 1'b1 : 1'b0;
  assign __net3 = __net1 ? f : 6'bx;
  assign __net4 = __net1 ? __net3 == 6'B100000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = __net1 & __net4 ? a : 32'bx;
  assign __net6 = __net1 & __net4 ? b : 32'bx;
  assign __net7 = __net1 ? __net3 == 6'B010000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net8 = ~(__net1 & __net4) & (__net1 & __net7) ? a : 32'bx;
  assign __net9 = ~(__net1 & __net4) & (__net1 & __net7) ? b : 32'bx;
  assign _a0_a = __net1 & __net4 ? 
                   __net5 : 
                   ~(__net1 & __net4) & (__net1 & __net7) ? 
                     __net8 : 
                     ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                       __net11 : 
                       ~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net13))) ? 
                         __net14 : 
                         ~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net16)))) ? 
                           __net17 : 
                           ~(__net1 & __net16) & (~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net19))))) ? 
                             __net20 : 
                             32'bx;
  assign _a0_b = __net1 & __net4 ? 
                   __net6 : 
                   ~(__net1 & __net4) & (__net1 & __net7) ? 
                     __net9 : 
                     ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                       __net12 : 
                       ~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net13))) ? 
                         __net15 : 
                         ~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net16)))) ? 
                           __net18 : 
                           ~(__net1 & __net16) & (~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net19))))) ? 
                             __net21 : 
                             32'bx;
  assign _a0_m_clock = m_clock;
  assign _a0_op_add = __net1 & __net4 ? 1'b1 : 1'b0;
  assign _a0_op_and = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                        1'b1 : 
                        1'b0;
  assign _a0_op_nor = ~(__net1 & __net16) & (~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net19))))) ? 
                        1'b1 : 
                        1'b0;
  assign _a0_op_or = ~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net13))) ? 
                       1'b1 : 
                       1'b0;
  assign _a0_op_sub = ~(__net1 & __net4) & (__net1 & __net7) ? 1'b1 : 1'b0;
  assign _a0_op_xor = ~(__net1 & __net13) & (~(__net1 & __net10) & (~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net16)))) ? 
                        1'b1 : 
                        1'b0;
  assign _a0_p_reset = p_reset;
  assign a = __net1 ? p[69:38] : 32'bx;
  assign b = __net1 ? p[37:6] : 32'bx;
  assign f = __net1 ? p[5:0] : 6'bx;
  assign i = __net1 ? count + 12'B111111111110 : 12'bx;
  assign out = __net1 ? _a0_out : 32'bx;
  assign ov = __net1 ? _a0_overflow : 1'bx;
  assign p = __net1 ? pat[__net2] : 70'bx;
  assign zero = __net1 ? _a0_zero : 1'bx;
  /* defs */
  /* initial */
  /* always */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        count <= 12'b0;
      else
        count <= count + 12'B000000000001;
    end
  /* reg updates (system) */
  always @(posedge m_clock)
    begin
      _time <= _time + 64'b1;
    end
  /* always */
  always @(posedge m_clock)
    if (__net22)
      $display("bye");
  always @(posedge m_clock)
    if (__net22)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d %d %d %b %d %b %b", i, a, b, f, out, zero, ov);
  always @(posedge m_clock)
    if (__net0)
      $readmemb("test_alu32.pat", pat);
  /* initial (system) */
  initial begin
    _time <= 64'b0;
  end
endmodule
/* test bench: 'tb' */

module tb;
  parameter CYCLE_TIME = 10;
  reg p_reset;
  reg m_clock;
  test_alu32 test_alu32_instance(.p_reset(p_reset),
                                 .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_alu32.vcd");
    $dumpvars(0, test_alu32_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_alu32.v) */
