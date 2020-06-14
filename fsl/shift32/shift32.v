/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-08) build 20E313
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Mon May 18 15:09:33 JST 2020
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
  wire          __net11;
  wire          __net12;
  wire          __net13;
  wire          __net2;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire   [31:0] __net6;
  wire          __net7;
  wire   [31:0] __net8;
  wire          __net9;
  wire   [31:0] _shift_right_in;
  wire   [31:0] _shift_right_result_;
  wire          _shift_right_s01;
  wire    [1:0] _shift_right_s02_1_1010;
  wire    [3:0] _shift_right_s04_1_1011;
  wire    [7:0] _shift_right_s08_1_1012;
  wire   [15:0] _shift_right_s16_1_1013;
  wire   [31:0] _shift_right_t1_1_1014;
  wire   [31:0] _shift_right_t2_1_1015;
  wire   [31:0] _shift_right_t3_1_1016;
  wire   [31:0] _shift_right_t4_1_1017;
  wire   [31:0] _shift_right_t5_1_1018;
  wire          _sll_s01_0_1000;
  wire    [1:0] _sll_s02_0_1001;
  wire    [3:0] _sll_s04_0_1002;
  wire    [7:0] _sll_s08_0_1003;
  wire   [15:0] _sll_s16_0_1004;
  wire   [31:0] _sll_t1_0_1005;
  wire   [31:0] _sll_t2_0_1006;
  wire   [31:0] _sll_t3_0_1007;
  wire   [31:0] _sll_t4_0_1008;
  wire   [31:0] _sll_t5_0_1009;
  wire          shift_right;
  /* assigns */
  assign __net0 = sll ? shamt[0] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net1 = sll ? shamt[1] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net10 = shift_right ? shamt[1] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net11 = shift_right ? shamt[2] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net12 = shift_right ? shamt[3] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net13 = shift_right ? shamt[4] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net2 = sll ? shamt[2] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net3 = sll ? shamt[3] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net4 = sll ? shamt[4] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = srl ? 1'B0 : 1'bx;
  assign __net6 = srl ? in : 32'bx;
  assign __net7 = sra ? in[31] : 1'bx;
  assign __net8 = sra ? in : 32'bx;
  assign __net9 = shift_right ? shamt[0] == 1'B1 ? 1'b1 : 1'b0 : 1'bx;
  assign _shift_right_in = srl ? __net6 : sra ? __net8 : 32'bx;
  assign _shift_right_result_ = shift_right ? _shift_right_t5_1_1018 : 32'bx;
  assign _shift_right_s01 = srl ? __net5 : sra ? __net7 : 1'bx;
  assign _shift_right_s02_1_1010 = shift_right ? 
                                     {_shift_right_s01, _shift_right_s01} : 
                                     2'bx;
  assign _shift_right_s04_1_1011 = shift_right ? 
                                     {_shift_right_s02_1_1010, _shift_right_s02_1_1010} : 
                                     4'bx;
  assign _shift_right_s08_1_1012 = shift_right ? 
                                     {_shift_right_s04_1_1011, _shift_right_s04_1_1011} : 
                                     8'bx;
  assign _shift_right_s16_1_1013 = shift_right ? 
                                     {_shift_right_s08_1_1012, _shift_right_s08_1_1012} : 
                                     16'bx;
  assign _shift_right_t1_1_1014 = shift_right ? 
                                    shamt[0] == 1'B1 ? 
                                      {_shift_right_s01, _shift_right_in[31:1]} : 
                                      _shift_right_in : 
                                    32'bx;
  assign _shift_right_t2_1_1015 = shift_right ? 
                                    shamt[1] == 1'B1 ? 
                                      {_shift_right_s02_1_1010, _shift_right_t1_1_1014[31:2]} : 
                                      _shift_right_t1_1_1014 : 
                                    32'bx;
  assign _shift_right_t3_1_1016 = shift_right ? 
                                    shamt[2] == 1'B1 ? 
                                      {_shift_right_s04_1_1011, _shift_right_t2_1_1015[31:4]} : 
                                      _shift_right_t2_1_1015 : 
                                    32'bx;
  assign _shift_right_t4_1_1017 = shift_right ? 
                                    shamt[3] == 1'B1 ? 
                                      {_shift_right_s08_1_1012, _shift_right_t3_1_1016[31:8]} : 
                                      _shift_right_t3_1_1016 : 
                                    32'bx;
  assign _shift_right_t5_1_1018 = shift_right ? 
                                    shamt[4] == 1'B1 ? 
                                      {_shift_right_s16_1_1013, _shift_right_t4_1_1017[31:16]} : 
                                      _shift_right_t4_1_1017 : 
                                    32'bx;
  assign _sll_s01_0_1000 = sll ? 1'B0 : 1'bx;
  assign _sll_s02_0_1001 = sll ? 2'B00 : 2'bx;
  assign _sll_s04_0_1002 = sll ? 4'B0000 : 4'bx;
  assign _sll_s08_0_1003 = sll ? 8'B00000000 : 8'bx;
  assign _sll_s16_0_1004 = sll ? 16'B0000000000000000 : 16'bx;
  assign _sll_t1_0_1005 = sll ? 
                            shamt[0] == 1'B1 ? 
                              {in[30:0], 1'B0} : 
                              in : 
                            32'bx;
  assign _sll_t2_0_1006 = sll ? 
                            shamt[1] == 1'B1 ? 
                              {_sll_t1_0_1005[29:0], 2'B00} : 
                              _sll_t1_0_1005 : 
                            32'bx;
  assign _sll_t3_0_1007 = sll ? 
                            shamt[2] == 1'B1 ? 
                              {_sll_t2_0_1006[27:0], 4'B0000} : 
                              _sll_t2_0_1006 : 
                            32'bx;
  assign _sll_t4_0_1008 = sll ? 
                            shamt[3] == 1'B1 ? 
                              {_sll_t3_0_1007[23:0], 8'B00000000} : 
                              _sll_t3_0_1007 : 
                            32'bx;
  assign _sll_t5_0_1009 = sll ? 
                            shamt[4] == 1'B1 ? 
                              {_sll_t4_0_1008[15:0], 16'B0000000000000000} : 
                              _sll_t4_0_1008 : 
                            32'bx;
  assign out = sra ? 
                 _shift_right_result_ : 
                 srl ? 
                   _shift_right_result_ : 
                   sll ? 
                     _sll_t5_0_1009 : 
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
