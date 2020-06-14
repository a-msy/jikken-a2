/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Mon May 18 15:42:50 JST 2020
 * 
 * The source file of this code: 'test_regs32x32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_regs32x32 */

module test_regs32x32(p_reset, m_clock);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* reg decl */
  reg   [15:0] count;
  /* ModuleInstance: regs: ___no_package___.regs32x32 */
  wire         _regs_p_reset;
  wire         _regs_m_clock;
  wire   [4:0] _regs_a_addr;
  wire  [31:0] _regs_b;
  wire   [4:0] _regs_in_addr;
  wire   [4:0] _regs_b_addr;
  wire         _regs_read_a;
  wire         _regs_clear;
  wire  [31:0] _regs_a;
  wire  [31:0] _regs_in;
  wire         _regs_write;
  wire         _regs_read_b;
  regs32x32 regs(.p_reset(_regs_p_reset),
                 .m_clock(_regs_m_clock),
                 .a_addr(_regs_a_addr),
                 .b(_regs_b),
                 .in_addr(_regs_in_addr),
                 .b_addr(_regs_b_addr),
                 .read_a(_regs_read_a),
                 .clear(_regs_clear),
                 .a(_regs_a),
                 .in(_regs_in),
                 .write(_regs_write),
                 .read_b(_regs_read_b));
  /* MemDecl pat (BitType 56) size: IConst(1000,1000) */
  reg   [55:0] pat[0:999];
  /* local decls */
  wire         __net0;
  wire         __net1;
  wire  [15:0] __net2;
  wire   [4:0] __net3;
  wire  [31:0] __net4;
  wire         __net5;
  wire   [4:0] a;
  wire  [31:0] a1;
  wire   [4:0] b;
  wire  [31:0] b1;
  wire   [4:0] c;
  wire  [31:0] d;
  wire  [15:0] i;
  wire  [55:0] p;
  /* reg decls (system) */
  reg   [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 1001 ? 1'b1 : 1'b0;
  assign __net2 = __net1 ? i : 16'bx;
  assign __net3 = __net1 ? c : 5'bx;
  assign __net4 = __net1 ? d : 32'bx;
  assign __net5 = count == 1001 ? 1'b1 : 1'b0;
  assign _regs_a_addr = __net1 ? a : 5'bx;
  assign _regs_b_addr = __net1 ? b : 5'bx;
  assign _regs_clear = 1'b0;
  assign _regs_in = __net1 ? __net4 : 32'bx;
  assign _regs_in_addr = __net1 ? __net3 : 5'bx;
  assign _regs_m_clock = m_clock;
  assign _regs_p_reset = p_reset;
  assign _regs_read_a = __net1 ? 1'b1 : 1'b0;
  assign _regs_read_b = __net1 ? 1'b1 : 1'b0;
  assign _regs_write = __net1 ? 1'b1 : 1'b0;
  assign a = __net1 ? p[52:48] : 5'bx;
  assign a1 = __net1 ? _regs_a : 32'bx;
  assign b = __net1 ? p[44:40] : 5'bx;
  assign b1 = __net1 ? _regs_b : 32'bx;
  assign c = __net1 ? p[36:32] : 5'bx;
  assign d = __net1 ? p[31:0] : 32'bx;
  assign i = __net1 ? count + 16'B1111111111111110 : 16'bx;
  assign p = __net1 ? pat[__net2] : 56'bx;
  /* defs */
  /* initial */
  /* always */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        count <= 16'b0;
      else
        count <= count + 16'B0000000000000001;
    end
  /* reg updates (system) */
  always @(posedge m_clock)
    begin
      _time <= _time + 64'b1;
    end
  /* always */
  always @(posedge m_clock)
    if (__net5)
      $display("%d: bye", count);
  always @(posedge m_clock)
    if (__net5)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d: %d %d %d %x - %x %x", i, a, b, c, d, a1, b1);
  always @(posedge m_clock)
    if (__net0)
      $readmemh("test_regs32x32.pat", pat);
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
  test_regs32x32 test_regs32x32_instance(.p_reset(p_reset),
                                         .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_regs32x32.vcd");
    $dumpvars(0, test_regs32x32_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_regs32x32.v) */
