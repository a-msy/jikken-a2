/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Tue Jun 09 20:38:08 JST 2020
 * 
 * The source file of this code: 'p32DecodeUnit.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: p32DecodeUnit */

module p32DecodeUnit(p_reset, m_clock, inst, a_data, b_data, pc, a_out, b_out, dest_out, shamt_out, mdr_out, pc_out, epc_out, cause_out, funct_out, update_pc, update_mdr, set_epc, set_cause, exception, undefined_inst, decode);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input  [31:0] inst;
  wire   [31:0] inst;
  input  [31:0] a_data;
  wire   [31:0] a_data;
  input  [31:0] b_data;
  wire   [31:0] b_data;
  input  [31:0] pc;
  wire   [31:0] pc;
  output [31:0] a_out;
  wire   [31:0] a_out;
  output [31:0] b_out;
  wire   [31:0] b_out;
  output  [4:0] dest_out;
  wire    [4:0] dest_out;
  output  [4:0] shamt_out;
  wire    [4:0] shamt_out;
  output [31:0] mdr_out;
  wire   [31:0] mdr_out;
  output [31:0] pc_out;
  wire   [31:0] pc_out;
  output [31:0] epc_out;
  wire   [31:0] epc_out;
  output  [3:0] cause_out;
  wire    [3:0] cause_out;
  output  [5:0] funct_out;
  wire    [5:0] funct_out;
  output        update_pc;
  wire          update_pc;
  output        update_mdr;
  wire          update_mdr;
  output        set_epc;
  wire          set_epc;
  output        set_cause;
  wire          set_cause;
  output        exception;
  wire          exception;
  output        undefined_inst;
  wire          undefined_inst;
  input         decode;
  wire          decode;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: pc_add: ___no_package___.add32 */
  wire          _pc_add_p_reset;
  wire          _pc_add_m_clock;
  wire   [31:0] _pc_add_b;
  wire          _pc_add_cin;
  wire          _pc_add_cout;
  wire   [31:0] _pc_add_a;
  wire   [31:0] _pc_add_sum;
  wire          _pc_add_ov;
  wire          _pc_add_add;
  add32 pc_add(.p_reset(_pc_add_p_reset),
               .m_clock(_pc_add_m_clock),
               .b(_pc_add_b),
               .cin(_pc_add_cin),
               .cout(_pc_add_cout),
               .a(_pc_add_a),
               .sum(_pc_add_sum),
               .ov(_pc_add_ov),
               .add(_pc_add_add));
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire    [3:0] __net10;
  wire          __net11;
  wire          __net12;
  wire          __net13;
  wire          __net14;
  wire   [31:0] __net15;
  wire          __net16;
  wire          __net17;
  wire          __net18;
  wire          __net19;
  wire          __net2;
  wire          __net20;
  wire   [31:0] __net21;
  wire          __net22;
  wire   [31:0] __net23;
  wire          __net24;
  wire   [31:0] __net25;
  wire          __net26;
  wire   [31:0] __net27;
  wire   [31:0] __net28;
  wire    [3:0] __net29;
  wire          __net3;
  wire   [31:0] __net4;
  wire          __net5;
  wire   [31:0] __net6;
  wire          __net7;
  wire   [31:0] __net8;
  wire   [31:0] __net9;
  wire    [5:0] _decode_funct_1_1004;
  wire   [15:0] _decode_immediate_1_1003;
  wire          _decode_immSignExt_1_1027;
  wire          _decode_immZeroExt_1_1028;
  wire          _decode_isADDI_1_1007;
  wire          _decode_isADDIU_1_1008;
  wire          _decode_isANDI_1_1009;
  wire          _decode_isBEQ_1_1015;
  wire          _decode_isBNE_1_1016;
  wire          _decode_isBR_1_1024;
  wire          _decode_isLB_1_1019;
  wire          _decode_isLOAD_1_1025;
  wire          _decode_isLUI_1_1012;
  wire          _decode_isLW_1_1020;
  wire          _decode_isORI_1_1010;
  wire          _decode_isSB_1_1017;
  wire          _decode_isSHIFT_1_1023;
  wire          _decode_isSHIFT_I_1_1021;
  wire          _decode_isSHIFT_V_1_1022;
  wire          _decode_isSLTI_1_1013;
  wire          _decode_isSLTIU_1_1014;
  wire          _decode_isSPECIAL_1_1006;
  wire          _decode_isSTORE_1_1026;
  wire          _decode_isSW_1_1018;
  wire          _decode_isXORI_1_1011;
  wire   [31:0] _decode_next_pc_25_1029;
  wire    [5:0] _decode_opcode_1_1000;
  wire    [4:0] _decode_rd_1_1002;
  wire    [4:0] _decode_rt_1_1001;
  wire   [25:0] _decode_target_1_1005;
  wire    [5:0] ADD;
  wire    [5:0] ADDI;
  wire    [5:0] ADDIU;
  wire    [5:0] ADDU;
  wire    [5:0] AND;
  wire    [5:0] ANDI;
  wire    [5:0] BEQ;
  wire    [5:0] BNE;
  wire    [3:0] CAUSE_BP;
  wire    [3:0] CAUSE_DBE;
  wire    [3:0] CAUSE_IBE;
  wire    [3:0] CAUSE_INT;
  wire    [3:0] CAUSE_OVF;
  wire    [3:0] CAUSE_RI;
  wire    [3:0] CAUSE_SYS;
  wire    [5:0] DIV;
  wire    [5:0] DIVU;
  wire   [31:0] EXCEPTION_HANDLER;
  wire    [5:0] J;
  wire    [5:0] JAL;
  wire    [5:0] JALR;
  wire    [5:0] JR;
  wire    [5:0] LB;
  wire    [5:0] LUI;
  wire    [5:0] LW;
  wire    [5:0] MFHI;
  wire    [5:0] MFLO;
  wire    [5:0] MULT;
  wire    [5:0] MULTU;
  wire    [5:0] NOR;
  wire    [5:0] OR;
  wire    [5:0] ORI;
  wire    [5:0] SB;
  wire    [5:0] SLL;
  wire    [5:0] SLLV;
  wire    [5:0] SLT;
  wire    [5:0] SLTI;
  wire    [5:0] SLTIU;
  wire    [5:0] SLTU;
  wire    [5:0] SPECIAL;
  wire    [5:0] SRA;
  wire    [5:0] SRAV;
  wire    [5:0] SRL;
  wire    [5:0] SRLV;
  wire    [5:0] SUB;
  wire    [5:0] SUBU;
  wire    [5:0] SW;
  wire    [5:0] SYSCALL;
  wire    [5:0] XOR;
  wire    [5:0] XORI;
  /* assigns */
  assign __net0 = decode ? _decode_isSPECIAL_1_1006 : 1'bx;
  assign __net1 = decode & __net0 ? 
                    _decode_isSHIFT_V_1_1022 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net10 = decode & __net0 & __net7 ? 4'B1000 : 4'bx;
  assign __net13 = decode & ~__net0 ? _decode_isLOAD_1_1025 : 1'bx;
  assign __net14 = decode & ~__net0 ? _decode_isSTORE_1_1026 : 1'bx;
  assign __net15 = decode & ~__net0 & __net14 ? b_data : 32'bx;
  assign __net16 = decode & ~__net0 ? _decode_immSignExt_1_1027 : 1'bx;
  assign __net17 = decode & ~__net0 ? _decode_immZeroExt_1_1028 : 1'bx;
  assign __net18 = decode & ~__net0 ? _decode_isLUI_1_1012 : 1'bx;
  assign __net19 = decode & ~__net0 ? _decode_isBR_1_1024 : 1'bx;
  assign __net2 = decode & __net0 & ~__net1 ? 
                    _decode_isSHIFT_I_1_1021 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net20 = decode & ~__net0 & __net19 ? 
                     _decode_isBEQ_1_1015 && a_data == b_data || _decode_isBNE_1_1016 && a_data != b_data : 
                     1'bx;
  assign __net21 = decode & ~__net0 & __net19 & __net20 ? 
                     _decode_next_pc_25_1029 : 
                     32'bx;
  assign __net22 = decode & ~__net0 ? 
                     _decode_opcode_1_1000 == 6'B000010 : 
                     1'bx;
  assign __net23 = decode & ~__net0 & __net22 ? 
                     {{pc[31:28], _decode_target_1_1005}, 2'B00} : 
                     32'bx;
  assign __net24 = decode & ~__net0 ? 
                     _decode_opcode_1_1000 == 6'B000011 : 
                     1'bx;
  assign __net25 = decode & ~__net0 & __net24 ? 
                     {{pc[31:28], _decode_target_1_1005}, 2'B00} : 
                     32'bx;
  assign __net27 = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                     32'B10000000000000000000000010000000 : 
                     32'bx;
  assign __net28 = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                     pc + 32'B11111111111111111111111111111100 : 
                     32'bx;
  assign __net29 = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                     4'B1010 : 
                     4'bx;
  assign __net3 = decode & __net0 ? _decode_funct_1_1004 == 6'B001000 : 1'bx;
  assign __net4 = decode & __net0 & __net3 ? a_data : 32'bx;
  assign __net5 = decode & __net0 ? _decode_funct_1_1004 == 6'B001001 : 1'bx;
  assign __net6 = decode & __net0 & __net5 ? a_data : 32'bx;
  assign __net7 = decode & __net0 ? _decode_funct_1_1004 == 6'B001100 : 1'bx;
  assign __net8 = decode & __net0 & __net7 ? 
                    32'B10000000000000000000000010000000 : 
                    32'bx;
  assign __net9 = decode & __net0 & __net7 ? 
                    pc + 32'B11111111111111111111111111111100 : 
                    32'bx;
  assign _decode_funct_1_1004 = decode ? inst[5:0] : 6'bx;
  assign _decode_immediate_1_1003 = decode ? inst[15:0] : 16'bx;
  assign _decode_immSignExt_1_1027 = decode ? 
                                       _decode_isADDI_1_1007 || _decode_isADDIU_1_1008 || _decode_isSLTI_1_1013 || _decode_isSLTIU_1_1014 : 
                                       1'bx;
  assign _decode_immZeroExt_1_1028 = decode ? 
                                       _decode_isANDI_1_1009 || _decode_isORI_1_1010 || _decode_isXORI_1_1011 : 
                                       1'bx;
  assign _decode_isADDI_1_1007 = decode ? 
                                   _decode_opcode_1_1000 == 6'B001000 : 
                                   1'bx;
  assign _decode_isADDIU_1_1008 = decode ? 
                                    _decode_opcode_1_1000 == 6'B001001 : 
                                    1'bx;
  assign _decode_isANDI_1_1009 = decode ? 
                                   _decode_opcode_1_1000 == 6'B001100 : 
                                   1'bx;
  assign _decode_isBEQ_1_1015 = decode ? 
                                  _decode_opcode_1_1000 == 6'B000100 : 
                                  1'bx;
  assign _decode_isBNE_1_1016 = decode ? 
                                  _decode_opcode_1_1000 == 6'B000101 : 
                                  1'bx;
  assign _decode_isBR_1_1024 = decode ? 
                                 _decode_isBEQ_1_1015 || _decode_isBNE_1_1016 : 
                                 1'bx;
  assign _decode_isLB_1_1019 = decode ? 
                                 _decode_opcode_1_1000 == 6'B100000 : 
                                 1'bx;
  assign _decode_isLOAD_1_1025 = decode ? 
                                   _decode_isLB_1_1019 || _decode_isLW_1_1020 : 
                                   1'bx;
  assign _decode_isLUI_1_1012 = decode ? 
                                  _decode_opcode_1_1000 == 6'B001111 : 
                                  1'bx;
  assign _decode_isLW_1_1020 = decode ? 
                                 _decode_opcode_1_1000 == 6'B100011 : 
                                 1'bx;
  assign _decode_isORI_1_1010 = decode ? 
                                  _decode_opcode_1_1000 == 6'B001101 : 
                                  1'bx;
  assign _decode_isSB_1_1017 = decode ? 
                                 _decode_opcode_1_1000 == 6'B101000 : 
                                 1'bx;
  assign _decode_isSHIFT_1_1023 = decode ? 
                                    _decode_isSHIFT_I_1_1021 || _decode_isSHIFT_V_1_1022 : 
                                    1'bx;
  assign _decode_isSHIFT_I_1_1021 = decode ? 
                                      _decode_isSPECIAL_1_1006 && (_decode_funct_1_1004 == 6'B000000 || _decode_funct_1_1004 == 6'B000010 || _decode_funct_1_1004 == 6'B000011) : 
                                      1'bx;
  assign _decode_isSHIFT_V_1_1022 = decode ? 
                                      _decode_isSPECIAL_1_1006 && (_decode_funct_1_1004 == 6'B000100 || _decode_funct_1_1004 == 6'B000110 || _decode_funct_1_1004 == 6'B000111) : 
                                      1'bx;
  assign _decode_isSLTI_1_1013 = decode ? 
                                   _decode_opcode_1_1000 == 6'B001010 : 
                                   1'bx;
  assign _decode_isSLTIU_1_1014 = decode ? 
                                    _decode_opcode_1_1000 == 6'B001011 : 
                                    1'bx;
  assign _decode_isSPECIAL_1_1006 = decode ? 
                                      _decode_opcode_1_1000 == 6'B000000 : 
                                      1'bx;
  assign _decode_isSTORE_1_1026 = decode ? 
                                    _decode_isSB_1_1017 || _decode_isSW_1_1018 : 
                                    1'bx;
  assign _decode_isSW_1_1018 = decode ? 
                                 _decode_opcode_1_1000 == 6'B101011 : 
                                 1'bx;
  assign _decode_isXORI_1_1011 = decode ? 
                                   _decode_opcode_1_1000 == 6'B001110 : 
                                   1'bx;
  assign _decode_next_pc_25_1029 = decode & ~__net0 & __net19 & __net20 ? 
                                     _pc_add_sum : 
                                     32'bx;
  assign _decode_opcode_1_1000 = decode ? inst[31:26] : 6'bx;
  assign _decode_rd_1_1002 = decode ? inst[15:11] : 5'bx;
  assign _decode_rt_1_1001 = decode ? inst[20:16] : 5'bx;
  assign _decode_target_1_1005 = decode ? inst[25:0] : 26'bx;
  assign _pc_add_a = decode & ~__net0 & __net19 & __net20 ? pc : 32'bx;
  assign _pc_add_add = decode & ~__net0 & __net19 & __net20 ? 1'b1 : 1'b0;
  assign _pc_add_b = decode & ~__net0 & __net19 & __net20 ? 
                       {{ 14 { _decode_immediate_1_1003[15]} }, {_decode_immediate_1_1003, 2'B00}} : 
                       32'bx;
  assign _pc_add_cin = decode & ~__net0 & __net19 & __net20 ? 1'B0 : 1'bx;
  assign _pc_add_m_clock = m_clock;
  assign _pc_add_p_reset = p_reset;
  assign a_out = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                   32'B11111111111111111111111111111111 : 
                   decode & ~__net0 & __net24 ? 
                     32'B00000000000000000000000000000000 : 
                     decode & ~__net0 & __net22 ? 
                       a_data : 
                       decode & ~__net0 & __net19 ? 
                         a_data : 
                         decode & ~__net0 & __net18 ? 
                           32'B00000000000000000000000000000000 : 
                           decode & ~__net0 & __net17 ? 
                             a_data : 
                             decode & ~__net0 & __net16 ? 
                               a_data : 
                               decode & ~__net0 & __net14 ? 
                                 a_data : 
                                 decode & ~__net0 & __net13 ? 
                                   a_data : 
                                   decode & __net0 & ~(__net5 | (__net3 | __net7)) ? 
                                     a_data : 
                                     decode & __net0 & __net7 ? 
                                       32'B00000000000000000000000000000000 : 
                                       decode & __net0 & __net5 ? 
                                         32'B00000000000000000000000000000000 : 
                                         decode & __net0 & __net3 ? 
                                           a_data : 
                                           32'bx;
  assign ADD = 6'B100000;
  assign ADDI = 6'B001000;
  assign ADDIU = 6'B001001;
  assign ADDU = 6'B100001;
  assign AND = 6'B100100;
  assign ANDI = 6'B001100;
  assign b_out = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                   32'B11111111111111111111111111111111 : 
                   decode & ~__net0 & __net24 ? 
                     pc : 
                     decode & ~__net0 & __net22 ? 
                       32'B00000000000000000000000000000000 : 
                       decode & ~__net0 & __net19 ? 
                         {{ 16 { _decode_immediate_1_1003[15]} }, _decode_immediate_1_1003} : 
                         decode & ~__net0 & __net18 ? 
                           {16'B0000000000000000, _decode_immediate_1_1003} : 
                           decode & ~__net0 & __net17 ? 
                             {16'B0000000000000000, _decode_immediate_1_1003} : 
                             decode & ~__net0 & __net16 ? 
                               {{ 16 { _decode_immediate_1_1003[15]} }, _decode_immediate_1_1003} : 
                               decode & ~__net0 & __net14 ? 
                                 {{ 16 { _decode_immediate_1_1003[15]} }, _decode_immediate_1_1003} : 
                                 decode & ~__net0 & __net13 ? 
                                   {{ 16 { _decode_immediate_1_1003[15]} }, _decode_immediate_1_1003} : 
                                   decode & __net0 & ~(__net5 | (__net3 | __net7)) ? 
                                     b_data : 
                                     decode & __net0 & __net7 ? 
                                       32'B00000000000000000000000000000000 : 
                                       decode & __net0 & __net5 ? 
                                         pc : 
                                         decode & __net0 & __net3 ? 
                                           32'B00000000000000000000000000000000 : 
                                           32'bx;
  assign BEQ = 6'B000100;
  assign BNE = 6'B000101;
  assign CAUSE_BP = 4'B1001;
  assign CAUSE_DBE = 4'B0111;
  assign CAUSE_IBE = 4'B0110;
  assign CAUSE_INT = 4'B0000;
  assign cause_out = decode & __net0 & __net7 ? 
                       __net10 : 
                       decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                         __net29 : 
                         4'bx;
  assign CAUSE_OVF = 4'B1100;
  assign CAUSE_RI = 4'B1010;
  assign CAUSE_SYS = 4'B1000;
  assign dest_out = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                      5'B00000 : 
                      decode & ~__net0 & __net24 ? 
                        5'B11111 : 
                        decode & ~__net0 & __net22 ? 
                          5'B00000 : 
                          decode & ~__net0 & __net19 ? 
                            5'B00000 : 
                            decode & ~__net0 & __net18 ? 
                              _decode_rt_1_1001 : 
                              decode & ~__net0 & __net17 ? 
                                _decode_rt_1_1001 : 
                                decode & ~__net0 & __net16 ? 
                                  _decode_rt_1_1001 : 
                                  decode & ~__net0 & __net14 ? 
                                    5'B00000 : 
                                    decode & ~__net0 & __net13 ? 
                                      _decode_rt_1_1001 : 
                                      decode & __net0 & ~(__net5 | (__net3 | __net7)) ? 
                                        _decode_rd_1_1002 : 
                                        decode & __net0 & __net7 ? 
                                          5'B00000 : 
                                          decode & __net0 & __net5 ? 
                                            _decode_rd_1_1002 : 
                                            decode & __net0 & __net3 ? 
                                              5'B00000 : 
                                              5'bx;
  assign DIV = 6'B011010;
  assign DIVU = 6'B011011;
  assign epc_out = decode & __net0 & __net7 ? 
                     __net9 : 
                     decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                       __net28 : 
                       32'bx;
  assign EXCEPTION_HANDLER = 32'B10000000000000000000000010000000;
  assign funct_out = decode & ~__net0 ? 
                       6'B000000 : 
                       decode & __net0 ? 
                         _decode_funct_1_1004 : 
                         6'bx;
  assign J = 6'B000010;
  assign JAL = 6'B000011;
  assign JALR = 6'B001001;
  assign JR = 6'B001000;
  assign LB = 6'B100000;
  assign LUI = 6'B001111;
  assign LW = 6'B100011;
  assign mdr_out = decode & ~__net0 & __net14 ? __net15 : 32'bx;
  assign MFHI = 6'B010000;
  assign MFLO = 6'B010010;
  assign MULT = 6'B011000;
  assign MULTU = 6'B011001;
  assign NOR = 6'B100111;
  assign OR = 6'B100101;
  assign ORI = 6'B001101;
  assign pc_out = decode & __net0 & __net3 ? 
                    __net4 : 
                    decode & __net0 & __net5 ? 
                      __net6 : 
                      decode & __net0 & __net7 ? 
                        __net8 : 
                        decode & ~__net0 & __net19 & __net20 ? 
                          __net21 : 
                          decode & ~__net0 & __net22 ? 
                            __net23 : 
                            decode & ~__net0 & __net24 ? 
                              __net25 : 
                              decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))) ? 
                                __net27 : 
                                32'bx;
  assign SB = 6'B101000;
  assign shamt_out = decode & ~__net0 ? 
                       5'B00000 : 
                       decode & __net0 ? 
                         _decode_isSHIFT_V_1_1022 ? 
                           a_data[4:0] : 
                           _decode_isSHIFT_I_1_1021 ? 
                             inst[10:6] : 
                             5'B00000 : 
                         5'bx;
  assign SLL = 6'B000000;
  assign SLLV = 6'B000100;
  assign SLT = 6'B101010;
  assign SLTI = 6'B001010;
  assign SLTIU = 6'B001011;
  assign SLTU = 6'B101011;
  assign SPECIAL = 6'B000000;
  assign SRA = 6'B000011;
  assign SRAV = 6'B000111;
  assign SRL = 6'B000010;
  assign SRLV = 6'B000110;
  assign SUB = 6'B100010;
  assign SUBU = 6'B100011;
  assign SW = 6'B101011;
  assign SYSCALL = 6'B001100;
  assign XOR = 6'B100110;
  assign XORI = 6'B001110;
  /* invokes */
  /* private function */
  assign set_epc = decode & __net0 & __net7 | decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24)))))));
  assign update_pc = decode & __net0 & __net3 | (decode & __net0 & __net5 | (decode & __net0 & __net7 | (decode & ~__net0 & __net19 & __net20 | (decode & ~__net0 & __net22 | (decode & ~__net0 & __net24 | decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24))))))))))));
  assign undefined_inst = decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24)))))));
  assign update_mdr = decode & ~__net0 & __net14;
  assign exception = decode & __net0 & __net7;
  assign set_cause = decode & __net0 & __net7 | decode & ~__net0 & ~(__net22 | (__net19 | (__net18 | (__net17 | (__net16 | (__net14 | (__net13 | __net24)))))));
  /* defs */
  /* FunDef decode */
  /*   parameter: inst: Bit(32) */
  /*   parameter: a_data: Bit(32) */
  /*   parameter: b_data: Bit(32) */
  /*   parameter: pc: Bit(32) */
endmodule
/* End of file (p32DecodeUnit.v) */
