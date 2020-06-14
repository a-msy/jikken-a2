/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu May 21 16:12:16 JST 2020
 * 
 * The source file of this code: 'test_p32ExecUnit.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_p32ExecUnit */

module test_p32ExecUnit(p_reset, m_clock);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* reg decl */
  reg    [15:0] count;
  /* ModuleInstance: execUnit: ___no_package___.p32ExecUnit */
  wire          _execUnit_p_reset;
  wire          _execUnit_m_clock;
  wire    [3:0] _execUnit_store_loc;
  wire   [31:0] _execUnit_result;
  wire   [31:0] _execUnit_mdata;
  wire   [31:0] _execUnit_b;
  wire    [5:0] _execUnit_funct;
  wire   [31:0] _execUnit_mdata_out;
  wire   [31:0] _execUnit_a;
  wire    [5:0] _execUnit_op;
  wire          _execUnit_exec;
  wire    [4:0] _execUnit_shamt;
  p32ExecUnit execUnit(.p_reset(_execUnit_p_reset),
                       .m_clock(_execUnit_m_clock),
                       .store_loc(_execUnit_store_loc),
                       .result(_execUnit_result),
                       .mdata(_execUnit_mdata),
                       .b(_execUnit_b),
                       .funct(_execUnit_funct),
                       .mdata_out(_execUnit_mdata_out),
                       .a(_execUnit_a),
                       .op(_execUnit_op),
                       .exec(_execUnit_exec),
                       .shamt(_execUnit_shamt));
  /* MemDecl pat (BitType 120) size: IConst(1000,1000) */
  reg   [119:0] pat[0:999];
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire   [15:0] __net2;
  wire    [5:0] __net3;
  wire    [5:0] __net4;
  wire    [4:0] __net5;
  wire   [31:0] __net6;
  wire   [31:0] __net7;
  wire   [31:0] __net8;
  wire          __net9;
  wire   [31:0] a;
  wire   [31:0] b;
  wire    [5:0] funct;
  wire   [15:0] i;
  wire   [31:0] mdata;
  wire   [31:0] mdata_out;
  wire    [5:0] op;
  wire  [119:0] p;
  wire   [31:0] result;
  wire    [4:0] shamt;
  wire    [3:0] store_loc;
  /* reg decls (system) */
  reg    [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 1001 ? 1'b1 : 1'b0;
  assign __net2 = __net1 ? i : 16'bx;
  assign __net3 = __net1 ? op : 6'bx;
  assign __net4 = __net1 ? funct : 6'bx;
  assign __net5 = __net1 ? shamt : 5'bx;
  assign __net6 = __net1 ? a : 32'bx;
  assign __net7 = __net1 ? b : 32'bx;
  assign __net8 = __net1 ? mdata : 32'bx;
  assign __net9 = count == 1001 ? 1'b1 : 1'b0;
  assign _execUnit_a = __net1 ? __net6 : 32'bx;
  assign _execUnit_b = __net1 ? __net7 : 32'bx;
  assign _execUnit_exec = __net1 ? 1'b1 : 1'b0;
  assign _execUnit_funct = __net1 ? __net4 : 6'bx;
  assign _execUnit_m_clock = m_clock;
  assign _execUnit_mdata = __net1 ? __net8 : 32'bx;
  assign _execUnit_op = __net1 ? __net3 : 6'bx;
  assign _execUnit_p_reset = p_reset;
  assign _execUnit_shamt = __net1 ? __net5 : 5'bx;
  assign a = __net1 ? p[95:64] : 32'bx;
  assign b = __net1 ? p[63:32] : 32'bx;
  assign funct = __net1 ? p[109:104] : 6'bx;
  assign i = __net1 ? count + 16'B1111111111111110 : 16'bx;
  assign mdata = __net1 ? p[31:0] : 32'bx;
  assign mdata_out = __net1 ? _execUnit_mdata_out : 32'bx;
  assign op = __net1 ? p[117:112] : 6'bx;
  assign p = __net1 ? pat[__net2] : 120'bx;
  assign result = __net1 ? _execUnit_result : 32'bx;
  assign shamt = __net1 ? p[100:96] : 5'bx;
  assign store_loc = __net1 ? _execUnit_store_loc : 4'bx;
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
    if (__net9)
      $display("%d: bye", count);
  always @(posedge m_clock)
    if (__net9)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d: %b %b %d %x %x %x - %x %x %b", i, op, funct, shamt, a, b, mdata, result, mdata_out, store_loc);
  always @(posedge m_clock)
    if (__net0)
      $readmemh("test_p32ExecUnit.pat", pat);
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
  test_p32ExecUnit test_p32ExecUnit_instance(.p_reset(p_reset),
                                             .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_p32ExecUnit.vcd");
    $dumpvars(0, test_p32ExecUnit_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_p32ExecUnit.v) */
