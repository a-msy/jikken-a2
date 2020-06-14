# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp
SCALA	 = scala

# FSL記述を増やしたら，下記の行に追加する
SRCS 	= p32ExecUnit.fsl test_p32ExecUnit.fsl p32Opcode.fsl \
	  alu32.fsl add32.fsl shift32.fsl 
# テストベンチのターゲットモジュール
TARGET	= test_p32ExecUnit
# シミュレーション結果を保存するファイル
RESULTFILE = $(TARGET).result
# シミュレーション結果を保存するファイル
TEMPFILES = $(RESULTFILE)
# テストベクタ（入力信号パターン，結果比較用）
TESTVECTORS = $(TARGET).pat $(RESULTFILE).sample

# make だけのときは，-verilog オプション等なしコンパイル
all:	compile

# シミュレーションするとき make sim
sim:
	$(VVP) $(TARGET).vvp | tee $(RESULTFILE)
	@echo "result file '$@' generated"

# .vvpファイルを生成するときは make vvp
vvp:	$(TARGET).vvp

# コンパイル（エラーチェックのみ）
compile: $(SRCS)
	$(FSLC) $^ 

# Verilog HDLファイルをつくるときは，make v あるいは make verilog
v:	verilog
verilog: $(SRCS:.fsl=.v)

# テストベクタ生成
#testvector: 
#	$(SCALA) Genpat.scala > $(TARGET).pat
#	$(SCALA) Genpat.scala genout > $(RESULTFILE).sample

# Verilog HDL ファイルの生成（コンパイル）
$(SRCS:.fsl=.v): $(SRCS)
	$(FSLC) $^ -verilog -target $(TARGET)

# .vvp ファイル（シミュレーションスクリプト）の生成
$(TARGET).vvp: $(SRCS:.fsl=.v)
	$(IVERILOG) -o $@ $^

# テストベクタ
#$(TARGET).pat:
#	$(SCALA) Genpat.scala > $@
#$(RESULTFILE).sample:
#	$(SCALA) Genpat.scala genout > $@


# .vvpファイルを実行（シミュレーション）して，結果をファイルに保存
$(RESULTFILE): $(TARGET).vvp
	$(VVP) $(TARGET).vvp | tee $@
	@echo "result file '$@' generated"

# シミュレーション結果と比較用パターンとの差分をとる
diff: 
	diff $(RESULTFILE) $(RESULTFILE).sample || exit $$(($$? - 1))

clean:
	rm -f *~ $(TEMPFILES) 
	rm -f $(SRCS:.fsl=.v)
	rm -f *.vcd

distclean: clean
	rm -f $(TARGET).vvp
#	rm -f $(TARGET).vvp $(TESTVECTOR)

pull:
	git pull

# End of file (Makefile)

