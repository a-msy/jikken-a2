/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 16:36:10 JST 2020
 * 
 * The source file of this code: 'test_add32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_add32 */

module test_add32(p_reset, m_clock);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: a0: ___no_package___.add32 */
  wire         _a0_p_reset;
  wire         _a0_m_clock;
  wire  [31:0] _a0_b;
  wire         _a0_cin;
  wire         _a0_cout;
  wire  [31:0] _a0_a;
  wire  [31:0] _a0_sum;
  wire         _a0_add;
  add32 a0(.p_reset(_a0_p_reset),
           .m_clock(_a0_m_clock),
           .b(_a0_b),
           .cin(_a0_cin),
           .cout(_a0_cout),
           .a(_a0_a),
           .sum(_a0_sum),
           .add(_a0_add));
  /* reg decl */
  reg   [11:0] count;
  /* MemDecl pat (BitType 65) size: IConst(4000,4000) */
  reg   [64:0] pat[0:3999];
  /* local decls */
  wire         __net0;
  wire         __net1;
  wire  [11:0] __net2;
  wire  [31:0] __net3;
  wire  [31:0] __net4;
  wire         __net5;
  wire         __net6;
  wire  [31:0] a;
  wire  [31:0] b;
  wire         ci;
  wire         cout;
  wire  [11:0] i;
  wire  [64:0] p;
  wire  [31:0] sum;
  /* reg decls (system) */
  reg   [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 4001 ? 1'b1 : 1'b0;
  assign __net2 = __net1 ? i : 12'bx;
  assign __net3 = __net1 ? a : 32'bx;
  assign __net4 = __net1 ? b : 32'bx;
  assign __net5 = __net1 ? ci : 1'bx;
  assign __net6 = count == 4001 ? 1'b1 : 1'b0;
  assign _a0_a = __net1 ? __net3 : 32'bx;
  assign _a0_add = __net1 ? 1'b1 : 1'b0;
  assign _a0_b = __net1 ? __net4 : 32'bx;
  assign _a0_cin = __net1 ? __net5 : 1'bx;
  assign _a0_m_clock = m_clock;
  assign _a0_p_reset = p_reset;
  assign a = __net1 ? p[64:33] : 32'bx;
  assign b = __net1 ? p[32:1] : 32'bx;
  assign ci = __net1 ? p[0] : 1'bx;
  assign cout = __net1 ? _a0_cout : 1'bx;
  assign i = __net1 ? count + 12'B111111111110 : 12'bx;
  assign p = __net1 ? pat[__net2] : 65'bx;
  assign sum = __net1 ? _a0_sum : 32'bx;
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
    if (__net6)
      $display("bye");
  always @(posedge m_clock)
    if (__net6)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d %b %b %b %b %b", i, a, b, ci, sum, cout);
  always @(posedge m_clock)
    if (__net0)
      $readmemb("test_add32.pat", pat);
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
  test_add32 test_add32_instance(.p_reset(p_reset),
                                 .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_add32.vcd");
    $dumpvars(0, test_add32_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_add32.v) */
