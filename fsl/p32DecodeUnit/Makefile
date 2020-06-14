# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp
SCALA	 = scala

# FSL記述を増やしたら，下記の行に追加する
SRCS 	= p32DecodeUnit.fsl test_p32DecodeUnit.fsl p32Opcode.fsl \
	  p32ExceptionCauseCode.fsl add32.fsl
# テストベンチのターゲットモジュール
TARGET	= test_p32DecodeUnit
# シミュレーション結果を保存するファイル
RESULTFILE = $(TARGET).result
# シミュレーション結果を保存するファイル
TEMPFILES = $(RESULTFILE)
# テストベクタ（入力信号パターン）
TESTVECTORS = $(TARGET).pat 

# make だけのときは，-verilog オプション等なしコンパイル
all:	compile

# シミュレーションするとき make sim
sim:	$(TARGET).pat
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
tv:	testvector
testvector: $(TARGET).pat
$(TARGET).pat: Genpat.scala
	$(SCALA) Genpat.scala > $(TARGET).pat

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

pull:
	git pull

# End of file (Makefile)

