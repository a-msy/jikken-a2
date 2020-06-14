/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu May 21 16:12:16 JST 2020
 * 
 * The source file of this code: 'shift32.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: shift32 */

module shift32(p_reset, m_clock, in, shamt, out, sll, srl, sra);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] in;
  wire   [31:0] in;
  input   [4:0] shamt;
  wire    [4:0] shamt;
  output [31:0] out;
  wire   [31:0] out;
  input         sll;
  wire          sll;
  input         srl;
  wire          srl;
  input         sra;
  wire          sra;
  /* for bundle-type input/output */
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire          __net10;
  wire   [31:0] __net11;
  wire          __net12;
  wire   [31:0] __net13;
  wire          __net2;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire          __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  wire   [31:0] _shift_right_in;
  wire   [31:0] _shift_right_result_;
  wire          _shift_right_s01;
  wire    [1:0] _shift_right_s02_1_1000;
  wire    [3:0] _shift_right_s04_1_1001;
  wire    [7:0] _shift_right_s08_1_1002;
  wire   [15:0] _shift_right_s16_1_1003;
  wire   [31:0] _shift_right_t1_1_1004;
  wire   [31:0] _shift_right_t2_1_1005;
  wire   [31:0] _shift_right_t3_1_1006;
  wire   [31:0] _shift_right_t4_1_1007;
  wire   [31:0] _shift_right_t5_1_1008;
  wire          _sll_s01_1_1009;
  wire    [1:0] _sll_s02_1_1010;
  wire    [3:0] _sll_s04_1_1011;
  wire    [7:0] _sll_s08_1_1012;
  wire   [15:0] _sll_s16_1_1013;
  wire   [31:0] _sll_t1_1_1014;
  wire   [31:0] _sll_t2_1_1015;
  wire   [31:0] _sll_t3_1_1016;
  wire   [31:0] _sll_t4_1_1017;
  wire   [31:0] _sll_t5_1_1018;
  wire          shift_right;
  /* assigns */
  assign __net0 = shift_right ? shamt[0] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net1 = shift_right ? shamt[1] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net10 = srl ? 1'B0 : 1'bx;
  assign __net11 = srl ? in : 32'bx;
  assign __net12 = sra ? in[31] : 1'bx;
  assign __net13 = sra ? in : 32'bx;
  assign __net2 = shift_right ? shamt[2] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net3 = shift_right ? shamt[3] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net4 = shift_right ? shamt[4] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = sll ? shamt[0] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net6 = sll ? shamt[1] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net7 = sll ? shamt[2] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net8 = sll ? shamt[3] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net9 = sll ? shamt[4] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign _shift_right_in = srl ? __net11 : sra ? __net13 : 32'bx;
  assign _shift_right_result_ = shift_right ? _shift_right_t5_1_1008 : 32'bx;
  assign _shift_right_s01 = srl ? __net10 : sra ? __net12 : 1'bx;
  assign _shift_right_s02_1_1000 = shift_right ? 
                                     {_shift_right_s01, _shift_right_s01} : 
                                     2'bx;
  assign _shift_right_s04_1_1001 = shift_right ? 
                                     {_shift_right_s02_1_1000, _shift_right_s02_1_1000} : 
                                     4'bx;
  assign _shift_right_s08_1_1002 = shift_right ? 
                                     {_shift_right_s04_1_1001, _shift_right_s04_1_1001} : 
                                     8'bx;
  assign _shift_right_s16_1_1003 = shift_right ? 
                                     {_shift_right_s08_1_1002, _shift_right_s08_1_1002} : 
                                     16'bx;
  assign _shift_right_t1_1_1004 = shift_right ? 
                                    shamt[0] == 1'B1 ? 
                                      {_shift_right_s01, _shift_right_in[31:1]} : 
                                      _shift_right_in : 
                                    32'bx;
  assign _shift_right_t2_1_1005 = shift_right ? 
                                    shamt[1] == 1'B1 ? 
                                      {_shift_right_s02_1_1000, _shift_right_t1_1_1004[31:2]} : 
                                      _shift_right_t1_1_1004 : 
                                    32'bx;
  assign _shift_right_t3_1_1006 = shift_right ? 
                                    shamt[2] == 1'B1 ? 
                                      {_shift_right_s04_1_1001, _shift_right_t2_1_1005[31:4]} : 
                                      _shift_right_t2_1_1005 : 
                                    32'bx;
  assign _shift_right_t4_1_1007 = shift_right ? 
                                    shamt[3] == 1'B1 ? 
                                      {_shift_right_s08_1_1002, _shift_right_t3_1_1006[31:8]} : 
                                      _shift_right_t3_1_1006 : 
                                    32'bx;
  assign _shift_right_t5_1_1008 = shift_right ? 
                                    shamt[4] == 1'B1 ? 
                                      {_shift_right_s16_1_1003, _shift_right_t4_1_1007[31:16]} : 
                                      _shift_right_t4_1_1007 : 
                                    32'bx;
  assign _sll_s01_1_1009 = sll ? 1'B0 : 1'bx;
  assign _sll_s02_1_1010 = sll ? 2'B00 : 2'bx;
  assign _sll_s04_1_1011 = sll ? 4'B0000 : 4'bx;
  assign _sll_s08_1_1012 = sll ? 8'B00000000 : 8'bx;
  assign _sll_s16_1_1013 = sll ? 16'B0000000000000000 : 16'bx;
  assign _sll_t1_1_1014 = sll ? 
                            shamt[0] == 1'B1 ? 
                              {in[30:0], 1'B0} : 
                              in : 
                            32'bx;
  assign _sll_t2_1_1015 = sll ? 
                            shamt[1] == 1'B1 ? 
                              {_sll_t1_1_1014[29:0], 2'B00} : 
                              _sll_t1_1_1014 : 
                            32'bx;
  assign _sll_t3_1_1016 = sll ? 
                            shamt[2] == 1'B1 ? 
                              {_sll_t2_1_1015[27:0], 4'B0000} : 
                              _sll_t2_1_1015 : 
                            32'bx;
  assign _sll_t4_1_1017 = sll ? 
                            shamt[3] == 1'B1 ? 
                              {_sll_t3_1_1016[23:0], 8'B00000000} : 
                              _sll_t3_1_1016 : 
                            32'bx;
  assign _sll_t5_1_1018 = sll ? 
                            shamt[4] == 1'B1 ? 
                              {_sll_t4_1_1017[15:0], 16'B0000000000000000} : 
                              _sll_t4_1_1017 : 
                            32'bx;
  assign out = sra ? 
                 _shift_right_result_ : 
                 srl ? 
                   _shift_right_result_ : 
                   sll ? 
                     _sll_t5_1_1018 : 
                     32'bx;
  /* invokes */
  /* private function */
  assign shift_right = srl | sra;
  /* defs */
  /* FunDef sll */
  /*   parameter: in: Bit(32) */
  /*   parameter: shamt: Bit(5) */
  /* FunDef srl */
  /*   parameter: in: Bit(32) */
  /*   parameter: shamt: Bit(5) */
  /* FunDef sra */
  /*   parameter: in: Bit(32) */
  /*   parameter: shamt: Bit(5) */
endmodule
/* End of file (shift32.v) */
