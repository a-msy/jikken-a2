/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Mon May 18 15:42:50 JST 2020
 * 
 * The source file of this code: 'regs32x32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: regs32x32 */

module regs32x32(p_reset, m_clock, in, in_addr, a_addr, b_addr, a, b, read_a, read_b, write, clear);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] in;
  wire   [31:0] in;
  input   [4:0] in_addr;
  wire    [4:0] in_addr;
  input   [4:0] a_addr;
  wire    [4:0] a_addr;
  input   [4:0] b_addr;
  wire    [4:0] b_addr;
  output [31:0] a;
  wire   [31:0] a;
  output [31:0] b;
  wire   [31:0] b;
  input         read_a;
  wire          read_a;
  input         read_b;
  wire          read_b;
  input         write;
  wire          write;
  input         clear;
  wire          clear;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: reg0: ___no_package___.regs32x8 */
  wire          _reg0_p_reset;
  wire          _reg0_m_clock;
  wire    [2:0] _reg0_a_addr;
  wire   [31:0] _reg0_b;
  wire    [2:0] _reg0_in_addr;
  wire    [2:0] _reg0_b_addr;
  wire          _reg0_read_a;
  wire          _reg0_clear;
  wire   [31:0] _reg0_a;
  wire   [31:0] _reg0_in;
  wire          _reg0_write;
  wire          _reg0_read_b;
  regs32x8 reg0(.p_reset(_reg0_p_reset),
                .m_clock(_reg0_m_clock),
                .a_addr(_reg0_a_addr),
                .b(_reg0_b),
                .in_addr(_reg0_in_addr),
                .b_addr(_reg0_b_addr),
                .read_a(_reg0_read_a),
                .clear(_reg0_clear),
                .a(_reg0_a),
                .in(_reg0_in),
                .write(_reg0_write),
                .read_b(_reg0_read_b));
  /* ModuleInstance: reg1: ___no_package___.regs32x8 */
  wire          _reg1_p_reset;
  wire          _reg1_m_clock;
  wire    [2:0] _reg1_a_addr;
  wire   [31:0] _reg1_b;
  wire    [2:0] _reg1_in_addr;
  wire    [2:0] _reg1_b_addr;
  wire          _reg1_read_a;
  wire          _reg1_clear;
  wire   [31:0] _reg1_a;
  wire   [31:0] _reg1_in;
  wire          _reg1_write;
  wire          _reg1_read_b;
  regs32x8 reg1(.p_reset(_reg1_p_reset),
                .m_clock(_reg1_m_clock),
                .a_addr(_reg1_a_addr),
                .b(_reg1_b),
                .in_addr(_reg1_in_addr),
                .b_addr(_reg1_b_addr),
                .read_a(_reg1_read_a),
                .clear(_reg1_clear),
                .a(_reg1_a),
                .in(_reg1_in),
                .write(_reg1_write),
                .read_b(_reg1_read_b));
  /* ModuleInstance: reg2: ___no_package___.regs32x8 */
  wire          _reg2_p_reset;
  wire          _reg2_m_clock;
  wire    [2:0] _reg2_a_addr;
  wire   [31:0] _reg2_b;
  wire    [2:0] _reg2_in_addr;
  wire    [2:0] _reg2_b_addr;
  wire          _reg2_read_a;
  wire          _reg2_clear;
  wire   [31:0] _reg2_a;
  wire   [31:0] _reg2_in;
  wire          _reg2_write;
  wire          _reg2_read_b;
  regs32x8 reg2(.p_reset(_reg2_p_reset),
                .m_clock(_reg2_m_clock),
                .a_addr(_reg2_a_addr),
                .b(_reg2_b),
                .in_addr(_reg2_in_addr),
                .b_addr(_reg2_b_addr),
                .read_a(_reg2_read_a),
                .clear(_reg2_clear),
                .a(_reg2_a),
                .in(_reg2_in),
                .write(_reg2_write),
                .read_b(_reg2_read_b));
  /* ModuleInstance: reg3: ___no_package___.regs32x8 */
  wire          _reg3_p_reset;
  wire          _reg3_m_clock;
  wire    [2:0] _reg3_a_addr;
  wire   [31:0] _reg3_b;
  wire    [2:0] _reg3_in_addr;
  wire    [2:0] _reg3_b_addr;
  wire          _reg3_read_a;
  wire          _reg3_clear;
  wire   [31:0] _reg3_a;
  wire   [31:0] _reg3_in;
  wire          _reg3_write;
  wire          _reg3_read_b;
  regs32x8 reg3(.p_reset(_reg3_p_reset),
                .m_clock(_reg3_m_clock),
                .a_addr(_reg3_a_addr),
                .b(_reg3_b),
                .in_addr(_reg3_in_addr),
                .b_addr(_reg3_b_addr),
                .read_a(_reg3_read_a),
                .clear(_reg3_clear),
                .a(_reg3_a),
                .in(_reg3_in),
                .write(_reg3_write),
                .read_b(_reg3_read_b));
  /* local decls */
  wire          __net0;
  wire    [1:0] __net1;
  wire          __net10;
  wire          __net11;
  wire    [1:0] __net12;
  wire          __net13;
  wire    [2:0] __net14;
  wire   [31:0] __net15;
  wire          __net16;
  wire    [2:0] __net17;
  wire   [31:0] __net18;
  wire          __net19;
  wire          __net2;
  wire    [2:0] __net20;
  wire   [31:0] __net21;
  wire          __net22;
  wire    [2:0] __net23;
  wire   [31:0] __net24;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire          __net6;
  wire    [1:0] __net7;
  wire          __net8;
  wire          __net9;
  wire    [1:0] _read_a_addr_0_1000;
  wire    [1:0] _read_b_addr_4_1001;
  wire    [1:0] _write_addr_8_1002;
  /* assigns */
  assign __net0 = read_a ? a_addr == 5'B00000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net1 = read_a & ~__net0 ? _read_a_addr_0_1000 : 2'bx;
  assign __net10 = read_b & ~__net6 ? __net7 == 2'B10 ? 1'b1 : 1'b0 : 1'bx;
  assign __net11 = read_b & ~__net6 ? __net7 == 2'B11 ? 1'b1 : 1'b0 : 1'bx;
  assign __net12 = write ? _write_addr_8_1002 : 2'bx;
  assign __net13 = write ? __net12 == 2'B00 ? 1'b1 : 1'b0 : 1'bx;
  assign __net14 = write & __net13 ? in_addr[4:2] : 3'bx;
  assign __net15 = write & __net13 ? in : 32'bx;
  assign __net16 = write ? __net12 == 2'B01 ? 1'b1 : 1'b0 : 1'bx;
  assign __net17 = ~(write & __net13) & (write & __net16) ? 
                     in_addr[4:2] : 
                     3'bx;
  assign __net18 = ~(write & __net13) & (write & __net16) ? in : 32'bx;
  assign __net19 = write ? __net12 == 2'B10 ? 1'b1 : 1'b0 : 1'bx;
  assign __net2 = read_a & ~__net0 ? __net1 == 2'B00 ? 1'b1 : 1'b0 : 1'bx;
  assign __net20 = ~(write & __net16) & (~(write & __net13) & (write & __net19)) ? 
                     in_addr[4:2] : 
                     3'bx;
  assign __net21 = ~(write & __net16) & (~(write & __net13) & (write & __net19)) ? 
                     in : 
                     32'bx;
  assign __net22 = write ? __net12 == 2'B11 ? 1'b1 : 1'b0 : 1'bx;
  assign __net23 = ~(write & __net19) & (~(write & __net16) & (~(write & __net13) & (write & __net22))) ? 
                     in_addr[4:2] : 
                     3'bx;
  assign __net24 = ~(write & __net19) & (~(write & __net16) & (~(write & __net13) & (write & __net22))) ? 
                     in : 
                     32'bx;
  assign __net3 = read_a & ~__net0 ? __net1 == 2'B01 ? 1'b1 : 1'b0 : 1'bx;
  assign __net4 = read_a & ~__net0 ? __net1 == 2'B10 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = read_a & ~__net0 ? __net1 == 2'B11 ? 1'b1 : 1'b0 : 1'bx;
  assign __net6 = read_b ? b_addr == 5'B00000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net7 = read_b & ~__net6 ? _read_b_addr_4_1001 : 2'bx;
  assign __net8 = read_b & ~__net6 ? __net7 == 2'B00 ? 1'b1 : 1'b0 : 1'bx;
  assign __net9 = read_b & ~__net6 ? __net7 == 2'B01 ? 1'b1 : 1'b0 : 1'bx;
  assign _read_a_addr_0_1000 = read_a ? a_addr[1:0] : 2'bx;
  assign _read_b_addr_4_1001 = read_b ? b_addr[1:0] : 2'bx;
  assign _reg0_a_addr = read_a & ~__net0 & __net2 ? a_addr[4:2] : 3'bx;
  assign _reg0_b_addr = read_b & ~__net6 & __net8 ? b_addr[4:2] : 3'bx;
  assign _reg0_clear = clear ? 1'b1 : 1'b0;
  assign _reg0_in = write & __net13 ? __net15 : 32'bx;
  assign _reg0_in_addr = write & __net13 ? __net14 : 3'bx;
  assign _reg0_m_clock = m_clock;
  assign _reg0_p_reset = p_reset;
  assign _reg0_read_a = read_a & ~__net0 & __net2 ? 1'b1 : 1'b0;
  assign _reg0_read_b = read_b & ~__net6 & __net8 ? 1'b1 : 1'b0;
  assign _reg0_write = write & __net13 ? 1'b1 : 1'b0;
  assign _reg1_a_addr = ~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net3) ? 
                          a_addr[4:2] : 
                          3'bx;
  assign _reg1_b_addr = ~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net9) ? 
                          b_addr[4:2] : 
                          3'bx;
  assign _reg1_clear = clear ? 1'b1 : 1'b0;
  assign _reg1_in = ~(write & __net13) & (write & __net16) ? __net18 : 32'bx;
  assign _reg1_in_addr = ~(write & __net13) & (write & __net16) ? 
                           __net17 : 
                           3'bx;
  assign _reg1_m_clock = m_clock;
  assign _reg1_p_reset = p_reset;
  assign _reg1_read_a = ~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net3) ? 
                          1'b1 : 
                          1'b0;
  assign _reg1_read_b = ~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net9) ? 
                          1'b1 : 
                          1'b0;
  assign _reg1_write = ~(write & __net13) & (write & __net16) ? 1'b1 : 1'b0;
  assign _reg2_a_addr = ~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net4)) ? 
                          a_addr[4:2] : 
                          3'bx;
  assign _reg2_b_addr = ~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net10)) ? 
                          b_addr[4:2] : 
                          3'bx;
  assign _reg2_clear = clear ? 1'b1 : 1'b0;
  assign _reg2_in = ~(write & __net16) & (~(write & __net13) & (write & __net19)) ? 
                      __net21 : 
                      32'bx;
  assign _reg2_in_addr = ~(write & __net16) & (~(write & __net13) & (write & __net19)) ? 
                           __net20 : 
                           3'bx;
  assign _reg2_m_clock = m_clock;
  assign _reg2_p_reset = p_reset;
  assign _reg2_read_a = ~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net4)) ? 
                          1'b1 : 
                          1'b0;
  assign _reg2_read_b = ~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net10)) ? 
                          1'b1 : 
                          1'b0;
  assign _reg2_write = ~(write & __net16) & (~(write & __net13) & (write & __net19)) ? 
                         1'b1 : 
                         1'b0;
  assign _reg3_a_addr = ~(read_a & ~__net0 & __net4) & (~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net5))) ? 
                          a_addr[4:2] : 
                          3'bx;
  assign _reg3_b_addr = ~(read_b & ~__net6 & __net10) & (~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net11))) ? 
                          b_addr[4:2] : 
                          3'bx;
  assign _reg3_clear = clear ? 1'b1 : 1'b0;
  assign _reg3_in = ~(write & __net19) & (~(write & __net16) & (~(write & __net13) & (write & __net22))) ? 
                      __net24 : 
                      32'bx;
  assign _reg3_in_addr = ~(write & __net19) & (~(write & __net16) & (~(write & __net13) & (write & __net22))) ? 
                           __net23 : 
                           3'bx;
  assign _reg3_m_clock = m_clock;
  assign _reg3_p_reset = p_reset;
  assign _reg3_read_a = ~(read_a & ~__net0 & __net4) & (~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net5))) ? 
                          1'b1 : 
                          1'b0;
  assign _reg3_read_b = ~(read_b & ~__net6 & __net10) & (~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net11))) ? 
                          1'b1 : 
                          1'b0;
  assign _reg3_write = ~(write & __net19) & (~(write & __net16) & (~(write & __net13) & (write & __net22))) ? 
                         1'b1 : 
                         1'b0;
  assign _write_addr_8_1002 = write ? in_addr[1:0] : 2'bx;
  assign a = ~(read_a & ~__net0 & __net4) & (~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net5))) ? 
               _reg3_a : 
               ~(read_a & ~__net0 & __net3) & (~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net4)) ? 
                 _reg2_a : 
                 ~(read_a & ~__net0 & __net2) & (read_a & ~__net0 & __net3) ? 
                   _reg1_a : 
                   read_a & ~__net0 & __net2 ? 
                     _reg0_a : 
                     read_a & __net0 ? 
                       32'B00000000000000000000000000000000 : 
                       32'bx;
  assign b = ~(read_b & ~__net6 & __net10) & (~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net11))) ? 
               _reg3_b : 
               ~(read_b & ~__net6 & __net9) & (~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net10)) ? 
                 _reg2_b : 
                 ~(read_b & ~__net6 & __net8) & (read_b & ~__net6 & __net9) ? 
                   _reg1_b : 
                   read_b & ~__net6 & __net8 ? 
                     _reg0_b : 
                     read_b & __net6 ? 
                       32'B00000000000000000000000000000000 : 
                       32'bx;
  /* defs */
  /* FunDef read_a */
  /*   parameter: a_addr: Bit(5) */
  /* FunDef read_b */
  /*   parameter: b_addr: Bit(5) */
  /* FunDef write */
  /*   parameter: in_addr: Bit(5) */
  /*   parameter: in: Bit(32) */
endmodule
/* End of file (regs32x32.v) */
