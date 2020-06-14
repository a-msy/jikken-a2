/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Tue Jun 09 20:38:08 JST 2020
 * 
 * The source file of this code: 'regs32x8.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: regs32x8 */

module regs32x8(p_reset, m_clock, in, in_addr, a_addr, b_addr, a, b, read_a, read_b, write, clear);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] in;
  wire   [31:0] in;
  input   [2:0] in_addr;
  wire    [2:0] in_addr;
  input   [2:0] a_addr;
  wire    [2:0] a_addr;
  input   [2:0] b_addr;
  wire    [2:0] b_addr;
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
  /* reg decl */
  reg    [31:0] reg0;
  /* reg decl */
  reg    [31:0] reg1;
  /* reg decl */
  reg    [31:0] reg2;
  /* reg decl */
  reg    [31:0] reg3;
  /* reg decl */
  reg    [31:0] reg4;
  /* reg decl */
  reg    [31:0] reg5;
  /* reg decl */
  reg    [31:0] reg6;
  /* reg decl */
  reg    [31:0] reg7;
  /* local decls */
  wire    [2:0] __net0;
  wire   [31:0] __net1;
  wire    [2:0] __net10;
  wire   [31:0] __net11;
  wire          __net12;
  wire          __net13;
  wire          __net14;
  wire          __net15;
  wire          __net16;
  wire          __net17;
  wire          __net18;
  wire          __net19;
  wire          __net2;
  wire    [2:0] __net20;
  wire          __net21;
  wire          __net22;
  wire          __net23;
  wire          __net24;
  wire          __net25;
  wire          __net26;
  wire          __net27;
  wire          __net28;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire          __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  wire   [31:0] _read_a_v_0_1000;
  wire   [31:0] _read_b_v_8_1001;
  /* assigns */
  assign __net0 = read_a ? a_addr : 3'bx;
  assign __net1 = ~(read_a & __net8) & (~(read_a & __net7) & (~(read_a & __net6) & (~(read_a & __net5) & (~(read_a & __net4) & (~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net9))))))) ? 
                    reg7 : 
                    ~(read_a & __net7) & (~(read_a & __net6) & (~(read_a & __net5) & (~(read_a & __net4) & (~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net8)))))) ? 
                      reg6 : 
                      ~(read_a & __net6) & (~(read_a & __net5) & (~(read_a & __net4) & (~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net7))))) ? 
                        reg5 : 
                        ~(read_a & __net5) & (~(read_a & __net4) & (~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net6)))) ? 
                          reg4 : 
                          ~(read_a & __net4) & (~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net5))) ? 
                            reg3 : 
                            ~(read_a & __net3) & (~(read_a & __net2) & (read_a & __net4)) ? 
                              reg2 : 
                              ~(read_a & __net2) & (read_a & __net3) ? 
                                reg1 : 
                                read_a & __net2 ? 
                                  reg0 : 
                                  32'bx;
  assign __net10 = read_b ? b_addr : 3'bx;
  assign __net11 = ~(read_b & __net18) & (~(read_b & __net17) & (~(read_b & __net16) & (~(read_b & __net15) & (~(read_b & __net14) & (~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net19))))))) ? 
                     reg7 : 
                     ~(read_b & __net17) & (~(read_b & __net16) & (~(read_b & __net15) & (~(read_b & __net14) & (~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net18)))))) ? 
                       reg6 : 
                       ~(read_b & __net16) & (~(read_b & __net15) & (~(read_b & __net14) & (~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net17))))) ? 
                         reg5 : 
                         ~(read_b & __net15) & (~(read_b & __net14) & (~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net16)))) ? 
                           reg4 : 
                           ~(read_b & __net14) & (~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net15))) ? 
                             reg3 : 
                             ~(read_b & __net13) & (~(read_b & __net12) & (read_b & __net14)) ? 
                               reg2 : 
                               ~(read_b & __net12) & (read_b & __net13) ? 
                                 reg1 : 
                                 read_b & __net12 ? 
                                   reg0 : 
                                   32'bx;
  assign __net12 = read_b ? __net10 == 3'B000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net13 = read_b ? __net10 == 3'B001 ? 1'b1 : 1'b0 : 1'bx;
  assign __net14 = read_b ? __net10 == 3'B010 ? 1'b1 : 1'b0 : 1'bx;
  assign __net15 = read_b ? __net10 == 3'B011 ? 1'b1 : 1'b0 : 1'bx;
  assign __net16 = read_b ? __net10 == 3'B100 ? 1'b1 : 1'b0 : 1'bx;
  assign __net17 = read_b ? __net10 == 3'B101 ? 1'b1 : 1'b0 : 1'bx;
  assign __net18 = read_b ? __net10 == 3'B110 ? 1'b1 : 1'b0 : 1'bx;
  assign __net19 = read_b ? __net10 == 3'B111 ? 1'b1 : 1'b0 : 1'bx;
  assign __net2 = read_a ? __net0 == 3'B000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net20 = write ? in_addr : 3'bx;
  assign __net21 = write ? __net20 == 3'B000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net22 = write ? __net20 == 3'B001 ? 1'b1 : 1'b0 : 1'bx;
  assign __net23 = write ? __net20 == 3'B010 ? 1'b1 : 1'b0 : 1'bx;
  assign __net24 = write ? __net20 == 3'B011 ? 1'b1 : 1'b0 : 1'bx;
  assign __net25 = write ? __net20 == 3'B100 ? 1'b1 : 1'b0 : 1'bx;
  assign __net26 = write ? __net20 == 3'B101 ? 1'b1 : 1'b0 : 1'bx;
  assign __net27 = write ? __net20 == 3'B110 ? 1'b1 : 1'b0 : 1'bx;
  assign __net28 = write ? __net20 == 3'B111 ? 1'b1 : 1'b0 : 1'bx;
  assign __net3 = read_a ? __net0 == 3'B001 ? 1'b1 : 1'b0 : 1'bx;
  assign __net4 = read_a ? __net0 == 3'B010 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = read_a ? __net0 == 3'B011 ? 1'b1 : 1'b0 : 1'bx;
  assign __net6 = read_a ? __net0 == 3'B100 ? 1'b1 : 1'b0 : 1'bx;
  assign __net7 = read_a ? __net0 == 3'B101 ? 1'b1 : 1'b0 : 1'bx;
  assign __net8 = read_a ? __net0 == 3'B110 ? 1'b1 : 1'b0 : 1'bx;
  assign __net9 = read_a ? __net0 == 3'B111 ? 1'b1 : 1'b0 : 1'bx;
  assign _read_a_v_0_1000 = read_a ? __net1 : 32'bx;
  assign _read_b_v_8_1001 = read_b ? __net11 : 32'bx;
  assign a = read_a ? _read_a_v_0_1000 : 32'bx;
  assign b = read_b ? _read_b_v_8_1001 : 32'bx;
  /* defs */
  /* FunDef read_a */
  /*   parameter: a_addr: Bit(3) */
  /* FunDef read_b */
  /*   parameter: b_addr: Bit(3) */
  /* FunDef write */
  /*   parameter: in_addr: Bit(3) */
  /*   parameter: in: Bit(32) */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg3 <= 32'b0;
      else if (~(write & __net23) & (~(write & __net22) & (~(write & __net21) & (write & __net24))))
        reg3 <= in;
      else if (clear)
        reg3 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg6 <= 32'b0;
      else if (~(write & __net26) & (~(write & __net25) & (~(write & __net24) & (~(write & __net23) & (~(write & __net22) & (~(write & __net21) & (write & __net27)))))))
        reg6 <= in;
      else if (clear)
        reg6 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg2 <= 32'b0;
      else if (~(write & __net22) & (~(write & __net21) & (write & __net23)))
        reg2 <= in;
      else if (clear)
        reg2 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg5 <= 32'b0;
      else if (~(write & __net25) & (~(write & __net24) & (~(write & __net23) & (~(write & __net22) & (~(write & __net21) & (write & __net26))))))
        reg5 <= in;
      else if (clear)
        reg5 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg4 <= 32'b0;
      else if (~(write & __net24) & (~(write & __net23) & (~(write & __net22) & (~(write & __net21) & (write & __net25)))))
        reg4 <= in;
      else if (clear)
        reg4 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg7 <= 32'b0;
      else if (~(write & __net27) & (~(write & __net26) & (~(write & __net25) & (~(write & __net24) & (~(write & __net23) & (~(write & __net22) & (~(write & __net21) & (write & __net28))))))))
        reg7 <= in;
      else if (clear)
        reg7 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg1 <= 32'b0;
      else if (~(write & __net21) & (write & __net22))
        reg1 <= in;
      else if (clear)
        reg1 <= 32'B00000000000000000000000000000000;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        reg0 <= 32'b0;
      else if (write & __net21)
        reg0 <= in;
      else if (clear)
        reg0 <= 32'B00000000000000000000000000000000;
    end
endmodule
/* End of file (regs32x8.v) */
