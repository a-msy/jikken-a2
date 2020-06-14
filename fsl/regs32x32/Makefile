# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp
SCALA	 = scala

# FSL記述を増やしたら，下記の行に追加する
SRCS 	= regs32x32.fsl regs32x8.fsl test_regs32x32.fsl
# テストベンチのターゲットモジュール
TARGET	= test_regs32x32
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
testvector: 
	$(SCALA) Genpat.scala > $(TARGET).pat
	$(SCALA) Genpat.scala genout > $(RESULTFILE).sample

# Verilog HDL ファイルの生成（コンパイル）
$(SRCS:.fsl=.v): $(SRCS)
	$(FSLC) $^ -verilog -target $(TARGET)

# .vvp ファイル（シミュレーションスクリプト）の生成
test_regs32x32.vvp: $(SRCS:.fsl=.v)
	$(IVERILOG) -o $@ $^

# テストベクタ
test_regs32x32.pat:
	$(SCALA) Genpat.scala > $@
$(RESULTFILE).sample:
	$(SCALA) Genpat.scala genout > $@


# .vvpファイルを実行（シミュレーション）して，結果をファイルに保存
test_regs32x32.result: $(TARGET).vvp
	$(VVP) $(TARGET).vvp | tee $@
	@echo "result file '$@' generated"

# シミュレーション結果と比較用パターンとの差分をとる
#diff: test_regs32x32.result test_regs32x32.result.sample
diff: 
	diff $(RESULTFILE) $(RESULTFILE).sample || exit $$(($$? - 1))

clean:
	rm -f *~ $(TEMPFILES) 
	rm -f $(SRCS:.fsl=.v)
	rm -f *.vcd

distclean: clean
	rm -f $(TARGET).vvp $(TESTVECTORS)

pull:
	git pull

# End of file (Makefile)

