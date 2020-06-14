/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 17:20:04 JST 2020
 * 
 * The source file of this code: 'p32ExecUnit.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: p32ExecUnit */

module p32ExecUnit(p_reset, m_clock, op, funct, shamt, a, b, mdata, result, mdata_out, store_loc, exec);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  input   [5:0] op;
  wire    [5:0] op;
  input   [5:0] funct;
  wire    [5:0] funct;
  input   [4:0] shamt;
  wire    [4:0] shamt;
  input  [31:0] a;
  wire   [31:0] a;
  input  [31:0] b;
  wire   [31:0] b;
  input  [31:0] mdata;
  wire   [31:0] mdata;
  output [31:0] result;
  wire   [31:0] result;
  output [31:0] mdata_out;
  wire   [31:0] mdata_out;
  output  [3:0] store_loc;
  wire    [3:0] store_loc;
  input         exec;
  wire          exec;
  /* for bundle-type input/output */
  /* decls */
  /* ModuleInstance: alu: ___no_package___.alu32 */
  wire          _alu_p_reset;
  wire          _alu_m_clock;
  wire   [31:0] _alu_b;
  wire          _alu_op_and;
  wire          _alu_op_sub;
  wire          _alu_overflow;
  wire          _alu_op_xor;
  wire          _alu_op_or;
  wire   [31:0] _alu_a;
  wire          _alu_op_nor;
  wire          _alu_op_add;
  wire   [31:0] _alu_out;
  wire          _alu_zero;
  alu32 alu(.p_reset(_alu_p_reset),
            .m_clock(_alu_m_clock),
            .b(_alu_b),
            .op_and(_alu_op_and),
            .op_sub(_alu_op_sub),
            .overflow(_alu_overflow),
            .op_xor(_alu_op_xor),
            .op_or(_alu_op_or),
            .a(_alu_a),
            .op_nor(_alu_op_nor),
            .op_add(_alu_op_add),
            .out(_alu_out),
            .zero(_alu_zero));
  /* ModuleInstance: shift: ___no_package___.shift32 */
  wire          _shift_p_reset;
  wire          _shift_m_clock;
  wire          _shift_srl;
  wire          _shift_sll;
  wire   [31:0] _shift_in;
  wire   [31:0] _shift_out;
  wire          _shift_sra;
  wire    [4:0] _shift_shamt;
  shift32 shift(.p_reset(_shift_p_reset),
                .m_clock(_shift_m_clock),
                .srl(_shift_srl),
                .sll(_shift_sll),
                .in(_shift_in),
                .out(_shift_out),
                .sra(_shift_sra),
                .shamt(_shift_shamt));
  /* local decls */
  wire          __net0;
  wire          __net1;
  wire          __net10;
  wire   [31:0] __net11;
  wire   [31:0] __net12;
  wire          __net13;
  wire          __net14;
  wire          __net15;
  wire          __net16;
  wire   [31:0] __net17;
  wire          __net18;
  wire          __net19;
  wire          __net2;
  wire          __net20;
  wire          __net21;
  wire          __net22;
  wire   [31:0] __net23;
  wire          __net24;
  wire          __net25;
  wire    [1:0] __net26;
  wire          __net27;
  wire          __net28;
  wire          __net29;
  wire          __net3;
  wire          __net30;
  wire          __net31;
  wire          __net32;
  wire   [31:0] __net33;
  wire   [31:0] __net34;
  wire          __net35;
  wire   [31:0] __net36;
  wire    [4:0] __net37;
  wire          __net38;
  wire          __net39;
  wire          __net4;
  wire   [31:0] __net40;
  wire   [31:0] __net41;
  wire          __net42;
  wire          __net43;
  wire          __net44;
  wire   [31:0] __net45;
  wire   [31:0] __net46;
  wire          __net47;
  wire          __net48;
  wire          __net5;
  wire          __net6;
  wire          __net7;
  wire          __net8;
  wire          __net9;
  wire   [31:0] _ex_alu_a;
  wire   [31:0] _ex_alu_b;
  wire   [31:0] _ex_set_a;
  wire   [31:0] _ex_set_b;
  wire          _ex_set_neg_pos_12_1000;
  wire          _ex_set_pos_neg_12_1001;
  wire   [31:0] _ex_shift_b;
  wire    [4:0] _ex_shift_shamt;
  wire   [31:0] _ex_store_a;
  wire   [31:0] _ex_store_b;
  wire    [1:0] _ex_store_lo2_20_1002;
  wire    [5:0] ADD;
  wire    [5:0] ADDI;
  wire    [5:0] ADDIU;
  wire    [5:0] ADDU;
  wire    [5:0] AND;
  wire    [5:0] ANDI;
  wire    [5:0] BEQ;
  wire    [5:0] BNE;
  wire    [5:0] DIV;
  wire    [5:0] DIVU;
  wire          ex_alu;
  wire          ex_set;
  wire          ex_shift;
  wire          ex_store;
  wire          isADD;
  wire          isADDU;
  wire          isALU;
  wire          isAND;
  wire          isBJ;
  wire          isDIV;
  wire          isDIVIDER;
  wire          isDIVU;
  wire          isLB;
  wire          isLOAD;
  wire          isLUI;
  wire          isLW;
  wire          isMFHI;
  wire          isMFLO;
  wire          isMOVE;
  wire          isMULT;
  wire          isMULTIPLIER;
  wire          isMULTU;
  wire          isNOR;
  wire          isOR;
  wire          isSB;
  wire          isSET;
  wire          isSHIFT;
  wire          isSLL;
  wire          isSLT;
  wire          isSLTU;
  wire          isSPECIAL;
  wire          isSRA;
  wire          isSRL;
  wire          isSTORE;
  wire          isSUB;
  wire          isSUBU;
  wire          isSW;
  wire          isXOR;
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
  assign __net0 = ex_alu ? isADD : 1'bx;
  assign __net1 = ex_alu ? isADDU : 1'bx;
  assign __net10 = ex_shift ? isSRA : 1'bx;
  assign __net11 = ex_set ? _ex_set_a : 32'bx;
  assign __net12 = ex_set ? _ex_set_b : 32'bx;
  assign __net13 = ex_set ? isSLT : 1'bx;
  assign __net14 = ex_set & __net13 ? _ex_set_neg_pos_12_1000 : 1'bx;
  assign __net15 = ex_set & __net13 ? _ex_set_pos_neg_12_1001 : 1'bx;
  assign __net17 = ex_set & __net13 & ~(__net14 | __net15) ? 
                     _alu_out : 
                     32'bx;
  assign __net18 = ex_set & __net13 & ~(__net14 | __net15) ? 
                     (__net17[31] & 1'B1) == 1'B1 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net19 = ex_set ? isSLTU : 1'bx;
  assign __net2 = ex_alu ? isSUB : 1'bx;
  assign __net20 = ex_set & __net19 ? _ex_set_neg_pos_12_1000 : 1'bx;
  assign __net21 = ex_set & __net19 ? _ex_set_pos_neg_12_1001 : 1'bx;
  assign __net23 = ex_set & __net19 & ~(__net20 | __net21) ? 
                     _alu_out : 
                     32'bx;
  assign __net24 = ex_set & __net19 & ~(__net20 | __net21) ? 
                     (__net23[31] & 1'B1) == 1'B1 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net25 = ex_store ? isSB : 1'bx;
  assign __net26 = ex_store & __net25 ? _ex_store_lo2_20_1002 : 2'bx;
  assign __net27 = ex_store & __net25 ? 
                     __net26 == 2'B00 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net28 = ex_store & __net25 ? 
                     __net26 == 2'B01 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net29 = ex_store & __net25 ? 
                     __net26 == 2'B10 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net3 = ex_alu ? isSUBU : 1'bx;
  assign __net30 = ex_store & __net25 ? 
                     __net26 == 2'B11 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net31 = ex_store ? isSW : 1'bx;
  assign __net32 = exec ? isALU : 1'bx;
  assign __net33 = exec & __net32 ? a : 32'bx;
  assign __net34 = exec & __net32 ? b : 32'bx;
  assign __net35 = exec ? isSHIFT : 1'bx;
  assign __net36 = exec & __net35 ? b : 32'bx;
  assign __net37 = exec & __net35 ? shamt : 5'bx;
  assign __net38 = exec ? isLUI : 1'bx;
  assign __net39 = exec ? isSET : 1'bx;
  assign __net4 = ex_alu ? isAND : 1'bx;
  assign __net40 = exec & __net39 ? a : 32'bx;
  assign __net41 = exec & __net39 ? b : 32'bx;
  assign __net42 = exec ? isBJ : 1'bx;
  assign __net43 = exec ? isLOAD : 1'bx;
  assign __net44 = exec ? isSTORE : 1'bx;
  assign __net45 = exec & __net44 ? a : 32'bx;
  assign __net46 = exec & __net44 ? b : 32'bx;
  assign __net48 = exec ? !isSTORE ? 1'b1 : 1'b0 : 1'bx;
  assign __net5 = ex_alu ? isOR : 1'bx;
  assign __net6 = ex_alu ? isXOR : 1'bx;
  assign __net7 = ex_alu ? isNOR : 1'bx;
  assign __net8 = ex_shift ? isSLL : 1'bx;
  assign __net9 = ex_shift ? isSRL : 1'bx;
  assign _alu_a = ex_alu & __net0 ? 
                    _ex_alu_a : 
                    ex_alu & __net1 ? 
                      _ex_alu_a : 
                      ex_alu & __net2 ? 
                        _ex_alu_a : 
                        ex_alu & __net3 ? 
                          _ex_alu_a : 
                          ex_alu & __net4 ? 
                            _ex_alu_a : 
                            ex_alu & __net5 ? 
                              _ex_alu_a : 
                              ex_alu & __net6 ? 
                                _ex_alu_a : 
                                ex_alu & __net7 ? 
                                  _ex_alu_a : 
                                  ex_set ? 
                                    __net11 : 
                                    ex_store ? 
                                      _ex_store_a : 
                                      exec & __net42 ? 
                                        a : 
                                        exec & __net43 ? 
                                          a : 
                                          32'bx;
  assign _alu_b = ex_alu & __net0 ? 
                    _ex_alu_b : 
                    ex_alu & __net1 ? 
                      _ex_alu_b : 
                      ex_alu & __net2 ? 
                        _ex_alu_b : 
                        ex_alu & __net3 ? 
                          _ex_alu_b : 
                          ex_alu & __net4 ? 
                            _ex_alu_b : 
                            ex_alu & __net5 ? 
                              _ex_alu_b : 
                              ex_alu & __net6 ? 
                                _ex_alu_b : 
                                ex_alu & __net7 ? 
                                  _ex_alu_b : 
                                  ex_set ? 
                                    __net12 : 
                                    ex_store ? 
                                      _ex_store_b : 
                                      exec & __net42 ? 
                                        b : 
                                        exec & __net43 ? 
                                          b : 
                                          32'bx;
  assign _alu_m_clock = m_clock;
  assign _alu_op_add = ex_alu & __net0 | (ex_alu & __net1 | (ex_store | (exec & __net42 | exec & __net43))) ? 
                         1'b1 : 
                         1'b0;
  assign _alu_op_and = ex_alu & __net4 ? 1'b1 : 1'b0;
  assign _alu_op_nor = ex_alu & __net7 ? 1'b1 : 1'b0;
  assign _alu_op_or = ex_alu & __net5 ? 1'b1 : 1'b0;
  assign _alu_op_sub = ex_alu & __net2 | (ex_alu & __net3 | ex_set) ? 
                         1'b1 : 
                         1'b0;
  assign _alu_op_xor = ex_alu & __net6 ? 1'b1 : 1'b0;
  assign _alu_p_reset = p_reset;
  assign _ex_alu_a = exec & __net32 ? __net33 : 32'bx;
  assign _ex_alu_b = exec & __net32 ? __net34 : 32'bx;
  assign _ex_set_a = exec & __net39 ? __net40 : 32'bx;
  assign _ex_set_b = exec & __net39 ? __net41 : 32'bx;
  assign _ex_set_neg_pos_12_1000 = ex_set ? 
                                     (_ex_set_a[31] & ~_ex_set_b[31]) == 1'B1 : 
                                     1'bx;
  assign _ex_set_pos_neg_12_1001 = ex_set ? 
                                     (~_ex_set_a[31] & _ex_set_b[31]) == 1'B1 : 
                                     1'bx;
  assign _ex_shift_b = exec & __net35 ? __net36 : 32'bx;
  assign _ex_shift_shamt = exec & __net35 ? __net37 : 5'bx;
  assign _ex_store_a = exec & __net44 ? __net45 : 32'bx;
  assign _ex_store_b = exec & __net44 ? __net46 : 32'bx;
  assign _ex_store_lo2_20_1002 = ex_store ? _alu_out[1:0] : 2'bx;
  assign _shift_in = ex_shift & __net8 ? 
                       _ex_shift_b : 
                       ex_shift & __net9 ? 
                         _ex_shift_b : 
                         ex_shift & __net10 ? 
                           _ex_shift_b : 
                           32'bx;
  assign _shift_m_clock = m_clock;
  assign _shift_p_reset = p_reset;
  assign _shift_shamt = ex_shift & __net8 ? 
                          _ex_shift_shamt : 
                          ex_shift & __net9 ? 
                            _ex_shift_shamt : 
                            ex_shift & __net10 ? 
                              _ex_shift_shamt : 
                              5'bx;
  assign _shift_sll = ex_shift & __net8 ? 1'b1 : 1'b0;
  assign _shift_sra = ex_shift & __net10 ? 1'b1 : 1'b0;
  assign _shift_srl = ex_shift & __net9 ? 1'b1 : 1'b0;
  assign ADD = 6'B100000;
  assign ADDI = 6'B001000;
  assign ADDIU = 6'B001001;
  assign ADDU = 6'B100001;
  assign AND = 6'B100100;
  assign ANDI = 6'B001100;
  assign BEQ = 6'B000100;
  assign BNE = 6'B000101;
  assign DIV = 6'B011010;
  assign DIVU = 6'B011011;
  assign isADD = op == 6'B001000 || isSPECIAL && funct == 6'B100000;
  assign isADDU = op == 6'B001001 || isSPECIAL && funct == 6'B100001;
  assign isALU = isADD || isADDU || isSUB || isSUBU || isAND || isOR || isXOR || isNOR;
  assign isAND = op == 6'B001100 || isSPECIAL && funct == 6'B100100;
  assign isBJ = op == 6'B000010 || op == 6'B000011 || op == 6'B000100 || op == 6'B000101;
  assign isDIV = isSPECIAL && funct == 6'B011010;
  assign isDIVIDER = isDIV || isDIVU;
  assign isDIVU = isSPECIAL && funct == 6'B011011;
  assign isLB = op == 6'B100000;
  assign isLOAD = isLB || isLW;
  assign isLUI = op == 6'B001111;
  assign isLW = op == 6'B100011;
  assign isMFHI = isSPECIAL && funct == 6'B010000;
  assign isMFLO = isSPECIAL && funct == 6'B010010;
  assign isMOVE = isMFHI || isMFLO;
  assign isMULT = isSPECIAL && funct == 6'B011000;
  assign isMULTIPLIER = isMULT || isMULTU;
  assign isMULTU = isSPECIAL && funct == 6'B011001;
  assign isNOR = isSPECIAL && funct == 6'B100111;
  assign isOR = op == 6'B001101 || isSPECIAL && funct == 6'B100101;
  assign isSB = op == 6'B101000;
  assign isSET = isSLT || isSLTU;
  assign isSHIFT = isSLL || isSRL || isSRA;
  assign isSLL = isSPECIAL && (funct == 6'B000000 || funct == 6'B000100);
  assign isSLT = op == 6'B001010 || isSPECIAL && funct == 6'B101010;
  assign isSLTU = op == 6'B001011 || isSPECIAL && funct == 6'B101011;
  assign isSPECIAL = op == 6'B000000;
  assign isSRA = isSPECIAL && (funct == 6'B000011 || funct == 6'B000111);
  assign isSRL = isSPECIAL && (funct == 6'B000010 || funct == 6'B000110);
  assign isSTORE = isSB || isSW;
  assign isSUB = isSPECIAL && funct == 6'B100010;
  assign isSUBU = isSPECIAL && funct == 6'B100011;
  assign isSW = op == 6'B101011;
  assign isXOR = op == 6'B001110 || isSPECIAL && funct == 6'B100110;
  assign J = 6'B000010;
  assign JAL = 6'B000011;
  assign JALR = 6'B001001;
  assign JR = 6'B001000;
  assign LB = 6'B100000;
  assign LUI = 6'B001111;
  assign LW = 6'B100011;
  assign mdata_out = exec & __net48 ? 
                       32'B11111111111111111111111111111111 : 
                       ex_store & __net31 ? 
                         mdata : 
                         ~(ex_store & __net25 & __net29) & (~(ex_store & __net25 & __net28) & (~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net30))) ? 
                           {24'B000000000000000000000000, mdata[7:0]} : 
                           ~(ex_store & __net25 & __net28) & (~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net29)) ? 
                             {{16'B0000000000000000, mdata[7:0]}, 8'B00000000} : 
                             ~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net28) ? 
                               {{8'B00000000, mdata[7:0]}, 16'B0000000000000000} : 
                               ex_store & __net25 & __net27 ? 
                                 {mdata[7:0], 24'B000000000000000000000000} : 
                                 32'bx;
  assign MFHI = 6'B010000;
  assign MFLO = 6'B010010;
  assign MULT = 6'B011000;
  assign MULTU = 6'B011001;
  assign NOR = 6'B100111;
  assign OR = 6'B100101;
  assign ORI = 6'B001101;
  assign result = exec & ~(__net43 | (__net42 | (__net39 | (__net38 | (__net35 | (__net32 | __net44)))))) ? 
                    32'B00010010001101000101011001111000 : 
                    exec & __net43 ? 
                      _alu_out : 
                      exec & __net42 ? 
                        _alu_out : 
                        exec & __net38 ? 
                          {b[15:0], 16'B0000000000000000} : 
                          ex_store ? 
                            _alu_out : 
                            ex_set & __net19 & ~(__net20 | __net21) ? 
                              (__net23[31] & 1'B1) == 1'B1 ? 
                                32'B00000000000000000000000000000001 : 
                                32'B00000000000000000000000000000000 : 
                              ~(ex_set & __net19 & __net20) & (ex_set & __net19 & __net21) ? 
                                32'B00000000000000000000000000000001 : 
                                ex_set & __net19 & __net20 ? 
                                  32'B00000000000000000000000000000000 : 
                                  ex_set & __net13 & ~(__net14 | __net15) ? 
                                    (__net17[31] & 1'B1) == 1'B1 ? 
                                      32'B00000000000000000000000000000001 : 
                                      32'B00000000000000000000000000000000 : 
                                    ~(ex_set & __net13 & __net14) & (ex_set & __net13 & __net15) ? 
                                      32'B00000000000000000000000000000000 : 
                                      ex_set & __net13 & __net14 ? 
                                        32'B00000000000000000000000000000001 : 
                                        ex_shift & __net10 ? 
                                          _shift_out : 
                                          ex_shift & __net9 ? 
                                            _shift_out : 
                                            ex_shift & __net8 ? 
                                              _shift_out : 
                                              ex_alu & __net7 ? 
                                                _alu_out : 
                                                ex_alu & __net6 ? 
                                                  _alu_out : 
                                                  ex_alu & __net5 ? 
                                                    _alu_out : 
                                                    ex_alu & __net4 ? 
                                                      _alu_out : 
                                                      ex_alu & __net3 ? 
                                                        _alu_out : 
                                                        ex_alu & __net2 ? 
                                                          _alu_out : 
                                                          ex_alu & __net1 ? 
                                                            _alu_out : 
                                                            ex_alu & __net0 ? 
                                                              _alu_out : 
                                                              32'bx;
  assign SB = 6'B101000;
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
  assign store_loc = exec & __net48 ? 
                       4'B0000 : 
                       ex_store & __net31 ? 
                         4'B1111 : 
                         ~(ex_store & __net25 & __net29) & (~(ex_store & __net25 & __net28) & (~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net30))) ? 
                           4'B0001 : 
                           ~(ex_store & __net25 & __net28) & (~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net29)) ? 
                             4'B0010 : 
                             ~(ex_store & __net25 & __net27) & (ex_store & __net25 & __net28) ? 
                               4'B0100 : 
                               ex_store & __net25 & __net27 ? 
                                 4'B1000 : 
                                 4'bx;
  assign SUB = 6'B100010;
  assign SUBU = 6'B100011;
  assign SW = 6'B101011;
  assign SYSCALL = 6'B001100;
  assign XOR = 6'B100110;
  assign XORI = 6'B001110;
  /* invokes */
  /* private function */
  assign ex_set = exec & __net39;
  assign ex_shift = exec & __net35;
  assign ex_alu = exec & __net32;
  assign ex_store = exec & __net44;
  /* defs */
  /* FunDef (private): ex_set */
  /* par */
  /* invoke: alu.op_sub */
  /* invoke */
  /* FunDef exec */
  /*   parameter: op: Bit(6) */
  /*   parameter: funct: Bit(6) */
  /*   parameter: shamt: Bit(5) */
  /*   parameter: a: Bit(32) */
  /*   parameter: b: Bit(32) */
  /*   parameter: mdata: Bit(32) */
endmodule
/* End of file (p32ExecUnit.v) */
