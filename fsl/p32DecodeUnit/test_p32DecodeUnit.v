/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu May 21 16:18:35 JST 2020
 * 
 * The source file of this code: 'test_p32DecodeUnit.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_p32DecodeUnit */

module test_p32DecodeUnit(p_reset, m_clock);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  /* for bundle-type input/output */
  /* decls */
  /* reg decl */
  reg    [15:0] count;
  /* ModuleInstance: decodeUnit: ___no_package___.p32DecodeUnit */
  wire          _decodeUnit_p_reset;
  wire          _decodeUnit_m_clock;
  wire   [31:0] _decodeUnit_a_out;
  wire    [4:0] _decodeUnit_shamt_out;
  wire   [31:0] _decodeUnit_pc_out;
  wire   [31:0] _decodeUnit_epc_out;
  wire          _decodeUnit_set_epc;
  wire          _decodeUnit_update_pc;
  wire   [31:0] _decodeUnit_a_data;
  wire   [31:0] _decodeUnit_b_out;
  wire          _decodeUnit_undefined_inst;
  wire   [31:0] _decodeUnit_mdr_out;
  wire    [4:0] _decodeUnit_dest_out;
  wire   [31:0] _decodeUnit_inst;
  wire   [31:0] _decodeUnit_b_data;
  wire          _decodeUnit_decode;
  wire          _decodeUnit_update_mdr;
  wire   [31:0] _decodeUnit_pc;
  wire    [3:0] _decodeUnit_cause_out;
  wire          _decodeUnit_exception;
  wire          _decodeUnit_set_cause;
  wire    [5:0] _decodeUnit_funct_out;
  p32DecodeUnit decodeUnit(.p_reset(_decodeUnit_p_reset),
                           .m_clock(_decodeUnit_m_clock),
                           .a_out(_decodeUnit_a_out),
                           .shamt_out(_decodeUnit_shamt_out),
                           .pc_out(_decodeUnit_pc_out),
                           .epc_out(_decodeUnit_epc_out),
                           .set_epc(_decodeUnit_set_epc),
                           .update_pc(_decodeUnit_update_pc),
                           .a_data(_decodeUnit_a_data),
                           .b_out(_decodeUnit_b_out),
                           .undefined_inst(_decodeUnit_undefined_inst),
                           .mdr_out(_decodeUnit_mdr_out),
                           .dest_out(_decodeUnit_dest_out),
                           .inst(_decodeUnit_inst),
                           .b_data(_decodeUnit_b_data),
                           .decode(_decodeUnit_decode),
                           .update_mdr(_decodeUnit_update_mdr),
                           .pc(_decodeUnit_pc),
                           .cause_out(_decodeUnit_cause_out),
                           .exception(_decodeUnit_exception),
                           .set_cause(_decodeUnit_set_cause),
                           .funct_out(_decodeUnit_funct_out));
  /* MemDecl pat (BitType 128) size: IConst(1000,1000) */
  reg   [127:0] pat[0:999];
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire          __net10;
  wire          __net11;
  wire          __net12;
  wire          __net13;
  wire          __net14;
  wire          __net15;
  wire          __net16;
  wire          __net17;
  wire          __net18;
  wire          __net19;
  wire   [15:0] __net2;
  wire   [31:0] __net3;
  wire   [31:0] __net4;
  wire   [31:0] __net5;
  wire   [31:0] __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  wire   [31:0] a_data;
  wire   [31:0] a_out;
  wire   [31:0] b_data;
  wire   [31:0] b_out;
  wire    [3:0] cause_out;
  wire    [4:0] dest_out;
  wire   [31:0] epc_out;
  wire          exception1;
  wire    [5:0] funct_out;
  wire   [15:0] i;
  wire   [31:0] inst;
  wire   [31:0] mdr_out;
  wire  [127:0] p;
  wire   [31:0] pc_in;
  wire   [31:0] pc_out;
  wire          set_cause1;
  wire          set_epc1;
  wire    [4:0] shamt_out;
  wire          undefined_inst1;
  wire          update_mdr1;
  wire          update_pc1;
  /* reg decls (system) */
  reg    [63:0] _time;
  /* assigns */
  assign __net0 = _time == 64'b10 ? 1'b1 : 1'b0;
  assign __net1 = 2 <= count && count <= 1001 ? 1'b1 : 1'b0;
  assign __net10 = __net1 ? _decodeUnit_update_mdr ? 1'b1 : 1'b0 : 1'bx;
  assign __net11 = __net1 ? _decodeUnit_set_epc : 1'bx;
  assign __net12 = __net1 ? _decodeUnit_set_epc ? 1'b1 : 1'b0 : 1'bx;
  assign __net13 = __net1 ? _decodeUnit_set_cause : 1'bx;
  assign __net14 = __net1 ? _decodeUnit_set_cause ? 1'b1 : 1'b0 : 1'bx;
  assign __net15 = __net1 ? _decodeUnit_exception : 1'bx;
  assign __net16 = __net1 ? _decodeUnit_exception ? 1'b1 : 1'b0 : 1'bx;
  assign __net17 = __net1 ? _decodeUnit_undefined_inst : 1'bx;
  assign __net18 = __net1 ? _decodeUnit_undefined_inst ? 1'b1 : 1'b0 : 1'bx;
  assign __net19 = count == 1001 ? 1'b1 : 1'b0;
  assign __net2 = __net1 ? i : 16'bx;
  assign __net3 = __net1 ? inst : 32'bx;
  assign __net4 = __net1 ? a_data : 32'bx;
  assign __net5 = __net1 ? b_data : 32'bx;
  assign __net6 = __net1 ? pc_in : 32'bx;
  assign __net7 = __net1 ? _decodeUnit_update_pc : 1'bx;
  assign __net8 = __net1 ? _decodeUnit_update_pc ? 1'b1 : 1'b0 : 1'bx;
  assign __net9 = __net1 ? _decodeUnit_update_mdr : 1'bx;
  assign _decodeUnit_a_data = __net1 ? __net4 : 32'bx;
  assign _decodeUnit_b_data = __net1 ? __net5 : 32'bx;
  assign _decodeUnit_decode = __net1 ? 1'b1 : 1'b0;
  assign _decodeUnit_inst = __net1 ? __net3 : 32'bx;
  assign _decodeUnit_m_clock = m_clock;
  assign _decodeUnit_p_reset = p_reset;
  assign _decodeUnit_pc = __net1 ? __net6 : 32'bx;
  assign a_data = __net1 ? p[95:64] : 32'bx;
  assign a_out = __net1 ? _decodeUnit_a_out : 32'bx;
  assign b_data = __net1 ? p[63:32] : 32'bx;
  assign b_out = __net1 ? _decodeUnit_b_out : 32'bx;
  assign cause_out = __net1 ? _decodeUnit_cause_out : 4'bx;
  assign dest_out = __net1 ? _decodeUnit_dest_out : 5'bx;
  assign epc_out = __net1 ? _decodeUnit_epc_out : 32'bx;
  assign exception1 = __net1 ? _decodeUnit_exception ? 1'B1 : 1'B0 : 1'bx;
  assign funct_out = __net1 ? _decodeUnit_funct_out : 6'bx;
  assign i = __net1 ? count + 16'B1111111111111110 : 16'bx;
  assign inst = __net1 ? p[127:96] : 32'bx;
  assign mdr_out = __net1 ? _decodeUnit_mdr_out : 32'bx;
  assign p = __net1 ? pat[__net2] : 128'bx;
  assign pc_in = __net1 ? p[31:0] : 32'bx;
  assign pc_out = __net1 ? _decodeUnit_pc_out : 32'bx;
  assign set_cause1 = __net1 ? _decodeUnit_set_cause ? 1'B1 : 1'B0 : 1'bx;
  assign set_epc1 = __net1 ? _decodeUnit_set_epc ? 1'B1 : 1'B0 : 1'bx;
  assign shamt_out = __net1 ? _decodeUnit_shamt_out : 5'bx;
  assign undefined_inst1 = __net1 ? 
                             _decodeUnit_undefined_inst ? 
                               1'B1 : 
                               1'B0 : 
                             1'bx;
  assign update_mdr1 = __net1 ? _decodeUnit_update_mdr ? 1'B1 : 1'B0 : 1'bx;
  assign update_pc1 = __net1 ? _decodeUnit_update_pc ? 1'B1 : 1'B0 : 1'bx;
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
    if (__net19)
      $display("%d: bye", count);
  always @(posedge m_clock)
    if (__net19)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d: %x %x %x %x - %x %x %d %d %x  %b:%x %b:%x %b:%x %b:%x %b %b", i, inst, a_data, b_data, pc_in, a_out, b_out, dest_out, shamt_out, funct_out, update_pc1, pc_out, update_mdr1, mdr_out, set_epc1, epc_out, set_cause1, cause_out, exception1, undefined_inst1);
  always @(posedge m_clock)
    if (__net0)
      $readmemh("test_p32DecodeUnit.pat", pat);
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
  test_p32DecodeUnit test_p32DecodeUnit_instance(.p_reset(p_reset),
                                                 .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_p32DecodeUnit.vcd");
    $dumpvars(0, test_p32DecodeUnit_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_p32DecodeUnit.v) */
