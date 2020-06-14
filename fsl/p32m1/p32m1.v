/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Tue Jun 09 20:38:08 JST 2020
 * 
 * The source file of this code: 'p32m1.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: p32m1 */

module p32m1(p_reset, m_clock, i_addr, i_data, i_read, d_addr, r_data, wr_data, w_loc, d_read, d_write, halt, dump_regs_done, inst_en, data_en, write_done, start, ibus_err, dbus_err, dump_regs);
  input         p_reset;
  wire          p_reset;
  input         m_clock;
  wire          m_clock;
  output [31:0] i_addr;
  wire   [31:0] i_addr;
  input  [31:0] i_data;
  wire   [31:0] i_data;
  output        i_read;
  wire          i_read;
  output [31:0] d_addr;
  wire   [31:0] d_addr;
  input  [31:0] r_data;
  wire   [31:0] r_data;
  output [31:0] wr_data;
  wire   [31:0] wr_data;
  output  [3:0] w_loc;
  wire    [3:0] w_loc;
  output        d_read;
  wire          d_read;
  output        d_write;
  wire          d_write;
  output        halt;
  wire          halt;
  output        dump_regs_done;
  wire          dump_regs_done;
  input         inst_en;
  wire          inst_en;
  input         data_en;
  wire          data_en;
  input         write_done;
  wire          write_done;
  input         start;
  wire          start;
  input         ibus_err;
  wire          ibus_err;
  input         dbus_err;
  wire          dbus_err;
  input         dump_regs;
  wire          dump_regs;
  /* for bundle-type input/output */
  /* param decls */
  parameter _stage_DUMP_REGS_state_st6 = 0;
  parameter _stage_DUMP_REGS_state_st5 = 1;
  parameter _stage_DUMP_REGS_state_st4 = 2;
  parameter _stage_DUMP_REGS_state_st3 = 3;
  parameter _stage_DUMP_REGS_state_st2 = 4;
  parameter _stage_DUMP_REGS_state_st1 = 5;
  parameter _stage_DUMP_REGS_state_st0 = 6;
  parameter _stage_MEM_state_st1 = 0;
  parameter _stage_MEM_state_st0 = 1;
  parameter _stage_IF_state_st1 = 0;
  parameter _stage_IF_state_st0 = 1;
  /* decls */
  /* reg decl */
  reg     [3:0] cause;
  /* reg decl */
  reg    [31:0] epc;
  /* reg decl */
  reg    [31:0] pc;
  /* reg decl */
  reg    [31:0] ex_mdr;
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
  /* ModuleInstance: regsfile: ___no_package___.regs32x32 */
  wire          _regsfile_p_reset;
  wire          _regsfile_m_clock;
  wire    [4:0] _regsfile_a_addr;
  wire   [31:0] _regsfile_b;
  wire    [4:0] _regsfile_in_addr;
  wire    [4:0] _regsfile_b_addr;
  wire          _regsfile_read_a;
  wire          _regsfile_clear;
  wire   [31:0] _regsfile_a;
  wire   [31:0] _regsfile_in;
  wire          _regsfile_write;
  wire          _regsfile_read_b;
  regs32x32 regsfile(.p_reset(_regsfile_p_reset),
                     .m_clock(_regsfile_m_clock),
                     .a_addr(_regsfile_a_addr),
                     .b(_regsfile_b),
                     .in_addr(_regsfile_in_addr),
                     .b_addr(_regsfile_b_addr),
                     .read_a(_regsfile_read_a),
                     .clear(_regsfile_clear),
                     .a(_regsfile_a),
                     .in(_regsfile_in),
                     .write(_regsfile_write),
                     .read_b(_regsfile_read_b));
  /* ModuleInstance: execunit: ___no_package___.p32ExecUnit */
  wire          _execunit_p_reset;
  wire          _execunit_m_clock;
  wire    [3:0] _execunit_store_loc;
  wire   [31:0] _execunit_result;
  wire   [31:0] _execunit_mdata;
  wire   [31:0] _execunit_b;
  wire    [5:0] _execunit_funct;
  wire   [31:0] _execunit_mdata_out;
  wire   [31:0] _execunit_a;
  wire    [5:0] _execunit_op;
  wire          _execunit_exec;
  wire    [4:0] _execunit_shamt;
  p32ExecUnit execunit(.p_reset(_execunit_p_reset),
                       .m_clock(_execunit_m_clock),
                       .store_loc(_execunit_store_loc),
                       .result(_execunit_result),
                       .mdata(_execunit_mdata),
                       .b(_execunit_b),
                       .funct(_execunit_funct),
                       .mdata_out(_execunit_mdata_out),
                       .a(_execunit_a),
                       .op(_execunit_op),
                       .exec(_execunit_exec),
                       .shamt(_execunit_shamt));
  /* ModuleInstance: decodeunit: ___no_package___.p32DecodeUnit */
  wire          _decodeunit_p_reset;
  wire          _decodeunit_m_clock;
  wire   [31:0] _decodeunit_a_out;
  wire    [4:0] _decodeunit_shamt_out;
  wire   [31:0] _decodeunit_pc_out;
  wire   [31:0] _decodeunit_epc_out;
  wire          _decodeunit_set_epc;
  wire          _decodeunit_update_pc;
  wire   [31:0] _decodeunit_a_data;
  wire   [31:0] _decodeunit_b_out;
  wire          _decodeunit_undefined_inst;
  wire   [31:0] _decodeunit_mdr_out;
  wire    [4:0] _decodeunit_dest_out;
  wire   [31:0] _decodeunit_inst;
  wire   [31:0] _decodeunit_b_data;
  wire          _decodeunit_decode;
  wire          _decodeunit_update_mdr;
  wire   [31:0] _decodeunit_pc;
  wire    [3:0] _decodeunit_cause_out;
  wire          _decodeunit_exception;
  wire          _decodeunit_set_cause;
  wire    [5:0] _decodeunit_funct_out;
  p32DecodeUnit decodeunit(.p_reset(_decodeunit_p_reset),
                           .m_clock(_decodeunit_m_clock),
                           .a_out(_decodeunit_a_out),
                           .shamt_out(_decodeunit_shamt_out),
                           .pc_out(_decodeunit_pc_out),
                           .epc_out(_decodeunit_epc_out),
                           .set_epc(_decodeunit_set_epc),
                           .update_pc(_decodeunit_update_pc),
                           .a_data(_decodeunit_a_data),
                           .b_out(_decodeunit_b_out),
                           .undefined_inst(_decodeunit_undefined_inst),
                           .mdr_out(_decodeunit_mdr_out),
                           .dest_out(_decodeunit_dest_out),
                           .inst(_decodeunit_inst),
                           .b_data(_decodeunit_b_data),
                           .decode(_decodeunit_decode),
                           .update_mdr(_decodeunit_update_mdr),
                           .pc(_decodeunit_pc),
                           .cause_out(_decodeunit_cause_out),
                           .exception(_decodeunit_exception),
                           .set_cause(_decodeunit_set_cause),
                           .funct_out(_decodeunit_funct_out));
  /* local decls */
  wire    [3:0] __decodeunit_set_cause_cause_in;
  wire   [31:0] __decodeunit_set_epc_epc_in;
  wire   [31:0] __decodeunit_update_mdr_mdr_in;
  wire   [31:0] __decodeunit_update_pc_pc_in;
  wire    [3:0] __net0;
  wire    [3:0] __net1;
  wire          __net10;
  wire          __net100;
  wire          __net101;
  wire          __net102;
  wire          __net103;
  wire          __net104;
  wire          __net105;
  wire          __net106;
  wire          __net107;
  wire          __net11;
  wire   [31:0] __net12;
  wire          __net13;
  wire          __net14;
  wire          __net15;
  wire          __net16;
  wire   [31:0] __net17;
  wire   [31:0] __net18;
  wire   [31:0] __net19;
  wire   [31:0] __net2;
  wire   [31:0] __net20;
  wire   [31:0] __net21;
  wire          __net22;
  wire          __net23;
  wire          __net24;
  wire          __net25;
  wire    [5:0] __net26;
  wire    [5:0] __net27;
  wire    [4:0] __net28;
  wire    [4:0] __net29;
  wire    [3:0] __net3;
  wire   [31:0] __net30;
  wire   [31:0] __net31;
  wire    [5:0] __net32;
  wire    [5:0] __net33;
  wire    [4:0] __net34;
  wire   [31:0] __net35;
  wire   [31:0] __net36;
  wire   [31:0] __net37;
  wire          __net38;
  wire          __net39;
  wire          __net4;
  wire    [5:0] __net40;
  wire    [4:0] __net41;
  wire   [31:0] __net42;
  wire   [31:0] __net43;
  wire    [3:0] __net44;
  wire          __net45;
  wire          __net46;
  wire          __net47;
  wire   [31:0] __net48;
  wire          __net49;
  wire          __net5;
  wire    [5:0] __net50;
  wire    [4:0] __net51;
  wire   [31:0] __net52;
  wire   [31:0] __net53;
  wire          __net54;
  wire          __net55;
  wire   [31:0] __net56;
  wire    [3:0] __net57;
  wire   [31:0] __net58;
  wire    [5:0] __net59;
  wire          __net6;
  wire    [4:0] __net60;
  wire   [31:0] __net61;
  wire   [31:0] __net62;
  wire          __net63;
  wire    [5:0] __net64;
  wire    [4:0] __net65;
  wire   [31:0] __net66;
  wire   [31:0] __net67;
  wire          __net68;
  wire          __net69;
  wire   [31:0] __net7;
  wire          __net70;
  wire    [5:0] __net71;
  wire    [4:0] __net72;
  wire   [31:0] __net73;
  wire   [31:0] __net74;
  wire    [5:0] __net75;
  wire   [31:0] __net76;
  wire          __net77;
  wire          __net78;
  wire   [31:0] __net79;
  wire          __net8;
  wire   [31:0] __net80;
  wire          __net81;
  wire          __net82;
  wire    [4:0] __net83;
  wire   [31:0] __net84;
  wire          __net85;
  wire          __net86;
  wire   [31:0] __net87;
  wire    [1:0] __net88;
  wire   [31:0] __net89;
  wire   [31:0] __net9;
  wire          __net90;
  wire          __net91;
  wire          __net92;
  wire          __net93;
  wire    [4:0] __net94;
  wire          __net95;
  wire          __net96;
  wire          __net97;
  wire          __net98;
  wire    [4:0] __net99;
  wire          __stage_DUMP_REGS_reset;
  wire          __stage_DUMP_REGS_set;
  wire          __stage_EX_reset;
  wire          __stage_EX_set;
  wire          __stage_ID_reset;
  wire          __stage_ID_set;
  wire          __stage_IF_reset;
  wire          __stage_IF_set;
  wire          __stage_MEM_reset;
  wire          __stage_MEM_set;
  wire          __stage_START_reset;
  wire          __stage_START_set;
  wire          __stage_STOP_reset;
  wire          __stage_STOP_set;
  wire          __stage_WB_reset;
  wire          __stage_WB_set;
  wire   [31:0] _align_data_lb_addr;
  wire   [31:0] _align_data_lb_data;
  wire    [1:0] _align_data_lb_lo2_38_1000;
  wire   [31:0] _align_data_lb_result_;
  wire    [4:0] _ID_a_addr_11;
  wire   [31:0] _ID_a_data_11;
  wire    [4:0] _ID_b_addr_11;
  wire   [31:0] _ID_b_data_11;
  wire   [31:0] _ID_inst_11;
  wire    [3:0] _set_cause_cause_in;
  wire   [31:0] _set_epc_epc_in;
  wire    [4:0] _WB_w_addr_36;
  wire   [31:0] _WB_w_data_36;
  wire    [4:0] _WB_wb_addr_31;
  wire   [31:0] _WB_wb_data_31;
  wire    [5:0] ADD;
  wire    [5:0] ADDI;
  wire    [5:0] ADDIU;
  wire    [5:0] ADDU;
  wire          align_data_lb;
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
  wire   [31:0] INITIAL_PC;
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
  wire          reset;
  wire    [5:0] SB;
  wire          set_cause;
  wire          set_epc;
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
  /* reg decls */
  reg           _stage_START_reg;
  reg           _stage_STOP_reg;
  reg           _stage_IF_reg;
  reg           _stage_IF_state_reg;
  reg    [31:0] _stage_ID_ir;
  reg           _stage_ID_reg;
  reg     [5:0] _stage_EX_ex_op;
  reg     [5:0] _stage_EX_ex_funct;
  reg     [4:0] _stage_EX_ex_shamt;
  reg     [4:0] _stage_EX_ex_dest;
  reg    [31:0] _stage_EX_ex_a;
  reg    [31:0] _stage_EX_ex_b;
  reg           _stage_EX_reg;
  reg     [5:0] _stage_MEM_mem_op;
  reg     [4:0] _stage_MEM_mem_dest;
  reg    [31:0] _stage_MEM_mem_in;
  reg    [31:0] _stage_MEM_mem_mdr;
  reg     [3:0] _stage_MEM_store_loc;
  reg           _stage_MEM_reg;
  reg           _stage_MEM_state_reg;
  reg     [5:0] _stage_WB_wb_op;
  reg     [4:0] _stage_WB_wb_dest;
  reg    [31:0] _stage_WB_wb_in;
  reg    [31:0] _stage_WB_wb_load_data;
  reg           _stage_WB_reg;
  reg     [4:0] _stage_DUMP_REGS_n;
  reg           _stage_DUMP_REGS_reg;
  reg     [2:0] _stage_DUMP_REGS_state_reg;
  /* assigns */
  assign __decodeunit_set_cause_cause_in = _decodeunit_set_cause ? 
                                             _decodeunit_cause_out : 
                                             4'bx;
  assign __decodeunit_set_epc_epc_in = _decodeunit_set_epc ? 
                                         _decodeunit_epc_out : 
                                         32'bx;
  assign __decodeunit_update_mdr_mdr_in = _decodeunit_update_mdr ? 
                                            _decodeunit_mdr_out : 
                                            32'bx;
  assign __decodeunit_update_pc_pc_in = _decodeunit_update_pc ? 
                                          _decodeunit_pc_out : 
                                          32'bx;
  assign __net0 = ibus_err ? 4'B0110 : 4'bx;
  assign __net1 = dbus_err ? 4'B0110 : 4'bx;
  assign __net10 = _stage_IF_reg & __net8 ? reset : 1'bx;
  assign __net100 = _stage_DUMP_REGS_reg & __net98 ? 
                      __net99 == 5'B00000 ? 
                        1'b1 : 
                        1'b0 : 
                      1'bx;
  assign __net101 = _stage_DUMP_REGS_reg & __net98 ? 
                      __net99 == 5'B01000 ? 
                        1'b1 : 
                        1'b0 : 
                      1'bx;
  assign __net102 = _stage_DUMP_REGS_reg & __net98 ? 
                      __net99 == 5'B10000 ? 
                        1'b1 : 
                        1'b0 : 
                      1'bx;
  assign __net103 = _stage_DUMP_REGS_reg & __net98 ? 
                      __net99 == 5'B11000 ? 
                        1'b1 : 
                        1'b0 : 
                      1'bx;
  assign __net105 = _stage_DUMP_REGS_reg & __net104 ? 
                      _stage_DUMP_REGS_n != 5'B11000 ? 
                        1'b1 : 
                        1'b0 : 
                      1'bx;
  assign __net11 = _stage_IF_reg & __net8 ? inst_en : 1'bx;
  assign __net12 = _stage_IF_reg & __net8 & __net11 ? i_data : 32'bx;
  assign __net15 = _stage_IF_reg & __net14 ? reset : 1'bx;
  assign __net16 = _stage_IF_reg & __net14 ? inst_en : 1'bx;
  assign __net17 = _stage_IF_reg & __net14 & __net16 ? i_data : 32'bx;
  assign __net18 = _stage_ID_reg ? _ID_inst_11 : 32'bx;
  assign __net19 = _stage_ID_reg ? _ID_a_data_11 : 32'bx;
  assign __net2 = _decodeunit_set_epc ? __decodeunit_set_epc_epc_in : 32'bx;
  assign __net20 = _stage_ID_reg ? _ID_b_data_11 : 32'bx;
  assign __net21 = _stage_ID_reg ? pc : 32'bx;
  assign __net22 = _stage_ID_reg ? reset : 1'bx;
  assign __net23 = _stage_ID_reg ? _decodeunit_undefined_inst : 1'bx;
  assign __net24 = _stage_ID_reg ? _decodeunit_undefined_inst : 1'bx;
  assign __net26 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _ID_inst_11[31:26] : 
                     6'bx;
  assign __net27 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _ID_inst_11[5:0] : 
                     6'bx;
  assign __net28 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _decodeunit_shamt_out : 
                     5'bx;
  assign __net29 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _decodeunit_dest_out : 
                     5'bx;
  assign __net3 = _decodeunit_set_cause ? 
                    __decodeunit_set_cause_cause_in : 
                    4'bx;
  assign __net30 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _decodeunit_a_out : 
                     32'bx;
  assign __net31 = _stage_ID_reg & ~(__net22 | __net24) ? 
                     _decodeunit_b_out : 
                     32'bx;
  assign __net32 = _stage_EX_reg ? _stage_EX_ex_op : 6'bx;
  assign __net33 = _stage_EX_reg ? _stage_EX_ex_funct : 6'bx;
  assign __net34 = _stage_EX_reg ? _stage_EX_ex_shamt : 5'bx;
  assign __net35 = _stage_EX_reg ? _stage_EX_ex_a : 32'bx;
  assign __net36 = _stage_EX_reg ? _stage_EX_ex_b : 32'bx;
  assign __net37 = _stage_EX_reg ? ex_mdr : 32'bx;
  assign __net38 = _stage_EX_reg ? reset : 1'bx;
  assign __net4 = _stage_START_reg ? reset : 1'bx;
  assign __net40 = _stage_EX_reg & ~__net38 ? _stage_EX_ex_op : 6'bx;
  assign __net41 = _stage_EX_reg & ~__net38 ? _stage_EX_ex_dest : 5'bx;
  assign __net42 = _stage_EX_reg & ~__net38 ? _execunit_result : 32'bx;
  assign __net43 = _stage_EX_reg & ~__net38 ? _execunit_mdata_out : 32'bx;
  assign __net44 = _stage_EX_reg & ~__net38 ? _execunit_store_loc : 4'bx;
  assign __net46 = _stage_MEM_reg & __net45 ? reset : 1'bx;
  assign __net47 = _stage_MEM_reg & __net45 ? 
                     _stage_MEM_mem_op == 6'B100011 || _stage_MEM_mem_op == 6'B100000 : 
                     1'bx;
  assign __net48 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net49 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) ? 
                     data_en : 
                     1'bx;
  assign __net5 = _stage_START_reg ? start : 1'bx;
  assign __net50 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                     _stage_MEM_mem_op : 
                     6'bx;
  assign __net51 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                     _stage_MEM_mem_dest : 
                     5'bx;
  assign __net52 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net53 = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                     r_data : 
                     32'bx;
  assign __net55 = _stage_MEM_reg & __net45 ? 
                     _stage_MEM_mem_op == 6'B101011 || _stage_MEM_mem_op == 6'B101000 : 
                     1'bx;
  assign __net56 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net57 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_store_loc : 
                     4'bx;
  assign __net58 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_mem_mdr : 
                     32'bx;
  assign __net59 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_mem_op : 
                     6'bx;
  assign __net60 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_mem_dest : 
                     5'bx;
  assign __net61 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net62 = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     32'B00000000000000000000000000000000 : 
                     32'bx;
  assign __net64 = _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                     _stage_MEM_mem_op : 
                     6'bx;
  assign __net65 = _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                     _stage_MEM_mem_dest : 
                     5'bx;
  assign __net66 = _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net67 = _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                     32'B00000000000000000000000000000000 : 
                     32'bx;
  assign __net69 = _stage_MEM_reg & __net68 ? reset : 1'bx;
  assign __net7 = _stage_START_reg & ~(__net4 | __net5) ? 
                    32'B00000000000000000000000000000000 : 
                    32'bx;
  assign __net70 = _stage_MEM_reg & __net68 ? data_en : 1'bx;
  assign __net71 = ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                     _stage_MEM_mem_op : 
                     6'bx;
  assign __net72 = ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                     _stage_MEM_mem_dest : 
                     5'bx;
  assign __net73 = ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                     _stage_MEM_mem_in : 
                     32'bx;
  assign __net74 = ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                     r_data : 
                     32'bx;
  assign __net75 = _stage_WB_reg ? _stage_WB_wb_op : 6'bx;
  assign __net76 = ~(_stage_WB_reg & __net78) & (~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net81)) ? 
                     _stage_WB_wb_in : 
                     ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78) ? 
                       _align_data_lb_result_ : 
                       _stage_WB_reg & __net77 ? 
                         _stage_WB_wb_load_data : 
                         32'bx;
  assign __net77 = _stage_WB_reg ? __net75 == 6'B100011 ? 1'b1 : 1'b0 : 1'bx;
  assign __net78 = _stage_WB_reg ? __net75 == 6'B100000 ? 1'b1 : 1'b0 : 1'bx;
  assign __net79 = ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78) ? 
                     _stage_WB_wb_in : 
                     32'bx;
  assign __net80 = ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78) ? 
                     _stage_WB_wb_load_data : 
                     32'bx;
  assign __net81 = _stage_WB_reg ? 
                     ~(__net75 == 6'B100011) & ~(__net75 == 6'B100000) ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net82 = _stage_WB_reg ? !_stage_ID_reg : 1'bx;
  assign __net83 = _stage_WB_reg & __net82 ? _WB_w_addr_36 : 5'bx;
  assign __net84 = _stage_WB_reg & __net82 ? _WB_w_data_36 : 32'bx;
  assign __net85 = _stage_WB_reg ? reset : 1'bx;
  assign __net87 = _stage_WB_reg & ~__net85 ? pc : 32'bx;
  assign __net88 = align_data_lb ? _align_data_lb_lo2_38_1000 : 2'bx;
  assign __net89 = ~(align_data_lb & __net92) & (~(align_data_lb & __net91) & (~(align_data_lb & __net90) & (align_data_lb & __net93))) ? 
                     {{ 24 { _align_data_lb_data[7]} }, _align_data_lb_data[7:0]} : 
                     ~(align_data_lb & __net91) & (~(align_data_lb & __net90) & (align_data_lb & __net92)) ? 
                       {{ 24 { _align_data_lb_data[15]} }, _align_data_lb_data[15:8]} : 
                       ~(align_data_lb & __net90) & (align_data_lb & __net91) ? 
                         {{ 24 { _align_data_lb_data[23]} }, _align_data_lb_data[23:16]} : 
                         align_data_lb & __net90 ? 
                           {{ 24 { _align_data_lb_data[31]} }, _align_data_lb_data[31:24]} : 
                           32'bx;
  assign __net9 = _stage_IF_reg & __net8 ? pc : 32'bx;
  assign __net90 = align_data_lb ? __net88 == 2'B00 ? 1'b1 : 1'b0 : 1'bx;
  assign __net91 = align_data_lb ? __net88 == 2'B01 ? 1'b1 : 1'b0 : 1'bx;
  assign __net92 = align_data_lb ? __net88 == 2'B10 ? 1'b1 : 1'b0 : 1'bx;
  assign __net93 = align_data_lb ? __net88 == 2'B11 ? 1'b1 : 1'b0 : 1'bx;
  assign __net94 = dump_regs ? 5'B00000 : 5'bx;
  assign __net99 = _stage_DUMP_REGS_reg & __net98 ? 
                     _stage_DUMP_REGS_n : 
                     5'bx;
  assign __stage_DUMP_REGS_reset = _stage_DUMP_REGS_reg & __net107 ? 
                                     1'b1 : 
                                     1'b0;
  assign __stage_DUMP_REGS_set = dump_regs ? 1'b1 : 1'b0;
  assign __stage_EX_reset = _stage_EX_reg & ~__net38 ? 
                              1'b1 : 
                              _stage_EX_reg & __net38 ? 
                                1'b1 : 
                                1'b0;
  assign __stage_EX_set = _stage_ID_reg & ~(__net22 | __net24) ? 1'b1 : 1'b0;
  assign __stage_ID_reset = _stage_ID_reg & ~(__net22 | __net24) ? 
                              1'b1 : 
                              _stage_ID_reg & __net24 ? 
                                1'b1 : 
                                _stage_ID_reg & __net22 ? 
                                  1'b1 : 
                                  1'b0;
  assign __stage_ID_set = _stage_IF_reg & __net8 & __net11 ? 
                            1'b1 : 
                            _stage_IF_reg & __net14 & __net16 ? 
                              1'b1 : 
                              1'b0;
  assign __stage_IF_reset = _stage_IF_reg & __net14 & __net16 ? 
                              1'b1 : 
                              _stage_IF_reg & __net14 & __net15 ? 
                                1'b1 : 
                                _stage_IF_reg & __net8 & __net11 ? 
                                  1'b1 : 
                                  _stage_IF_reg & __net8 & __net10 ? 
                                    1'b1 : 
                                    1'b0;
  assign __stage_IF_set = _stage_START_reg & ~(__net4 | __net5) ? 
                            1'b1 : 
                            _stage_WB_reg & ~__net85 ? 
                              1'b1 : 
                              1'b0;
  assign __stage_MEM_reset = ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                               1'b1 : 
                               _stage_MEM_reg & __net68 & __net69 ? 
                                 1'b1 : 
                                 _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                                   1'b1 : 
                                   ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                                     1'b1 : 
                                     ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                                       1'b1 : 
                                       _stage_MEM_reg & __net45 & __net46 ? 
                                         1'b1 : 
                                         1'b0;
  assign __stage_MEM_set = _stage_EX_reg & ~__net38 ? 1'b1 : 1'b0;
  assign __stage_START_reset = _stage_START_reg & ~(__net4 | __net5) ? 
                                 1'b1 : 
                                 _stage_START_reg & __net5 ? 
                                   1'b1 : 
                                   _stage_START_reg & __net4 ? 
                                     1'b1 : 
                                     1'b0;
  assign __stage_START_set = start ? 1'b1 : 1'b0;
  assign __stage_STOP_reset = _stage_STOP_reg ? 1'b1 : 1'b0;
  assign __stage_STOP_set = ibus_err ? 
                              1'b1 : 
                              dbus_err ? 
                                1'b1 : 
                                _decodeunit_exception ? 
                                  1'b1 : 
                                  1'b0;
  assign __stage_WB_reset = _stage_WB_reg & ~__net85 ? 
                              1'b1 : 
                              _stage_WB_reg & __net85 ? 
                                1'b1 : 
                                1'b0;
  assign __stage_WB_set = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49 ? 
                            1'b1 : 
                            ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                              1'b1 : 
                              _stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)) ? 
                                1'b1 : 
                                ~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70) ? 
                                  1'b1 : 
                                  1'b0;
  assign _align_data_lb_addr = ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78) ? 
                                 __net79 : 
                                 32'bx;
  assign _align_data_lb_data = ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78) ? 
                                 __net80 : 
                                 32'bx;
  assign _align_data_lb_lo2_38_1000 = align_data_lb ? 
                                        _align_data_lb_addr[1:0] : 
                                        2'bx;
  assign _align_data_lb_result_ = align_data_lb ? __net89 : 32'bx;
  assign _decodeunit_a_data = _stage_ID_reg ? __net19 : 32'bx;
  assign _decodeunit_b_data = _stage_ID_reg ? __net20 : 32'bx;
  assign _decodeunit_decode = _stage_ID_reg ? 1'b1 : 1'b0;
  assign _decodeunit_inst = _stage_ID_reg ? __net18 : 32'bx;
  assign _decodeunit_m_clock = m_clock;
  assign _decodeunit_p_reset = p_reset;
  assign _decodeunit_pc = _stage_ID_reg ? __net21 : 32'bx;
  assign _execunit_a = _stage_EX_reg ? __net35 : 32'bx;
  assign _execunit_b = _stage_EX_reg ? __net36 : 32'bx;
  assign _execunit_exec = _stage_EX_reg ? 1'b1 : 1'b0;
  assign _execunit_funct = _stage_EX_reg ? __net33 : 6'bx;
  assign _execunit_m_clock = m_clock;
  assign _execunit_mdata = _stage_EX_reg ? __net37 : 32'bx;
  assign _execunit_op = _stage_EX_reg ? __net32 : 6'bx;
  assign _execunit_p_reset = p_reset;
  assign _execunit_shamt = _stage_EX_reg ? __net34 : 5'bx;
  assign _ID_a_addr_11 = _stage_ID_reg ? _ID_inst_11[25:21] : 5'bx;
  assign _ID_a_data_11 = _stage_ID_reg ? _regsfile_a : 32'bx;
  assign _ID_b_addr_11 = _stage_ID_reg ? _ID_inst_11[20:16] : 5'bx;
  assign _ID_b_data_11 = _stage_ID_reg ? _regsfile_b : 32'bx;
  assign _ID_inst_11 = _stage_ID_reg ? _stage_ID_ir : 32'bx;
  assign _pc_add_a = _stage_IF_reg & __net8 ? pc : 32'bx;
  assign _pc_add_add = _stage_IF_reg & __net8 ? 1'b1 : 1'b0;
  assign _pc_add_b = _stage_IF_reg & __net8 ? 
                       32'B00000000000000000000000000000100 : 
                       32'bx;
  assign _pc_add_cin = _stage_IF_reg & __net8 ? 1'B0 : 1'bx;
  assign _pc_add_m_clock = m_clock;
  assign _pc_add_p_reset = p_reset;
  assign _regsfile_a_addr = _stage_ID_reg ? 
                              _ID_a_addr_11 : 
                              _stage_DUMP_REGS_reg & __net95 ? 
                                _stage_DUMP_REGS_n : 
                                _stage_DUMP_REGS_reg & __net96 ? 
                                  _stage_DUMP_REGS_n + 5'B00010 : 
                                  _stage_DUMP_REGS_reg & __net97 ? 
                                    _stage_DUMP_REGS_n + 5'B00100 : 
                                    _stage_DUMP_REGS_reg & __net98 ? 
                                      _stage_DUMP_REGS_n + 5'B00110 : 
                                      5'bx;
  assign _regsfile_b_addr = _stage_ID_reg ? 
                              _ID_b_addr_11 : 
                              _stage_DUMP_REGS_reg & __net95 ? 
                                _stage_DUMP_REGS_n + 5'B00001 : 
                                _stage_DUMP_REGS_reg & __net96 ? 
                                  _stage_DUMP_REGS_n + 5'B00011 : 
                                  _stage_DUMP_REGS_reg & __net97 ? 
                                    _stage_DUMP_REGS_n + 5'B00101 : 
                                    _stage_DUMP_REGS_reg & __net98 ? 
                                      _stage_DUMP_REGS_n + 5'B00111 : 
                                      5'bx;
  assign _regsfile_clear = start ? 1'b1 : 1'b0;
  assign _regsfile_in = _stage_WB_reg & __net82 ? __net84 : 32'bx;
  assign _regsfile_in_addr = _stage_WB_reg & __net82 ? __net83 : 5'bx;
  assign _regsfile_m_clock = m_clock;
  assign _regsfile_p_reset = p_reset;
  assign _regsfile_read_a = _stage_ID_reg | (_stage_DUMP_REGS_reg & __net95 | (_stage_DUMP_REGS_reg & __net96 | (_stage_DUMP_REGS_reg & __net97 | _stage_DUMP_REGS_reg & __net98))) ? 
                              1'b1 : 
                              1'b0;
  assign _regsfile_read_b = _stage_ID_reg | (_stage_DUMP_REGS_reg & __net95 | (_stage_DUMP_REGS_reg & __net96 | (_stage_DUMP_REGS_reg & __net97 | _stage_DUMP_REGS_reg & __net98))) ? 
                              1'b1 : 
                              1'b0;
  assign _regsfile_write = _stage_WB_reg & __net82 ? 1'b1 : 1'b0;
  assign _set_cause_cause_in = ibus_err ? 
                                 __net0 : 
                                 dbus_err ? 
                                   __net1 : 
                                   _decodeunit_set_cause ? 
                                     __net3 : 
                                     4'bx;
  assign _set_epc_epc_in = _decodeunit_set_epc ? __net2 : 32'bx;
  assign _WB_w_addr_36 = _stage_WB_reg & __net82 ? _WB_wb_addr_31 : 5'bx;
  assign _WB_w_data_36 = _stage_WB_reg & __net82 ? _WB_wb_data_31 : 32'bx;
  assign _WB_wb_addr_31 = _stage_WB_reg ? _stage_WB_wb_dest : 5'bx;
  assign _WB_wb_data_31 = _stage_WB_reg ? __net76 : 32'bx;
  assign ADD = 6'B100000;
  assign ADDI = 6'B001000;
  assign ADDIU = 6'B001001;
  assign ADDU = 6'B100001;
  assign AND = 6'B100100;
  assign ANDI = 6'B001100;
  assign BEQ = 6'B000100;
  assign BNE = 6'B000101;
  assign CAUSE_BP = 4'B1001;
  assign CAUSE_DBE = 4'B0111;
  assign CAUSE_IBE = 4'B0110;
  assign CAUSE_INT = 4'B0000;
  assign CAUSE_OVF = 4'B1100;
  assign CAUSE_RI = 4'B1010;
  assign CAUSE_SYS = 4'B1000;
  assign d_addr = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) ? 
                    __net48 : 
                    ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                      __net56 : 
                      32'bx;
  assign DIV = 6'B011010;
  assign DIVU = 6'B011011;
  assign EXCEPTION_HANDLER = 32'B10000000000000000000000010000000;
  assign i_addr = _stage_IF_reg & __net8 ? __net9 : 32'bx;
  assign INITIAL_PC = 32'B00000000000000000000000000000000;
  assign J = 6'B000010;
  assign JAL = 6'B000011;
  assign JALR = 6'B001001;
  assign JR = 6'B001000;
  assign LB = 6'B100000;
  assign LUI = 6'B001111;
  assign LW = 6'B100011;
  assign MFHI = 6'B010000;
  assign MFLO = 6'B010010;
  assign MULT = 6'B011000;
  assign MULTU = 6'B011001;
  assign NOR = 6'B100111;
  assign OR = 6'B100101;
  assign ORI = 6'B001101;
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
  assign SUB = 6'B100010;
  assign SUBU = 6'B100011;
  assign SW = 6'B101011;
  assign SYSCALL = 6'B001100;
  assign w_loc = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                   __net57 : 
                   4'bx;
  assign wr_data = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)) ? 
                     __net58 : 
                     32'bx;
  assign XOR = 6'B100110;
  assign XORI = 6'B001110;
  /* invokes */
  /* private function */
  assign align_data_lb = ~(_stage_WB_reg & __net77) & (_stage_WB_reg & __net78);
  assign d_write = ~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55));
  assign i_read = _stage_IF_reg & __net8;
  assign set_epc = _decodeunit_set_epc;
  assign d_read = ~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47);
  assign dump_regs_done = _stage_DUMP_REGS_reg & __net107;
  assign halt = _stage_STOP_reg;
  assign reset = _stage_STOP_reg;
  assign set_cause = ibus_err | (dbus_err | _decodeunit_set_cause);
  /* defs */
  /* FunDef inst_en */
  /*   parameter: i_data: Bit(32) */
  /* FunDef data_en */
  /*   parameter: r_data: Bit(32) */
  /* FunDef (private): _decodeunit_set_epc */
  /* invoke: set_epc */
  /* no result */
  /* FunDef (private): _decodeunit_set_cause */
  /* invoke: set_cause */
  /* no result */
  /* StageDef: START */
  /* StageBody */
  /* any */
  /* any: BinOp(&,Var(_stage_START_reg),Var(__net4)) */
  /* finish */
  /* any: BinOp(&,Var(_stage_START_reg),Var(__net5)) */
  /* finish */
  /* any else */
  /* relay IF */
  /* StageDef: STOP */
  /* StageBody */
  /* par */
  /* invoke: halt */
  /* no result */
  /* invoke: reset */
  /* no result */
  /* finish */
  /* StageDef: IF */
  /* StageBody */
  /* StateDef: st0:  */
  assign __net8 = _stage_IF_state_reg == _stage_IF_state_st0;
  /* par */
  /* invoke: i_read */
  /* no result */
  /* any */
  /* any: BinOp(&,BinOp(&,Var(_stage_IF_reg),Var(__net8)),Var(__net10)) */
  /* finish */
  /* any: BinOp(&,BinOp(&,Var(_stage_IF_reg),Var(__net8)),Var(__net11)) */
  /* relay ID */
  /* any else */
  /* goto: st1 */
  /* StateDef: st1:  */
  assign __net14 = _stage_IF_state_reg == _stage_IF_state_st1;
  /* par */
  /* any */
  /* any: BinOp(&,BinOp(&,Var(_stage_IF_reg),Var(__net14)),Var(__net15)) */
  /* finish */
  /* any: BinOp(&,BinOp(&,Var(_stage_IF_reg),Var(__net14)),Var(__net16)) */
  /* par */
  /* relay ID */
  /* goto: st0 */
  /* StageDef: ID */
  /* StageBody */
  /* par */
  /* invoke: decodeunit.decode */
  /* invoke */
  /* any */
  /* any: BinOp(&,Var(_stage_ID_reg),Var(__net22)) */
  /* finish */
  /* any: BinOp(&,Var(_stage_ID_reg),Var(__net24)) */
  /* finish */
  /* any else */
  /* relay EX */
  /* StageDef: EX */
  /* StageBody */
  /* par */
  /* invoke: execunit.exec */
  /* invoke */
  /* any */
  /* any: BinOp(&,Var(_stage_EX_reg),Var(__net38)) */
  /* finish */
  /* any else */
  /* par */
  /* relay MEM */
  /* StageDef: MEM */
  /* StageBody */
  /* StateDef: st0:  */
  assign __net45 = _stage_MEM_state_reg == _stage_MEM_state_st0;
  /* par */
  /* alt */
  /* alt: BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net46)) */
  /* finish */
  /* alt: BinOp(&,UnaryOp(~,BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net46))),BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net47))) */
  /* par */
  /* invoke: d_read */
  /* no result */
  /* any */
  /* any: BinOp(&,BinOp(&,UnaryOp(~,BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net46))),BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net47))),Var(__net49)) */
  /* par */
  /* relay WB */
  /* any else */
  /* goto: st1 */
  /* alt: BinOp(&,UnaryOp(~,BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net47))),BinOp(&,UnaryOp(~,BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net46))),BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net45)),Var(__net55)))) */
  /* par */
  /* invoke: d_write */
  /* no result */
  /* relay WB */
  /* alt else */
  /* par */
  /* relay WB */
  /* StateDef: st1:  */
  assign __net68 = _stage_MEM_state_reg == _stage_MEM_state_st1;
  /* par */
  /* alt */
  /* alt: BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net68)),Var(__net69)) */
  /* finish */
  /* alt: BinOp(&,UnaryOp(~,BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net68)),Var(__net69))),BinOp(&,BinOp(&,Var(_stage_MEM_reg),Var(__net68)),Var(__net70))) */
  /* par */
  /* relay WB */
  /* goto: st0 */
  /* StageDef: WB */
  /* StageBody */
  /* par */
  /* any */
  /* any: BinOp(&,Var(_stage_WB_reg),Var(__net82)) */
  /* par */
  /* invoke: regsfile.write */
  /* invoke */
  /* any */
  /* any: BinOp(&,Var(_stage_WB_reg),Var(__net85)) */
  /* finish */
  /* any else */
  /* relay IF */
  /* StageDef: DUMP_REGS */
  /* StageBody */
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r0;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r1;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r2;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r3;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r4;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r5;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r6;
  /* reg decl */
  reg    [31:0] _stage_DUMP_REGS_reg_r7;
  /* StateDef: st0:  */
  assign __net95 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st0;
  /* par */
  /* goto: st1 */
  /* StateDef: st1:  */
  assign __net96 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st1;
  /* par */
  /* goto: st2 */
  /* StateDef: st2:  */
  assign __net97 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st2;
  /* par */
  /* goto: st3 */
  /* StateDef: st3:  */
  assign __net98 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st3;
  /* par */
  /* goto: st4 */
  /* StateDef: st4:  */
  assign __net104 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st4;
  /* par */
  /* SystemTaskFun: '$display' */
  /* StateDef: st5:  */
  assign __net106 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st5;
  /* par */
  /* SystemTaskFun: '$display' */
  /* goto: st6 */
  /* StateDef: st6:  */
  assign __net107 = _stage_DUMP_REGS_state_reg == _stage_DUMP_REGS_state_st6;
  /* par */
  /* invoke: dump_regs_done */
  /* no result */
  /* finish */
  /* goto: st0 */
  /* stage reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg <= 1'b0;
      else if (__stage_DUMP_REGS_set | __stage_DUMP_REGS_reset)
        _stage_DUMP_REGS_reg <= __stage_DUMP_REGS_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WB_reg <= 1'b0;
      else if (__stage_WB_set | __stage_WB_reset)
        _stage_WB_reg <= __stage_WB_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_reg <= 1'b0;
      else if (__stage_MEM_set | __stage_MEM_reset)
        _stage_MEM_reg <= __stage_MEM_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_reg <= 1'b0;
      else if (__stage_EX_set | __stage_EX_reset)
        _stage_EX_reg <= __stage_EX_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_ID_reg <= 1'b0;
      else if (__stage_ID_set | __stage_ID_reset)
        _stage_ID_reg <= __stage_ID_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_IF_reg <= 1'b0;
      else if (__stage_IF_set | __stage_IF_reset)
        _stage_IF_reg <= __stage_IF_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_STOP_reg <= 1'b0;
      else if (__stage_STOP_set | __stage_STOP_reset)
        _stage_STOP_reg <= __stage_STOP_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_START_reg <= 1'b0;
      else if (__stage_START_set | __stage_START_reset)
        _stage_START_reg <= __stage_START_set;
    end
  /* stage params updates */
  /* stage: DUMP_REGS: params: (n,true) */
  /* stage: WB: params: (wb_op,true), (wb_dest,true), (wb_in,true), (wb_load_data,true) */
  /* stage: MEM: params: (mem_op,true), (mem_dest,true), (mem_in,true), (mem_mdr,true), (store_loc,true) */
  /* stage: EX: params: (ex_op,true), (ex_funct,true), (ex_shamt,true), (ex_dest,true), (ex_a,true), (ex_b,true) */
  /* stage: ID: params: (ir,true) */
  /* stage: IF: params: (pc,false) */
  /* stage: STOP: params:  */
  /* stage: START: params:  */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r3 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net96)
        _stage_DUMP_REGS_reg_r3 <= _regsfile_b;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r6 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net98)
        _stage_DUMP_REGS_reg_r6 <= _regsfile_a;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_mem_dest <= 1'b0;
      else if (_stage_EX_reg & ~__net38)
        _stage_MEM_mem_dest <= __net41;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_store_loc <= 1'b0;
      else if (_stage_EX_reg & ~__net38)
        _stage_MEM_store_loc <= __net44;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_n <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net104 & __net105)
        _stage_DUMP_REGS_n <= _stage_DUMP_REGS_n + 5'B01000;
      else if (dump_regs)
        _stage_DUMP_REGS_n <= __net94;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_mem_in <= 1'b0;
      else if (_stage_EX_reg & ~__net38)
        _stage_MEM_mem_in <= __net42;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_funct <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_funct <= __net27;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r5 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net97)
        _stage_DUMP_REGS_reg_r5 <= _regsfile_b;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        ex_mdr <= 32'b0;
      else if (_decodeunit_update_mdr)
        ex_mdr <= __decodeunit_update_mdr_mdr_in;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WB_wb_in <= 1'b0;
      else if (~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70))
        _stage_WB_wb_in <= __net73;
      else if (_stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)))
        _stage_WB_wb_in <= __net66;
      else if (~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)))
        _stage_WB_wb_in <= __net61;
      else if (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49)
        _stage_WB_wb_in <= __net52;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        cause <= 4'b0;
      else if (set_cause)
        cause <= _set_cause_cause_in;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_op <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_op <= __net26;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_mem_op <= 1'b0;
      else if (_stage_EX_reg & ~__net38)
        _stage_MEM_mem_op <= __net40;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_b <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_b <= __net31;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r2 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net96)
        _stage_DUMP_REGS_reg_r2 <= _regsfile_a;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WB_wb_dest <= 1'b0;
      else if (~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70))
        _stage_WB_wb_dest <= __net72;
      else if (_stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)))
        _stage_WB_wb_dest <= __net65;
      else if (~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)))
        _stage_WB_wb_dest <= __net60;
      else if (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49)
        _stage_WB_wb_dest <= __net51;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WB_wb_op <= 1'b0;
      else if (~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70))
        _stage_WB_wb_op <= __net71;
      else if (_stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)))
        _stage_WB_wb_op <= __net64;
      else if (~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)))
        _stage_WB_wb_op <= __net59;
      else if (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49)
        _stage_WB_wb_op <= __net50;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_ID_ir <= 1'b0;
      else if (_stage_IF_reg & __net14 & __net16)
        _stage_ID_ir <= __net17;
      else if (_stage_IF_reg & __net8 & __net11)
        _stage_ID_ir <= __net12;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WB_wb_load_data <= 1'b0;
      else if (~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70))
        _stage_WB_wb_load_data <= __net74;
      else if (_stage_MEM_reg & __net45 & ~(__net47 | (__net46 | __net55)))
        _stage_WB_wb_load_data <= __net67;
      else if (~(_stage_MEM_reg & __net45 & __net47) & (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net55)))
        _stage_WB_wb_load_data <= __net62;
      else if (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & __net49)
        _stage_WB_wb_load_data <= __net53;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_mem_mdr <= 1'b0;
      else if (_stage_EX_reg & ~__net38)
        _stage_MEM_mem_mdr <= __net43;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_a <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_a <= __net30;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        epc <= 32'b0;
      else if (set_epc)
        epc <= _set_epc_epc_in;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r4 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net97)
        _stage_DUMP_REGS_reg_r4 <= _regsfile_a;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r7 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net98)
        _stage_DUMP_REGS_reg_r7 <= _regsfile_b;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        pc <= 32'b0;
      else if (_decodeunit_update_pc)
        pc <= __decodeunit_update_pc_pc_in;
      else if (_stage_IF_reg & __net8)
        pc <= _pc_add_sum;
      else if (_stage_WB_reg & ~__net85)
        pc <= __net87;
      else if (_stage_START_reg & ~(__net4 | __net5))
        pc <= __net7;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r1 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net95)
        _stage_DUMP_REGS_reg_r1 <= _regsfile_b;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_dest <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_dest <= __net29;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_reg_r0 <= 1'b0;
      else if (_stage_DUMP_REGS_reg & __net95)
        _stage_DUMP_REGS_reg_r0 <= _regsfile_a;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_EX_ex_shamt <= 1'b0;
      else if (_stage_ID_reg & ~(__net22 | __net24))
        _stage_EX_ex_shamt <= __net28;
    end
  /* state reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st0;
      else if (_stage_DUMP_REGS_reg & __net95)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st1;
      else if (_stage_DUMP_REGS_reg & __net96)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st2;
      else if (_stage_DUMP_REGS_reg & __net97)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st3;
      else if (_stage_DUMP_REGS_reg & __net98)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st4;
      else if (_stage_DUMP_REGS_reg & __net104 & __net105)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st0;
      else if (_stage_DUMP_REGS_reg & __net104 & ~__net105)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st5;
      else if (_stage_DUMP_REGS_reg & __net106)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st6;
      else if (_stage_DUMP_REGS_reg & __net107)
        _stage_DUMP_REGS_state_reg <= _stage_DUMP_REGS_state_st0;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_MEM_state_reg <= _stage_MEM_state_st0;
      else if (~(_stage_MEM_reg & __net45 & __net46) & (_stage_MEM_reg & __net45 & __net47) & ~__net49)
        _stage_MEM_state_reg <= _stage_MEM_state_st1;
      else if (~(_stage_MEM_reg & __net68 & __net69) & (_stage_MEM_reg & __net68 & __net70))
        _stage_MEM_state_reg <= _stage_MEM_state_st0;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_IF_state_reg <= _stage_IF_state_st0;
      else if (_stage_IF_reg & __net8 & ~(__net10 | __net11))
        _stage_IF_state_reg <= _stage_IF_state_st1;
      else if (_stage_IF_reg & __net14 & __net16)
        _stage_IF_state_reg <= _stage_IF_state_st0;
    end
  /* always */
  always @(posedge m_clock)
    if (_stage_DUMP_REGS_reg & __net106)
      $display("pc: %x  epc: %x  cause: %x", pc, epc, cause);
  always @(posedge m_clock)
    if (_stage_DUMP_REGS_reg & __net104)
      $display("%x %x %x %x %x %x %x %x", _stage_DUMP_REGS_reg_r0, _stage_DUMP_REGS_reg_r1, _stage_DUMP_REGS_reg_r2, _stage_DUMP_REGS_reg_r3, _stage_DUMP_REGS_reg_r4, _stage_DUMP_REGS_reg_r5, _stage_DUMP_REGS_reg_r6, _stage_DUMP_REGS_reg_r7);
  always @(posedge m_clock)
    if (~(_stage_DUMP_REGS_reg & __net98 & __net102) & (~(_stage_DUMP_REGS_reg & __net98 & __net101) & (~(_stage_DUMP_REGS_reg & __net98 & __net100) & (_stage_DUMP_REGS_reg & __net98 & __net103))))
      $display(" t8(24)   t9(25)   k0(26)   k1(27)   gp(28)   sp(29)   fp(30)   ra(31) ");
  always @(posedge m_clock)
    if (~(_stage_DUMP_REGS_reg & __net98 & __net101) & (~(_stage_DUMP_REGS_reg & __net98 & __net100) & (_stage_DUMP_REGS_reg & __net98 & __net102)))
      $display(" s0(16)   s1(17)   s2(18)   s3(19)   s4(20)   s5(21)   s6(22)   s7(23) ");
  always @(posedge m_clock)
    if (~(_stage_DUMP_REGS_reg & __net98 & __net100) & (_stage_DUMP_REGS_reg & __net98 & __net101))
      $display(" t0(8)    t1(9)    t2(10)   t3(11)   t4(12)   t5(13)   t6(14)   t7(15) ");
  always @(posedge m_clock)
    if (_stage_DUMP_REGS_reg & __net98 & __net100)
      $display(" zero(0)  at(1)    v0(2)    v1(3)    a0(4)    a1(5)    a2(6)    a3(7)  ");
endmodule
/* End of file (p32m1.v) */
