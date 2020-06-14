/*
 * This code is produced by: 
 *   FSL Compiler version 0.1 alpha (2020-05-19) build 20E314
 *   Designed by Nobuya WATANABE, Okayama University, 2015-2020.
 * 
 *   Thu Jun 04 17:20:04 JST 2020
 * 
 * The source file of this code: 'test_p32p1.fsl'.
 * 
 * INFO: 
 * 
 */
/* ModuleDef: test_p32p1 */

module test_p32p1(p_reset, m_clock);
  input        p_reset;
  wire         p_reset;
  input        m_clock;
  wire         m_clock;
  /* for bundle-type input/output */
  /* param decls */
  parameter _stage_WAIT_DUMP_REGS_state_st1 = 0;
  parameter _stage_WAIT_DUMP_REGS_state_st0 = 1;
  /* decls */
  /* reg decl */
  reg   [31:0] count;
  /* reg decl */
  reg   [31:0] inst_count;
  /* reg decl */
  reg   [31:0] load_count;
  /* reg decl */
  reg   [31:0] store_count;
  /* ModuleInstance: cpu: ___no_package___.p32p1 */
  wire         _cpu_p_reset;
  wire         _cpu_m_clock;
  wire         _cpu_write_done;
  wire         _cpu_dump_regs;
  wire         _cpu_d_write;
  wire         _cpu_i_read;
  wire         _cpu_inst_en;
  wire         _cpu_d_read;
  wire         _cpu_data_en;
  wire  [31:0] _cpu_r_data;
  wire         _cpu_ibus_err;
  wire         _cpu_dbus_err;
  wire         _cpu_dump_regs_done;
  wire  [31:0] _cpu_i_addr;
  wire  [31:0] _cpu_d_addr;
  wire  [31:0] _cpu_i_data;
  wire         _cpu_halt;
  wire   [3:0] _cpu_w_loc;
  wire  [31:0] _cpu_wr_data;
  wire         _cpu_start;
  p32p1 cpu(.p_reset(_cpu_p_reset),
            .m_clock(_cpu_m_clock),
            .write_done(_cpu_write_done),
            .dump_regs(_cpu_dump_regs),
            .d_write(_cpu_d_write),
            .i_read(_cpu_i_read),
            .inst_en(_cpu_inst_en),
            .d_read(_cpu_d_read),
            .data_en(_cpu_data_en),
            .r_data(_cpu_r_data),
            .ibus_err(_cpu_ibus_err),
            .dbus_err(_cpu_dbus_err),
            .dump_regs_done(_cpu_dump_regs_done),
            .i_addr(_cpu_i_addr),
            .d_addr(_cpu_d_addr),
            .i_data(_cpu_i_data),
            .halt(_cpu_halt),
            .w_loc(_cpu_w_loc),
            .wr_data(_cpu_wr_data),
            .start(_cpu_start));
  /* MemDecl im0 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] im0[0:16383];
  /* MemDecl im1 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] im1[0:16383];
  /* MemDecl im2 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] im2[0:16383];
  /* MemDecl im3 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] im3[0:16383];
  /* MemDecl dm0 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] dm0[0:16383];
  /* MemDecl dm1 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] dm1[0:16383];
  /* MemDecl dm2 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] dm2[0:16383];
  /* MemDecl dm3 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] dm3[0:16383];
  /* MemDecl sm0 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] sm0[0:16383];
  /* MemDecl sm1 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] sm1[0:16383];
  /* MemDecl sm2 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] sm2[0:16383];
  /* MemDecl sm3 (BitType 8) size: IConst(16384,16384) */
  reg    [7:0] sm3[0:16383];
  /* local decls */
  wire  [31:0] __cpu_d_read_addr;
  wire  [15:0] __cpu_d_read_hi_6_1006;
  wire  [13:0] __cpu_d_read_lo_6_1007;
  wire  [31:0] __cpu_d_write_addr;
  wire  [31:0] __cpu_d_write_data;
  wire  [15:0] __cpu_d_write_hi_19_1012;
  wire  [13:0] __cpu_d_write_lo_19_1013;
  wire   [3:0] __cpu_d_write_loc;
  wire  [31:0] __cpu_i_read_addr;
  wire  [15:0] __cpu_i_read_hi_3_1000;
  wire  [31:0] __cpu_i_read_inst_3_1002;
  wire  [13:0] __cpu_i_read_lo_3_1001;
  wire         __net0;
  wire         __net1;
  wire         __net10;
  wire  [31:0] __net11;
  wire  [13:0] __net12;
  wire  [13:0] __net13;
  wire  [13:0] __net14;
  wire  [13:0] __net15;
  wire  [31:0] __net16;
  wire  [15:0] __net17;
  wire         __net18;
  wire  [31:0] __net19;
  wire         __net2;
  wire         __net20;
  wire  [31:0] __net21;
  wire         __net22;
  wire  [31:0] __net23;
  wire  [15:0] __net24;
  wire         __net25;
  wire  [13:0] __net26;
  wire  [13:0] __net27;
  wire  [13:0] __net28;
  wire  [13:0] __net29;
  wire  [13:0] __net3;
  wire  [31:0] __net30;
  wire         __net31;
  wire  [13:0] __net32;
  wire  [13:0] __net33;
  wire  [13:0] __net34;
  wire  [13:0] __net35;
  wire  [31:0] __net36;
  wire         __net37;
  wire  [31:0] __net38;
  wire  [15:0] __net39;
  wire  [13:0] __net4;
  wire         __net40;
  wire         __net41;
  wire   [7:0] __net42;
  wire         __net43;
  wire   [7:0] __net44;
  wire         __net45;
  wire   [7:0] __net46;
  wire         __net47;
  wire   [7:0] __net48;
  wire         __net49;
  wire  [13:0] __net5;
  wire         __net50;
  wire   [7:0] __net51;
  wire         __net52;
  wire   [7:0] __net53;
  wire         __net54;
  wire   [7:0] __net55;
  wire         __net56;
  wire   [7:0] __net57;
  wire         __net58;
  wire  [31:0] __net59;
  wire  [13:0] __net6;
  wire         __net60;
  wire         __net61;
  wire         __net62;
  wire         __net63;
  wire         __net7;
  wire  [31:0] __net8;
  wire  [31:0] __net9;
  wire         __stage_DMEM_reset;
  wire         __stage_DMEM_set;
  wire         __stage_IMEM_reset;
  wire         __stage_IMEM_set;
  wire         __stage_WAIT_DUMP_REGS_reset;
  wire         __stage_WAIT_DUMP_REGS_set;
  wire  [31:0] _data_bus_error_addr;
  wire  [31:0] _data_enable_addr;
  wire  [31:0] _data_enable_dm_data_15_1010;
  wire  [15:0] _data_enable_hi_13_1008;
  wire  [13:0] _data_enable_lo_13_1009;
  wire  [31:0] _data_enable_sm_data_17_1011;
  wire  [31:0] _inst_bus_error_addr;
  wire  [31:0] _inst_enable_addr;
  wire  [15:0] _inst_enable_hi_6_1003;
  wire  [31:0] _inst_enable_inst_6_1005;
  wire  [13:0] _inst_enable_lo_6_1004;
  wire   [5:0] ADD;
  wire   [5:0] ADDI;
  wire   [5:0] ADDIU;
  wire   [5:0] ADDU;
  wire   [5:0] AND;
  wire   [5:0] ANDI;
  wire   [5:0] BEQ;
  wire   [5:0] BNE;
  wire   [3:0] CAUSE_BP;
  wire   [3:0] CAUSE_DBE;
  wire   [3:0] CAUSE_IBE;
  wire   [3:0] CAUSE_INT;
  wire   [3:0] CAUSE_OVF;
  wire   [3:0] CAUSE_RI;
  wire   [3:0] CAUSE_SYS;
  wire         data_bus_error;
  wire         data_enable;
  wire   [5:0] DIV;
  wire   [5:0] DIVU;
  wire   [7:0] DMEM_LATENCY;
  wire         dump_regs;
  wire   [7:0] IMEM_LATENCY;
  wire         inst_bus_error;
  wire         inst_enable;
  wire   [5:0] J;
  wire   [5:0] JAL;
  wire   [5:0] JALR;
  wire   [5:0] JR;
  wire   [5:0] LB;
  wire         load_mem;
  wire   [5:0] LUI;
  wire   [5:0] LW;
  wire   [5:0] MFHI;
  wire   [5:0] MFLO;
  wire   [5:0] MULT;
  wire   [5:0] MULTU;
  wire   [5:0] NOR;
  wire   [5:0] OR;
  wire   [5:0] ORI;
  wire         report_statistics;
  wire   [5:0] SB;
  wire   [5:0] SLL;
  wire   [5:0] SLLV;
  wire   [5:0] SLT;
  wire   [5:0] SLTI;
  wire   [5:0] SLTIU;
  wire   [5:0] SLTU;
  wire   [5:0] SPECIAL;
  wire   [5:0] SRA;
  wire   [5:0] SRAV;
  wire   [5:0] SRL;
  wire   [5:0] SRLV;
  wire   [5:0] SUB;
  wire   [5:0] SUBU;
  wire   [5:0] SW;
  wire   [5:0] SYSCALL;
  wire   [5:0] XOR;
  wire   [5:0] XORI;
  /* reg decls */
  reg   [31:0] _stage_IMEM_addr;
  reg    [7:0] _stage_IMEM_latency;
  reg          _stage_IMEM_reg;
  reg   [31:0] _stage_DMEM_addr;
  reg    [7:0] _stage_DMEM_latency;
  reg          _stage_DMEM_reg;
  reg          _stage_WAIT_DUMP_REGS_reg;
  reg          _stage_WAIT_DUMP_REGS_state_reg;
  /* assigns */
  assign __cpu_d_read_addr = _cpu_d_read ? _cpu_d_addr : 32'bx;
  assign __cpu_d_read_hi_6_1006 = _cpu_d_read ? 
                                    __cpu_d_read_addr[31:16] : 
                                    16'bx;
  assign __cpu_d_read_lo_6_1007 = _cpu_d_read ? 
                                    __cpu_d_read_addr[15:2] : 
                                    14'bx;
  assign __cpu_d_write_addr = _cpu_d_write ? _cpu_d_addr : 32'bx;
  assign __cpu_d_write_data = _cpu_d_write ? _cpu_wr_data : 32'bx;
  assign __cpu_d_write_hi_19_1012 = _cpu_d_write ? 
                                      __cpu_d_write_addr[31:16] : 
                                      16'bx;
  assign __cpu_d_write_lo_19_1013 = _cpu_d_write ? 
                                      __cpu_d_write_addr[15:2] : 
                                      14'bx;
  assign __cpu_d_write_loc = _cpu_d_write ? _cpu_w_loc : 4'bx;
  assign __cpu_i_read_addr = _cpu_i_read ? _cpu_i_addr : 32'bx;
  assign __cpu_i_read_hi_3_1000 = _cpu_i_read ? 
                                    __cpu_i_read_addr[31:16] : 
                                    16'bx;
  assign __cpu_i_read_inst_3_1002 = _cpu_i_read ? 
                                      {{{im0[__net3], im1[__net4]}, im2[__net5]}, im3[__net6]} : 
                                      32'bx;
  assign __cpu_i_read_lo_3_1001 = _cpu_i_read ? 
                                    __cpu_i_read_addr[15:2] : 
                                    14'bx;
  assign __net0 = count == 1 ? 1'b1 : 1'b0;
  assign __net1 = count == 10 ? 1'b1 : 1'b0;
  assign __net10 = _stage_IMEM_reg ? 
                     _stage_IMEM_latency == 1 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net11 = _stage_IMEM_reg & __net10 ? _stage_IMEM_addr : 32'bx;
  assign __net12 = inst_enable ? _inst_enable_lo_6_1004 : 14'bx;
  assign __net13 = inst_enable ? _inst_enable_lo_6_1004 : 14'bx;
  assign __net14 = inst_enable ? _inst_enable_lo_6_1004 : 14'bx;
  assign __net15 = inst_enable ? _inst_enable_lo_6_1004 : 14'bx;
  assign __net16 = inst_enable ? _inst_enable_inst_6_1005 : 32'bx;
  assign __net17 = _cpu_d_read ? __cpu_d_read_hi_6_1006 : 16'bx;
  assign __net18 = _cpu_d_read ? 
                     __net17 == 16'B0001000000000000 | __net17 == 16'B0111111111111111 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net19 = _cpu_d_read & __net18 ? __cpu_d_read_addr : 32'bx;
  assign __net2 = count == 250000 ? 1'b1 : 1'b0;
  assign __net20 = _cpu_d_read ? 
                     ~(__net17 == 16'B0001000000000000 | __net17 == 16'B0111111111111111) ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net21 = ~(_cpu_d_read & __net18) & (_cpu_d_read & __net20) ? 
                     __cpu_d_read_addr : 
                     32'bx;
  assign __net22 = _stage_DMEM_reg ? 
                     _stage_DMEM_latency == 1 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net23 = _stage_DMEM_reg & __net22 ? _stage_DMEM_addr : 32'bx;
  assign __net24 = data_enable ? _data_enable_hi_13_1008 : 16'bx;
  assign __net25 = data_enable ? 
                     __net24 == 16'B0001000000000000 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net26 = data_enable & __net25 ? _data_enable_lo_13_1009 : 14'bx;
  assign __net27 = data_enable & __net25 ? _data_enable_lo_13_1009 : 14'bx;
  assign __net28 = data_enable & __net25 ? _data_enable_lo_13_1009 : 14'bx;
  assign __net29 = data_enable & __net25 ? _data_enable_lo_13_1009 : 14'bx;
  assign __net3 = _cpu_i_read ? __cpu_i_read_lo_3_1001 : 14'bx;
  assign __net30 = data_enable & __net25 ? 
                     _data_enable_dm_data_15_1010 : 
                     32'bx;
  assign __net31 = data_enable ? 
                     __net24 == 16'B0111111111111111 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net32 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                     _data_enable_lo_13_1009 : 
                     14'bx;
  assign __net33 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                     _data_enable_lo_13_1009 : 
                     14'bx;
  assign __net34 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                     _data_enable_lo_13_1009 : 
                     14'bx;
  assign __net35 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                     _data_enable_lo_13_1009 : 
                     14'bx;
  assign __net36 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                     _data_enable_sm_data_17_1011 : 
                     32'bx;
  assign __net37 = data_enable ? 
                     ~(__net24 == 16'B0001000000000000) & ~(__net24 == 16'B0111111111111111) ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net38 = ~(data_enable & __net31) & (~(data_enable & __net25) & (data_enable & __net37)) ? 
                     _data_enable_addr : 
                     32'bx;
  assign __net39 = _cpu_d_write ? __cpu_d_write_hi_19_1012 : 16'bx;
  assign __net4 = _cpu_i_read ? __cpu_i_read_lo_3_1001 : 14'bx;
  assign __net40 = _cpu_d_write ? 
                     __net39 == 16'B0001000000000000 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net41 = _cpu_d_write & __net40 ? 
                     __cpu_d_write_loc[3] == 1'B1 : 
                     1'bx;
  assign __net42 = _cpu_d_write & __net40 & __net41 ? 
                     __cpu_d_write_data[31:24] : 
                     8'bx;
  assign __net43 = _cpu_d_write & __net40 ? 
                     __cpu_d_write_loc[2] == 1'B1 : 
                     1'bx;
  assign __net44 = _cpu_d_write & __net40 & __net43 ? 
                     __cpu_d_write_data[23:16] : 
                     8'bx;
  assign __net45 = _cpu_d_write & __net40 ? 
                     __cpu_d_write_loc[1] == 1'B1 : 
                     1'bx;
  assign __net46 = _cpu_d_write & __net40 & __net45 ? 
                     __cpu_d_write_data[15:8] : 
                     8'bx;
  assign __net47 = _cpu_d_write & __net40 ? 
                     __cpu_d_write_loc[0] == 1'B1 : 
                     1'bx;
  assign __net48 = _cpu_d_write & __net40 & __net47 ? 
                     __cpu_d_write_data[7:0] : 
                     8'bx;
  assign __net49 = _cpu_d_write ? 
                     __net39 == 16'B0111111111111111 ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net5 = _cpu_i_read ? __cpu_i_read_lo_3_1001 : 14'bx;
  assign __net50 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) ? 
                     __cpu_d_write_loc[3] == 1'B1 : 
                     1'bx;
  assign __net51 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net50 ? 
                     __cpu_d_write_data[31:24] : 
                     8'bx;
  assign __net52 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) ? 
                     __cpu_d_write_loc[2] == 1'B1 : 
                     1'bx;
  assign __net53 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net52 ? 
                     __cpu_d_write_data[23:16] : 
                     8'bx;
  assign __net54 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) ? 
                     __cpu_d_write_loc[1] == 1'B1 : 
                     1'bx;
  assign __net55 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net54 ? 
                     __cpu_d_write_data[15:8] : 
                     8'bx;
  assign __net56 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) ? 
                     __cpu_d_write_loc[0] == 1'B1 : 
                     1'bx;
  assign __net57 = ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net56 ? 
                     __cpu_d_write_data[7:0] : 
                     8'bx;
  assign __net58 = _cpu_d_write ? 
                     ~(__net39 == 16'B0001000000000000) & ~(__net39 == 16'B0111111111111111) ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net59 = ~(_cpu_d_write & __net49) & (~(_cpu_d_write & __net40) & (_cpu_d_write & __net58)) ? 
                     __cpu_d_write_addr : 
                     32'bx;
  assign __net6 = _cpu_i_read ? __cpu_i_read_lo_3_1001 : 14'bx;
  assign __net61 = _stage_WAIT_DUMP_REGS_reg & __net60 ? 
                     _cpu_dump_regs_done : 
                     1'bx;
  assign __net62 = _stage_WAIT_DUMP_REGS_reg & __net60 ? 
                     _cpu_dump_regs_done ? 
                       1'b1 : 
                       1'b0 : 
                     1'bx;
  assign __net7 = _cpu_i_read ? 
                    __cpu_i_read_hi_3_1000 == 16'B0000000000000000 ? 
                      1'b1 : 
                      1'b0 : 
                    1'bx;
  assign __net8 = _cpu_i_read & __net7 ? __cpu_i_read_addr : 32'bx;
  assign __net9 = _cpu_i_read & ~__net7 ? __cpu_i_read_addr : 32'bx;
  assign __stage_DMEM_reset = _stage_DMEM_reg & __net22 ? 1'b1 : 1'b0;
  assign __stage_IMEM_reset = _stage_IMEM_reg & __net10 ? 1'b1 : 1'b0;
  assign __stage_WAIT_DUMP_REGS_reset = _stage_WAIT_DUMP_REGS_reg & __net63 ? 
                                          1'b1 : 
                                          1'b0;
  assign __stage_WAIT_DUMP_REGS_set = dump_regs ? 1'b1 : 1'b0;
  assign _cpu_data_en = data_enable & __net25 | ~(data_enable & __net25) & (data_enable & __net31) ? 
                          1'b1 : 
                          1'b0;
  assign _cpu_dbus_err = 1'b0;
  assign _cpu_dump_regs = dump_regs ? 1'b1 : 1'b0;
  assign _cpu_i_data = inst_enable ? __net16 : 32'bx;
  assign _cpu_ibus_err = 1'b0;
  assign _cpu_inst_en = inst_enable ? 1'b1 : 1'b0;
  assign _cpu_m_clock = m_clock;
  assign _cpu_p_reset = p_reset;
  assign _cpu_r_data = data_enable & __net25 ? 
                         __net30 : 
                         ~(data_enable & __net25) & (data_enable & __net31) ? 
                           __net36 : 
                           32'bx;
  assign _cpu_start = __net1 ? 1'b1 : 1'b0;
  assign _cpu_write_done = _cpu_d_write & __net40 | ~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) ? 
                             1'b1 : 
                             1'b0;
  assign _data_bus_error_addr = ~(_cpu_d_read & __net18) & (_cpu_d_read & __net20) ? 
                                  __net21 : 
                                  ~(data_enable & __net31) & (~(data_enable & __net25) & (data_enable & __net37)) ? 
                                    __net38 : 
                                    ~(_cpu_d_write & __net49) & (~(_cpu_d_write & __net40) & (_cpu_d_write & __net58)) ? 
                                      __net59 : 
                                      32'bx;
  assign _data_enable_addr = _cpu_d_read & __net18 ? 
                               __net19 : 
                               _stage_DMEM_reg & __net22 ? 
                                 __net23 : 
                                 32'bx;
  assign _data_enable_dm_data_15_1010 = data_enable & __net25 ? 
                                          {{{dm0[__net26], dm1[__net27]}, dm2[__net28]}, dm3[__net29]} : 
                                          32'bx;
  assign _data_enable_hi_13_1008 = data_enable ? 
                                     _data_enable_addr[31:16] : 
                                     16'bx;
  assign _data_enable_lo_13_1009 = data_enable ? 
                                     _data_enable_addr[15:2] : 
                                     14'bx;
  assign _data_enable_sm_data_17_1011 = ~(data_enable & __net25) & (data_enable & __net31) ? 
                                          {{{sm0[__net32], sm1[__net33]}, sm2[__net34]}, sm3[__net35]} : 
                                          32'bx;
  assign _inst_bus_error_addr = _cpu_i_read & ~__net7 ? __net9 : 32'bx;
  assign _inst_enable_addr = _cpu_i_read & __net7 ? 
                               __net8 : 
                               _stage_IMEM_reg & __net10 ? 
                                 __net11 : 
                                 32'bx;
  assign _inst_enable_hi_6_1003 = inst_enable ? 
                                    _inst_enable_addr[31:16] : 
                                    16'bx;
  assign _inst_enable_inst_6_1005 = inst_enable ? 
                                      {{{im0[__net12], im1[__net13]}, im2[__net14]}, im3[__net15]} : 
                                      32'bx;
  assign _inst_enable_lo_6_1004 = inst_enable ? 
                                    _inst_enable_addr[15:2] : 
                                    14'bx;
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
  assign DIV = 6'B011010;
  assign DIVU = 6'B011011;
  assign DMEM_LATENCY = 8'B00000000;
  assign IMEM_LATENCY = 8'B00000000;
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
  assign XOR = 6'B100110;
  assign XORI = 6'B001110;
  /* invokes */
  /* private function */
  assign dump_regs = _cpu_halt;
  assign data_bus_error = ~(_cpu_d_read & __net18) & (_cpu_d_read & __net20) | (~(data_enable & __net31) & (~(data_enable & __net25) & (data_enable & __net37)) | ~(_cpu_d_write & __net49) & (~(_cpu_d_write & __net40) & (_cpu_d_write & __net58)));
  assign report_statistics = __net2 | _stage_WAIT_DUMP_REGS_reg & __net60 & __net62;
  assign inst_bus_error = _cpu_i_read & ~__net7;
  assign inst_enable = _cpu_i_read & __net7 | _stage_IMEM_reg & __net10;
  assign data_enable = _cpu_d_read & __net18 | _stage_DMEM_reg & __net22;
  assign load_mem = __net0;
  /* defs */
  /* FunDef (private): load_mem */
  /* BlockExpr */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* SystemTaskFun: '$readmemh' */
  /* always */
  /* FunDef (private): inst_enable */
  /* SystemTaskFun: '$display' */
  /* invoke: cpu.inst_en */
  /* invoke */
  /* FunDef (private): inst_bus_error */
  /* SystemTaskFun: '$display' */
  /* FunDef (private): data_bus_error */
  /* SystemTaskFun: '$display' */
  /* FunDef (private): _cpu_halt */
  /* BlockExpr */
  /* invoke: dump_regs */
  /* no result */
  /* SystemTaskFun: '$display' */
  /* FunDef (private): report_statistics */
  /* SystemTaskFun: '$display' */
  /* FunDef (private): dump_regs */
  /* BlockExpr */
  /* invoke: cpu.dump_regs */
  /* invoke */
  /* StageDef: WAIT_DUMP_REGS */
  /* StageBody */
  /* StateDef: st0:  */
  assign __net60 = _stage_WAIT_DUMP_REGS_state_reg == _stage_WAIT_DUMP_REGS_state_st0;
  /* StateDef: st1:  */
  assign __net63 = _stage_WAIT_DUMP_REGS_state_reg == _stage_WAIT_DUMP_REGS_state_st1;
  /* par */
  /* SystemTaskFun: '$finish' */
  /* goto: st0 */
  /* finish */
  /* stage reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WAIT_DUMP_REGS_reg <= 1'b0;
      else if (__stage_WAIT_DUMP_REGS_set | __stage_WAIT_DUMP_REGS_reset)
        _stage_WAIT_DUMP_REGS_reg <= __stage_WAIT_DUMP_REGS_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DMEM_reg <= 1'b0;
      else if (__stage_DMEM_set | __stage_DMEM_reset)
        _stage_DMEM_reg <= __stage_DMEM_set;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_IMEM_reg <= 1'b0;
      else if (__stage_IMEM_set | __stage_IMEM_reset)
        _stage_IMEM_reg <= __stage_IMEM_set;
    end
  /* stage params updates */
  /* stage: WAIT_DUMP_REGS: params:  */
  /* stage: DMEM: no parameters */
  /* stage: IMEM: no parameters */
  /* reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        count <= 32'b0;
      else
        count <= count + 32'B00000000000000000000000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        store_count <= 32'b0;
      else if (__net1)
        store_count <= 0;
      else if (_cpu_d_write & __net40)
        store_count <= store_count + 32'B00000000000000000000000000000001;
      else if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49))
        store_count <= store_count + 32'B00000000000000000000000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        inst_count <= 32'b0;
      else if (__net1)
        inst_count <= 0;
      else if (inst_enable)
        inst_count <= inst_count + 32'B00000000000000000000000000000001;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_DMEM_latency <= 1'b0;
      else if (_stage_DMEM_reg & ~__net22)
        _stage_DMEM_latency <= _stage_DMEM_latency + 8'B11111111;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_IMEM_latency <= 1'b0;
      else if (_stage_IMEM_reg & ~__net10)
        _stage_IMEM_latency <= _stage_IMEM_latency + 8'B11111111;
    end
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        load_count <= 32'b0;
      else if (__net1)
        load_count <= 0;
      else if (data_enable & __net25)
        load_count <= load_count + 32'B00000000000000000000000000000001;
      else if (~(data_enable & __net25) & (data_enable & __net31))
        load_count <= load_count + 32'B00000000000000000000000000000001;
    end
  /* state reg updates */
  always @(posedge m_clock or posedge p_reset)
    begin
      if (p_reset)
        _stage_WAIT_DUMP_REGS_state_reg <= _stage_WAIT_DUMP_REGS_state_st0;
      else if (_stage_WAIT_DUMP_REGS_reg & __net60 & __net62)
        _stage_WAIT_DUMP_REGS_state_reg <= _stage_WAIT_DUMP_REGS_state_st1;
      else if (_stage_WAIT_DUMP_REGS_reg & __net63)
        _stage_WAIT_DUMP_REGS_state_reg <= _stage_WAIT_DUMP_REGS_state_st0;
    end
  /* mem udpates */
  /* mem updates */
  always @(posedge m_clock)
    begin
      if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net56)
        sm3[__cpu_d_write_lo_19_1013] <= __net57;
    end
  always @(posedge m_clock)
    begin
      if (_cpu_d_write & __net40 & __net41)
        dm0[__cpu_d_write_lo_19_1013] <= __net42;
    end
  always @(posedge m_clock)
    begin
      if (_cpu_d_write & __net40 & __net47)
        dm3[__cpu_d_write_lo_19_1013] <= __net48;
    end
  always @(posedge m_clock)
    begin
      if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net54)
        sm2[__cpu_d_write_lo_19_1013] <= __net55;
    end
  always @(posedge m_clock)
    begin
      if (_cpu_d_write & __net40 & __net45)
        dm2[__cpu_d_write_lo_19_1013] <= __net46;
    end
  always @(posedge m_clock)
    begin
      if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net52)
        sm1[__cpu_d_write_lo_19_1013] <= __net53;
    end
  always @(posedge m_clock)
    begin
      if (_cpu_d_write & __net40 & __net43)
        dm1[__cpu_d_write_lo_19_1013] <= __net44;
    end
  always @(posedge m_clock)
    begin
      if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49) & __net50)
        sm0[__cpu_d_write_lo_19_1013] <= __net51;
    end
  /* always */
  always @(posedge m_clock)
    if (_stage_WAIT_DUMP_REGS_reg & __net63)
      $display("%d: bye", count);
  always @(posedge m_clock)
    if (_stage_WAIT_DUMP_REGS_reg & __net63)
      $finish();
  always @(posedge m_clock)
    if (report_statistics)
      $display("inst_count:  %d\nload_count:  %d\nstore_count: %d", inst_count, load_count, store_count);
  always @(posedge m_clock)
    if (_cpu_halt)
      $display("%d: cpu halted", count);
  always @(posedge m_clock)
    if (data_bus_error)
      $display("%d: data bus error: addr: %x", count, _data_bus_error_addr);
  always @(posedge m_clock)
    if (inst_bus_error)
      $display("%d: inst bus error: addr: %x", count, _inst_bus_error_addr);
  always @(posedge m_clock)
    if (~(_cpu_d_write & __net49) & (~(_cpu_d_write & __net40) & (_cpu_d_write & __net58)))
      $display("%d: d_write: addr: %x loc: %b data: %x (bus error)", count, __cpu_d_write_addr, __cpu_d_write_loc, __cpu_d_write_data);
  always @(posedge m_clock)
    if (~(_cpu_d_write & __net40) & (_cpu_d_write & __net49))
      $display("%d: S d_write: %x: %b %x", count, __cpu_d_write_addr, __cpu_d_write_loc, __cpu_d_write_data);
  always @(posedge m_clock)
    if (_cpu_d_write & __net40)
      $display("%d: D d_write: %x: %b %x", count, __cpu_d_write_addr, __cpu_d_write_loc, __cpu_d_write_data);
  always @(posedge m_clock)
    if (~(data_enable & __net31) & (~(data_enable & __net25) & (data_enable & __net37)))
      $display("%d: X d_read: %x:      (bus error)", count, _data_enable_addr);
  always @(posedge m_clock)
    if (~(data_enable & __net25) & (data_enable & __net31))
      $display("%d: S d_read: %x:       %x", count, _data_enable_addr, _data_enable_sm_data_17_1011);
  always @(posedge m_clock)
    if (data_enable & __net25)
      $display("%d: S d_read: %x:       %x", count, _data_enable_addr, _data_enable_dm_data_15_1010);
  always @(posedge m_clock)
    if (~(_cpu_d_read & __net18) & (_cpu_d_read & __net20))
      $display("%d: X d_read: %x:      (bus error)", count, __cpu_d_read_addr);
  always @(posedge m_clock)
    if (inst_enable)
      $display("%d: i_read: %x: %x", count, _inst_enable_addr, _inst_enable_inst_6_1005);
  always @(posedge m_clock)
    if (__net2)
      $display("%d: count limit", count);
  always @(posedge m_clock)
    if (__net2)
      $finish();
  always @(posedge m_clock)
    if (__net1)
      $display("%d: cpu start", count);
  always @(posedge m_clock)
    if (__net0)
      $display("%d: load...", count);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("data.3.mem", dm3);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("data.2.mem", dm2);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("data.1.mem", dm1);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("data.0.mem", dm0);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("text.3.mem", im3);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("text.2.mem", im2);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("text.1.mem", im1);
  always @(posedge m_clock)
    if (load_mem)
      $readmemh("text.0.mem", im0);
endmodule
/* test bench: 'tb' */

module tb;
  parameter CYCLE_TIME = 10;
  reg p_reset;
  reg m_clock;
  test_p32p1 test_p32p1_instance(.p_reset(p_reset),
                                 .m_clock(m_clock));
  initial begin
    forever #(CYCLE_TIME / 2) m_clock = ~m_clock;
  end
  initial begin
    $dumpfile("test_p32p1.vcd");
    $dumpvars(0, test_p32p1_instance);
  end
  initial begin
    #(CYCLE_TIME / 10) begin
      p_reset = 1;
      m_clock = 0;
    end
    #CYCLE_TIME p_reset = 0;
  end
endmodule
/* End of file (test_p32p1.v) */
