/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Mon Jun 08 23:18:45 JST 2020
 * 
 * The source file of this code: 'test_mult32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_mult32 */

module test_mult32(p_reset, m_clock);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  /* for bundle-type input/output */
  /* param decls */
  parameter _stage_test_state_st3 = 0;
  parameter _stage_test_state_st2 = 1;
  parameter _stage_test_state_st1 = 2;
  parameter _stage_test_state_st0 = 3;
  /* decls */
  /* ModuleInstance: m0: ___no_package___.mult32 */
  wire          _m0_p_reset;
  wire          _m0_m_clock;
  wire   [31:0] _m0_b;
  wire          _m0_en;
  wire   [31:0] _m0_a;
  wire          _m0_mult;
  wire   [63:0] _m0_out;
  mult32 m0(.p_reset(_m0_p_reset),
            .m_clock(_m0_m_clock),
            .b(_m0_b),
            .en(_m0_en),
            .a(_m0_a),
            .mult(_m0_mult),
            .out(_m0_out));
  /* reg decl */
  reg    [15:0] count;
  /* reg decl */
  reg    [11:0] n_ok;
  /* reg decl */
  reg    [11:0] n_fail;
  /* MemDecl pat (BitType 128) size: IConst(2000,2000) */
  reg   [127:0] pat[0:1999];
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire          __net10;
  wire          __net11;
  wire   [11:0] __net12;
  wire   [31:0] __net13;
  wire   [31:0] __net14;
  wire   [63:0] __net15;
  wire   [63:0] __net16;
  wire          __net17;
  wire          __net18;
  wire          __net19;
  wire          __net2;
  wire   [11:0] __net20;
  wire   [31:0] __net21;
  wire   [31:0] __net22;
  wire   [63:0] __net23;
  wire   [63:0] __net24;
  wire          __net25;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire          __net6;
  wire   [11:0] __net7;
  wire   [31:0] __net8;
  wire   [31:0] __net9;
  wire          __stage_test_reset;
  wire          __stage_test_set;
  wire   [31:0] _check_a;
  wire   [31:0] _check_b;
  wire   [11:0] _check_i;
  wire   [63:0] _check_o;
  wire   [63:0] _check_out;
  wire   [31:0] _test_st2_4_a;
  wire   [31:0] _test_st2_4_b;
  wire   [63:0] _test_st2_4_o;
  wire  [127:0] _test_st2_4_p;
  wire          check;
  wire          stop;
  /* reg decls */
  reg           _stage_test_reg;
  reg     [1:0] _stage_test_state_reg;
  /* reg decls (system) */
  reg    [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = count == 1 ? 1'b1 : 1'b0;
  assign __net10 = _stage_test_reg & __net6 ? _m0_en : 1'bx;
  assign __net11 = _stage_test_reg & __net6 ? _m0_en ? 1'b1 : 1'b0 : 1'bx;
  assign __net12 = _stage_test_reg & __net6 & __net11 ? 
                     _stage_test_reg_ii : 
                     12'bx;
  assign __net13 = _stage_test_reg & __net6 & __net11 ? 
                     _test_st2_4_a : 
                     32'bx;
  assign __net14 = _stage_test_reg & __net6 & __net11 ? 
                     _test_st2_4_b : 
                     32'bx;
  assign __net15 = _stage_test_reg & __net6 & __net11 ? _m0_out : 64'bx;
  assign __net16 = _stage_test_reg & __net6 & __net11 ? 
                     _test_st2_4_o : 
                     64'bx;
  assign __net18 = _stage_test_reg & __net17 ? _m0_en : 1'bx;
  assign __net19 = _stage_test_reg & __net17 ? _m0_en ? 1'b1 : 1'b0 : 1'bx;
  assign __net2 = count == 10000 ? 1'b1 : 1'b0;
  assign __net20 = _stage_test_reg & __net17 & __net19 ? 
                     _stage_test_reg_ii : 
                     12'bx;
  assign __net21 = _stage_test_reg & __net17 & __net19 ? 
                     _stage_test_reg_aa : 
                     32'bx;
  assign __net22 = _stage_test_reg & __net17 & __net19 ? 
                     _stage_test_reg_bb : 
                     32'bx;
  assign __net23 = _stage_test_reg & __net17 & __net19 ? _m0_out : 64'bx;
  assign __net24 = _stage_test_reg & __net17 & __net19 ? 
                     _stage_test_reg_oo : 
                     64'bx;
  assign __net25 = check ? _check_out == _check_o ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = _stage_test_reg & __net4 ? 
                    _stage_test_reg_ii < 2000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net7 = _stage_test_reg & __net6 ? _stage_test_reg_ii : 12'bx;
  assign __net8 = _stage_test_reg & __net6 ? _test_st2_4_a : 32'bx;
  assign __net9 = _stage_test_reg & __net6 ? _test_st2_4_b : 32'bx;
  assign __stage_test_reset = _stage_test_reg & __net4 & ~__net5 ? 
                                1'b1 : 
                                1'b0;
  assign __stage_test_set = __net1 ? 1'b1 : 1'b0;
  assign _check_a = _stage_test_reg & __net6 & __net11 ? 
                      __net13 : 
                      _stage_test_reg & __net17 & __net19 ? 
                        __net21 : 
                        32'bx;
  assign _check_b = _stage_test_reg & __net6 & __net11 ? 
                      __net14 : 
                      _stage_test_reg & __net17 & __net19 ? 
                        __net22 : 
                        32'bx;
  assign _check_i = _stage_test_reg & __net6 & __net11 ? 
                      __net12 : 
                      _stage_test_reg & __net17 & __net19 ? 
                        __net20 : 
                        12'bx;
  assign _check_o = _stage_test_reg & __net6 & __net11 ? 
                      __net16 : 
                      _stage_test_reg & __net17 & __net19 ? 
                        __net24 : 
                        64'bx;
  assign _check_out = _stage_test_reg & __net6 & __net11 ? 
                        __net15 : 
                        _stage_test_reg & __net17 & __net19 ? 
                          __net23 : 
                          64'bx;
  assign _m0_a = _stage_test_reg & __net6 ? __net8 : 32'bx;
  assign _m0_b = _stage_test_reg & __net6 ? __net9 : 32'bx;
  assign _m0_m_clock = m_clock;
  assign _m0_mult = _stage_test_reg & __net6 ? 1'b1 : 1'b0;
  assign _m0_p_reset = p_reset;
  assign _test_st2_4_a = _stage_test_reg & __net6 ? 
                           _test_st2_4_p[127:96] : 
                           32'bx;
  assign _test_st2_4_b = _stage_test_reg & __net6 ? 
                           _test_st2_4_p[95:64] : 
                           32'bx;
  assign _test_st2_4_o = _stage_test_reg & __net6 ? 
                           _test_st2_4_p[63:0] : 
                           64'bx;
  assign _test_st2_4_p = _stage_test_reg & __net6 ? pat[__net7] : 128'bx;
  /* invokes */
  /* private function */
  assign stop = __net2 | _stage_test_reg & __net4 & ~__net5;
  assign check = _stage_test_reg & __net6 & __net11 | _stage_test_reg & __net17 & __net19;
  /* defs */
  /* initial */
  /* always */
  /* FunDef (private): stop */
  /* BlockExpr */
  /* SystemTaskFun: '$display' */
  /* SystemTaskFun: '$finish' */
  /* StageDef: test */
  /* StageBody */
  /* reg decl */
  reg    [11:0] _stage_test_reg_ii;
  /* reg decl */
  reg    [31:0] _stage_test_reg_aa;
  /* reg decl */
  reg    [31:0] _stage_test_reg_bb;
  /* reg decl */
  reg    [63:0] _stage_test_reg_oo;
  /* StateDef: st0:  */
  assign __net3 = _stage_test_state_reg == _stage_test_state_st0;
  /* par */
  /* goto: st2 */
  /* StateDef: st1:  */
  assign __net4 = _stage_test_state_reg == _stage_test_state_st1;
  /* StateDef: st2:  */
  assign __net6 = _stage_test_state_reg == _stage_test_state_st2;
  /* par */
  /* invoke: m0.mult */
  /* invoke */
  /* StateDef: st3:  */
  assign __net17 = _stage_test_state_reg == _stage_test_state_st3;
  /* stage reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_reg <= 1'b0;
      else if (__stage_test_set | __stage_test_reset)
        _stage_test_reg <= __stage_test_set;
    end
  /* stage params updates */
  /* stage: test: params:  */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_reg_oo <= 1'b0;
      else if (_stage_test_reg & __net6 & ~__net11)
        _stage_test_reg_oo <= _test_st2_4_o;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        count <= 16'b0;
      else
        count <= count + 16'B0000000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        n_fail <= 12'b0;
      else if (__net0)
        n_fail <= 0;
      else if (check & ~__net25)
        n_fail <= n_fail + 12'B000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_reg_bb <= 1'b0;
      else if (_stage_test_reg & __net6 & ~__net11)
        _stage_test_reg_bb <= _test_st2_4_b;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_reg_ii <= 1'b0;
      else if (_stage_test_reg & __net3)
        _stage_test_reg_ii <= 0;
      else if (_stage_test_reg & __net6 & __net11)
        _stage_test_reg_ii <= _stage_test_reg_ii + 12'B000000000001;
      else if (_stage_test_reg & __net17 & __net19)
        _stage_test_reg_ii <= _stage_test_reg_ii + 12'B000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        n_ok <= 12'b0;
      else if (__net0)
        n_ok <= 0;
      else if (check & __net25)
        n_ok <= n_ok + 12'B000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_reg_aa <= 1'b0;
      else if (_stage_test_reg & __net6 & ~__net11)
        _stage_test_reg_aa <= _test_st2_4_a;
    end
  /* reg updates (system) */
  always @(posedge m_clock)
    begin
      _time <= _time + 64'b1;
    end
  /* state reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_test_state_reg <= _stage_test_state_st0;
      else if (_stage_test_reg & __net3)
        _stage_test_state_reg <= _stage_test_state_st2;
      else if (_stage_test_reg & __net4 & __net5)
        _stage_test_state_reg <= _stage_test_state_st2;
      else if (_stage_test_reg & __net4 & ~__net5)
        _stage_test_state_reg <= _stage_test_state_st0;
      else if (_stage_test_reg & __net6 & __net11)
        _stage_test_state_reg <= _stage_test_state_st1;
      else if (_stage_test_reg & __net6 & ~__net11)
        _stage_test_state_reg <= _stage_test_state_st3;
      else if (_stage_test_reg & __net17 & __net19)
        _stage_test_state_reg <= _stage_test_state_st1;
    end
  /* always */
  always @(posedge m_clock)
    if (check & ~__net25)
      $display("%d %x %x - %x %x... fail", _check_i, _check_a, _check_b, _check_out, _check_o);
  always @(posedge m_clock)
    if (check & __net25)
      $display("%d %x %x - %x ... ok", _check_i, _check_a, _check_b, _check_out);
  always @(posedge m_clock)
    if (stop)
      $display("%d: bye.", count);
  always @(posedge m_clock)
    if (stop)
      $finish();
  always @(posedge m_clock)
    if (stop)
      $display("ok: %d, fail: %d", n_ok, n_fail);
  always @(posedge m_clock)
    if (__net0)
      $readmemb("test_mult32.pat", pat);
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
  test_mult32 test_mult32_instance(.p_reset(p_reset),
                                   .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_mult32.vcd");
    $dumpvars(0, test_mult32_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_mult32.v) */
