# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp
MAPS	 = maps
MAKEMEM  = ./makeMem.sh
# quartus各種コマンド
QUARTUS_MAP = quartus_map
QUARTUS_FIT = quartus_fit
QUARTUS_STA = quartus_sta
# quartusコマンドのオプション
QMAP_OPTS = --family="Cyclone IV E"
QFIT_OPTS = --part=EP4CE115F29C7
QSTA_OPTS = --do_report_timing
# maps シミュレーション時のオプション
#MAPS_OPTS = -e --disable-delay-slot -c  # p32m1, p32m2
MAPS_OPTS = -e --enable-delay-slot -c # p32p1

# フォワーディングユニット用のMakefile
MAKEFILE_FU = Makefile.fu

# 合成時のトップモジュール
TOP	= p32p1

TOP_FU	= p32ForwardingUnit

# 各自のモジュール構成に合わせて必要なFSL記述ファイルを下記の行に書く
SRCS	= p32ExceptionCauseCode.fsl p32Opcode.fsl alu32.fsl p32ExecUnit.fsl \
	  regs32x8.fsl add32.fsl p32DecodeUnit2.fsl regs32x32.fsl shift32.fsl \
	  p32p1.fsl test_p32p1.fsl p32ForwardingUnit.fsl

# テストベンチのターゲットモジュール
TARGET	= test_$(TOP)

# シミュレーション結果を保存するファイル
TEMPFILES = $(TARGET).result


# テストベクタ（入力信号パターン，結果比較用）
#TESTVECTORS = test_p32p1.pat test_p32p1.result.sample

# シミュレーション時に用いるメモリ初期化ファイル
MEMFILES = text.0.mem text.1.mem text.2.mem text.3.mem \
           data.0.mem data.1.mem data.2.mem data.3.mem

# テスト用プログラム
TEST_S_FILE = sum10.s

# make だけのときは，-verilog オプション等なしコンパイル
all:	compile

fu:
	make -f $(MAKEFILE_FU) 

# シミュレーションするとき make sim
#sim:	test_p32p1.result
sim:	simulation
sim.fu:
	make -f $(MAKEFILE_FU) sim

# .vvpファイルを生成するときは make vvp
vvp:	$(TARGET).vvp
vvp.fu:	
	make -f $(MAKEFILE_FU) vvp

# コンパイル（エラーチェックのみ）
compile: $(SRCS)
	$(FSLC) $^ 
compile.fu: 
	make -f $(MAKEFILE_FU) compile

# Verilog HDLファイルをつくるときは，make v あるいは make verilog
v:	verilog
verilog: $(SRCS:.fsl=.v)
v.fu:	
	make -f $(MAKEFILE_FU) v

tv:
	make -f $(MAKEFILE_FU) tv

# Verilog HDL ファイルの生成（コンパイル）
$(SRCS:.fsl=.v): $(SRCS)
	$(FSLC) $^ -verilog -target $(TARGET)

# .vvp ファイル（シミュレーションスクリプト）の生成
$(TARGET).vvp: $(SRCS:.fsl=.v)
	$(IVERILOG) -o $@ $^

# memファイルの生成
mem:	$(TEST_S_FILE)
	$(MAPS) -mh4 $(TEST_S_FILE)
	if [ -f $(TEST_S_FILE).text.0.mem ]; then \
		$(MAKEMEM) $(TEST_S_FILE); \
	fi

$(MEMFILES): mem

# .vvpファイルを実行（シミュレーション）して，結果をファイルに保存
#test_p32p1.result: $(TARGET).vvp
simulation: $(TARGET).vvp
	@if [ ! -f text.0.mem ]; then \
		echo "---------"; \
		echo "INFO: You MUST generate memory files"; \
		echo "INFO: Type: 'make mem' before simulation"; \
		exit -1; \
	fi
	$(VVP) $(TARGET).vvp | tee $(TARGET).result
	@echo "result file '$(TARGET).result' generated"

# シミュレーション結果と比較用パターンとの差分をとる
diff: $(TARGET).result $(TARGET).result.sample
	diff $(TARGET).result $(TARGET).result.sample || exit $$(($$? - 1))
diff.fu: 
	make -f $(MAKEFILE_FU) diff


# MAPSシミュレーション
maps.sim:	$(TEST_S_FILE)
	$(MAPS) $(MAPS_OPTS) $(TEST_S_FILE) | tee $(TEST_S_FILE).maps_result


# FPGA map
map:	$(SRCS:.fsl=.v)
	$(QUARTUS_MAP) $(QMAP_OPTS) $(TOP)
	@cat $(TOP).map.summary

# FPGA fit
fit:	$(SRCS:.fsl=.v)
	$(QUARTUS_FIT) $(QFIT_OPTS) $(TOP)
	@cat $(TOP).fit.summary

# FPGA sta
sta:	$(SRCS:.fsl=.v)
	$(QUARTUS_STA) $(QSTA_OPTS) $(TOP)

# clean
clean:
	rm -f *~ $(TEMPFILES) 
	rm -f $(SRCS:.fsl=.v)
	rm -f *.vcd
	rm -f $(TEST_S_FILE).text.*.mem $(TEST_S_FILE).data.*.mem
	rm -rf db incremental_db $(TOP).map.smsg $(TOP).fit.smsg
	make -f $(MAKEFILE_FU) clean

distclean: clean
	rm -f $(TARGET).vvp
	rm -f $(MEMFILES) $(TEST_S_FILE).sec $(TEST_S_FILE).mem
	rm -f $(TEST_S_FILE).maps_result
	rm -f $(TOP).map.* $(TOP).fit.* $(TOP).sta.*
	rm -f $(TOP).flow.rpt $(TOP).qpf $(TOP).qsf $(TOP).pin
	rm -rf db incremental_db
	make -f $(MAKEFILE_FU) distclean
	(cd test; make distclean)

pull:
	git pull

# End of file (Makefile)

