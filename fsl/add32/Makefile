# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp

# FSL記述を増やしたら，下記の行に追加する
SRCS 	= add32.fsl test_add32.fsl
# テストベンチのターゲットモジュール
TARGET	= test_add32
# シミュレーション結果を保存するファイル
TEMPFILES = test_add32.result
# テストベクタ（入力信号パターン，結果比較用）
TESTVECTORS = test_add32.pat test_add32.result.sample

# make だけのときは，-verilog オプション等なしコンパイル
all:	compile

# シミュレーションするとき make sim
sim:	test_add32.result

# .vvpファイルを生成するときは make vvp
vvp:	$(TARGET).vvp

# テストベクタを生成するときは make testvector
testvector:	$(TESTVECTORS)

# コンパイル（エラーチェックのみ）
compile: $(SRCS)
	$(FSLC) $^ 

# Verilog HDLファイルをつくるときは，make v あるいは make verilog
v:	verilog
verilog: $(SRCS:.fsl=.v)

# Verilog HDL ファイルの生成（コンパイル）
$(SRCS:.fsl=.v): $(SRCS)
	$(FSLC) $^ -verilog -target $(TARGET)

# .vvp ファイル（シミュレーションスクリプト）の生成
test_add32.vvp: $(SRCS:.fsl=.v)
	$(IVERILOG) -o $@ $^

# .vvpファイルを実行（シミュレーション）して，結果をファイルに保存
test_add32.result: $(TARGET).vvp
	$(VVP) $(TARGET).vvp | tee $@
	@echo "result file '$@' generated"

# テストベクタ（入力用パターンファイル）の生成
test_add32.pat: add32.rb
	./add32.rb genpat > $@
	@echo "pattern file '$@' generated"

# テストベクタ（比較用用パターンファイル）の生成
test_add32.result.sample: add32.rb
	./add32.rb genout > $@
	@echo "result sample file '$@' generated"

# シミュレーション結果と比較用パターンとの差分をとる
diff: test_add32.result test_add32.result.sample
	diff test_add32.result test_add32.result.sample || exit $$(($$? - 1))


clean:
	rm -f *~ $(TEMPFILES) 
	rm -f $(SRCS:.fsl=.v)
	rm -f *.vcd

distclean: clean
	rm -f $(TARGET).vvp

clean.testvector:
	rm -f $(TESTVECTORS)

pull:
	git pull

# End of file (Makefile)

