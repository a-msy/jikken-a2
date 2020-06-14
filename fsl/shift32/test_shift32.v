/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Mon May 18 15:09:33 JST 2020
 * 
 * The source file of this code: 'test_shift32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_shift32 */

module test_shift32(p_reset, m_clock);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: s0: ___no_package___.shift32 */
  wire         _s0_p_reset;
  wire         _s0_m_clock;
  wire         _s0_srl;
  wire         _s0_sll;
  wire  [31:0] _s0_in;
  wire  [31:0] _s0_out;
  wire         _s0_sra;
  wire   [4:0] _s0_shamt;
  shift32 s0(.p_reset(_s0_p_reset),
             .m_clock(_s0_m_clock),
             .srl(_s0_srl),
             .sll(_s0_sll),
             .in(_s0_in),
             .out(_s0_out),
             .sra(_s0_sra),
             .shamt(_s0_shamt));
  /* reg decl */
  reg   [11:0] count;
  /* MemDecl pat (BitType 40) size: IConst(128,128) */
  reg   [39:0] pat[0:127];
  /* local decls */
  wire         __net0;
  wire         __net1;
  wire         __net10;
  wire  [31:0] __net11;
  wire   [4:0] __net12;
  wire         __net13;
  wire  [11:0] __net2;
  wire   [2:0] __net3;
  wire         __net4;
  wire  [31:0] __net5;
  wire   [4:0] __net6;
  wire         __net7;
  wire  [31:0] __net8;
  wire   [4:0] __net9;
  wire   [2:0] fun;
  wire  [11:0] i;
  wire  [31:0] in;
  wire  [31:0] out;
  wire  [39:0] p;
  wire   [4:0] shamt;
  /* reg decls (system) */
  reg   [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 129 ? 1'b1 : 1'b0;
  assign __net10 = __net1 ? __net3 == 3'B001 ? 1'b1 : 1'b0 : 1'bx;
  assign __net11 = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                     in : 
                     32'bx;
  assign __net12 = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                     shamt : 
                     5'bx;
  assign __net13 = count == 129 ? 1'b1 : 1'b0;
  assign __net2 = __net1 ? i : 12'bx;
  assign __net3 = __net1 ? fun : 3'bx;
  assign __net4 = __net1 ? __net3 == 3'B100 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = __net1 & __net4 ? in : 32'bx;
  assign __net6 = __net1 & __net4 ? shamt : 5'bx;
  assign __net7 = __net1 ? __net3 == 3'B010 ? 1'b1 : 1'b0 : 1'bx;
  assign __net8 = ~(__net1 & __net4) & (__net1 & __net7) ? in : 32'bx;
  assign __net9 = ~(__net1 & __net4) & (__net1 & __net7) ? shamt : 5'bx;
  assign _s0_in = __net1 & __net4 ? 
                    __net5 : 
                    ~(__net1 & __net4) & (__net1 & __net7) ? 
                      __net8 : 
                      ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                        __net11 : 
                        32'bx;
  assign _s0_m_clock = m_clock;
  assign _s0_p_reset = p_reset;
  assign _s0_shamt = __net1 & __net4 ? 
                       __net6 : 
                       ~(__net1 & __net4) & (__net1 & __net7) ? 
                         __net9 : 
                         ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                           __net12 : 
                           5'bx;
  assign _s0_sll = __net1 & __net4 ? 1'b1 : 1'b0;
  assign _s0_sra = ~(__net1 & __net7) & (~(__net1 & __net4) & (__net1 & __net10)) ? 
                     1'b1 : 
                     1'b0;
  assign _s0_srl = ~(__net1 & __net4) & (__net1 & __net7) ? 1'b1 : 1'b0;
  assign fun = __net1 ? p[2:0] : 3'bx;
  assign i = __net1 ? count + 12'B111111111110 : 12'bx;
  assign in = __net1 ? p[39:8] : 32'bx;
  assign out = __net1 ? _s0_out : 32'bx;
  assign p = __net1 ? pat[__net2] : 40'bx;
  assign shamt = __net1 ? p[7:3] : 5'bx;
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
    if (__net13)
      $display("bye");
  always @(posedge m_clock)
    if (__net13)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d %x %2d %b - %8x", i, in, shamt, fun, out);
  always @(posedge m_clock)
    if (__net0)
      $readmemb("test_shift32.pat", pat);
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
  test_shift32 test_shift32_instance(.p_reset(p_reset),
                                     .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_shift32.vcd");
    $dumpvars(0, test_shift32_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_shift32.v) */
