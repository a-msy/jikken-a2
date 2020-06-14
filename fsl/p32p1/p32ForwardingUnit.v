/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 17:20:04 JST 2020
 * 
 * The source file of this code: 'p32ForwardingUnit.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: p32ForwardingUnit */

module p32ForwardingUnit(p_reset, m_clock, addr1, in1, addr2, in2, ex_addr, ex_data, me_addr, me_data, wb_addr, wb_data, load_hazard, ex, me, wb, ex_load, set1, set2, set1_out, set2_out);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input   [4:0] addr1;
  wire    [4:0] addr1;
  input  [31:0] in1;
  wire   [31:0] in1;
  input   [4:0] addr2;
  wire    [4:0] addr2;
  input  [31:0] in2;
  wire   [31:0] in2;
  input   [4:0] ex_addr;
  wire    [4:0] ex_addr;
  input  [31:0] ex_data;
  wire   [31:0] ex_data;
  input   [4:0] me_addr;
  wire    [4:0] me_addr;
  input  [31:0] me_data;
  wire   [31:0] me_data;
  input   [4:0] wb_addr;
  wire    [4:0] wb_addr;
  input  [31:0] wb_data;
  wire   [31:0] wb_data;
  output        load_hazard;
  wire          load_hazard;
  input         ex;
  wire          ex;
  input         me;
  wire          me;
  input         wb;
  wire          wb;
  input         ex_load;
  wire          ex_load;
  input         set1;
  wire          set1;
  input         set2;
  wire          set2;
  output [31:0] set1_out;
  wire   [31:0] set1_out;
  output [31:0] set2_out;
  wire   [31:0] set2_out;
  /* for bundle-type input/output */
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire          __net10;
  wire          __net11;
  wire          __net12;
  wire          __net13;
  wire          __net14;
  wire          __net2;
  wire          __net3;
  wire          __net4;
  wire          __net5;
  wire          __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  wire    [4:0] _forwarding_addr;
  wire          _forwarding_fromEX_1_1000;
  wire          _forwarding_fromMEM_1_1001;
  wire          _forwarding_fromWB_1_1002;
  wire   [31:0] _forwarding_in;
  wire   [31:0] _forwarding_result_;
  wire    [4:0] _set1__forwarding_addr_2_1003;
  wire   [31:0] _set1__forwarding_in_2_1004;
  wire          _set1_fromEX_3_1005;
  wire          _set1_fromMEM_3_1006;
  wire          _set1_fromWB_3_1007;
  wire    [4:0] _set2__forwarding_addr_4_1008;
  wire   [31:0] _set2__forwarding_in_4_1009;
  wire          _set2_fromEX_5_1010;
  wire          _set2_fromMEM_5_1011;
  wire          _set2_fromWB_5_1012;
  wire          forwarding;
  /* assigns */
  assign __net0 = forwarding ? 
                    _forwarding_fromEX_1_1000 && ex_load ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net1 = forwarding ? 
                    _forwarding_addr == 5'B00000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net10 = set2 ? 
                     _set2_fromEX_5_1010 && ex_load ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net11 = set2 ? 
                     _set2__forwarding_addr_4_1008 == 5'B00000 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net12 = set2 & ~__net11 ? 
                     _set2_fromEX_5_1010 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net13 = set2 & ~__net11 & ~__net12 ? 
                     _set2_fromMEM_5_1011 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net14 = set2 & ~__net11 & ~__net12 & ~__net13 ? 
                     _set2_fromWB_5_1012 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net2 = forwarding & ~__net1 ? 
                    _forwarding_fromEX_1_1000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net3 = forwarding & ~__net1 & ~__net2 ? 
                    _forwarding_fromMEM_1_1001 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net4 = forwarding & ~__net1 & ~__net2 & ~__net3 ? 
                    _forwarding_fromWB_1_1002 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net5 = set1 ? _set1_fromEX_3_1005 && ex_load ? 1'b1 : 1'b0 : 1'bx;
  assign __net6 = set1 ? 
                    _set1__forwarding_addr_2_1003 == 5'B00000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net7 = set1 & ~__net6 ? _set1_fromEX_3_1005 ? 1'b1 : 1'b0 : 1'bx;
  assign __net8 = set1 & ~__net6 & ~__net7 ? 
                    _set1_fromMEM_3_1006 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net9 = set1 & ~__net6 & ~__net7 & ~__net8 ? 
                    _set1_fromWB_3_1007 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign _forwarding_fromEX_1_1000 = forwarding ? 
                                       ex && ex_addr == _forwarding_addr : 
                                       1'bx;
  assign _forwarding_fromMEM_1_1001 = forwarding ? 
                                        me && me_addr == _forwarding_addr : 
                                        1'bx;
  assign _forwarding_fromWB_1_1002 = forwarding ? 
                                       wb && wb_addr == _forwarding_addr : 
                                       1'bx;
  assign _forwarding_result_ = forwarding ? 
                                 _forwarding_addr == 5'B00000 ? 
                                   32'B00000000000000000000000000000000 : 
                                   _forwarding_fromEX_1_1000 ? 
                                     ex_data : 
                                     _forwarding_fromMEM_1_1001 ? 
                                       me_data : 
                                       _forwarding_fromWB_1_1002 ? 
                                         wb_data : 
                                         _forwarding_in : 
                                 32'bx;
  assign _set1__forwarding_addr_2_1003 = set1 ? addr1 : 5'bx;
  assign _set1__forwarding_in_2_1004 = set1 ? in1 : 32'bx;
  assign _set1_fromEX_3_1005 = set1 ? 
                                 ex && ex_addr == _set1__forwarding_addr_2_1003 : 
                                 1'bx;
  assign _set1_fromMEM_3_1006 = set1 ? 
                                  me && me_addr == _set1__forwarding_addr_2_1003 : 
                                  1'bx;
  assign _set1_fromWB_3_1007 = set1 ? 
                                 wb && wb_addr == _set1__forwarding_addr_2_1003 : 
                                 1'bx;
  assign _set2__forwarding_addr_4_1008 = set2 ? addr2 : 5'bx;
  assign _set2__forwarding_in_4_1009 = set2 ? in2 : 32'bx;
  assign _set2_fromEX_5_1010 = set2 ? 
                                 ex && ex_addr == _set2__forwarding_addr_4_1008 : 
                                 1'bx;
  assign _set2_fromMEM_5_1011 = set2 ? 
                                  me && me_addr == _set2__forwarding_addr_4_1008 : 
                                  1'bx;
  assign _set2_fromWB_5_1012 = set2 ? 
                                 wb && wb_addr == _set2__forwarding_addr_4_1008 : 
                                 1'bx;
  assign set1_out = set1 ? 
                      _set1__forwarding_addr_2_1003 == 5'B00000 ? 
                        32'B00000000000000000000000000000000 : 
                        _set1_fromEX_3_1005 ? 
                          ex_data : 
                          _set1_fromMEM_3_1006 ? 
                            me_data : 
                            _set1_fromWB_3_1007 ? 
                              wb_data : 
                              _set1__forwarding_in_2_1004 : 
                      32'bx;
  assign set2_out = set2 ? 
                      _set2__forwarding_addr_4_1008 == 5'B00000 ? 
                        32'B00000000000000000000000000000000 : 
                        _set2_fromEX_5_1010 ? 
                          ex_data : 
                          _set2_fromMEM_5_1011 ? 
                            me_data : 
                            _set2_fromWB_5_1012 ? 
                              wb_data : 
                              _set2__forwarding_in_4_1009 : 
                      32'bx;
  /* invokes */
  /* private function */
  assign load_hazard = forwarding & __net0 | (set1 & __net5 | set2 & __net10);
  assign forwarding = 1'b0;
  /* defs */
  /* FunDef ex */
  /*   parameter: ex_addr: Bit(5) */
  /*   parameter: ex_data: Bit(32) */
  /* FunDef me */
  /*   parameter: me_addr: Bit(5) */
  /*   parameter: me_data: Bit(32) */
  /* FunDef wb */
  /*   parameter: wb_addr: Bit(5) */
  /*   parameter: wb_data: Bit(32) */
  /* FunDef set1 */
  /*   parameter: addr1: Bit(5) */
  /*   parameter: in1: Bit(32) */
  /* FunDef set2 */
  /*   parameter: addr2: Bit(5) */
  /*   parameter: in2: Bit(32) */
endmodule
/* End of file (p32ForwardingUnit.v) */
