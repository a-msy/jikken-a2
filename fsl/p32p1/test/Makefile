# 各種コマンド
FSLC	 = fslc
IVERILOG = iverilog
VVP	 = vvp
MAPS	 = maps
MAKEMEM  = ../makeMem.sh

# maps シミュレーション時のオプション
MAPS_OPTS = -e --enable-delay-slot -c

# .vvp
VVP_FILE = ../test_p32p1.vvp

# .s フィアル
S_FILE = regset.s

# シミュレーション結果を保存するファイル
TEMPFILES = $(S_FILE).result

# シミュレーション時に用いるメモリ初期化ファイル
MEMFILES = text.0.mem text.1.mem text.2.mem text.3.mem \
           data.0.mem data.1.mem data.2.mem data.3.mem

# テスト用プログラム
TEST_S_FILE = $(S_FILES)



# make だけのときは，-verilog オプション等なしコンパイル
all:	sim

# memファイルの生成
mem:	$(S_FILE)
	$(MAPS) -mh4 $(S_FILE)
	if [ -f $(S_FILE).text.0.mem ]; then \
		$(MAKEMEM) $(S_FILE); \
		rm -f $(S_FILE).text.*.mem; \
		rm -f $(S_FILE).data.*.mem; \
	fi

# シミュレーション
sim:	mem 
	$(VVP) $(VVP_FILE) | tee $(S_FILE).result
	@echo "result file '$(S_FILE).result' generated"

# シミュレーション結果と比較用パターンとの差分をとる
diff: $(S_FILE).result $(S_FILE).result.sample
	diff $(S_FILE).result $(S_FILE).result.sample || exit $$(($$? - 1))

maps.sim:
	$(MAPS) $(MAPS_OPTS) $(S_FILE) | tee $(S_FILE).maps_result


clean:
	rm -f *.vcd
	rm -f $(S_FILE).text.*.mem $(S_FILE).data.*.mem
	rm -f $(MEMFILES) $(S_FILE).sec $(S_FILE).mem

distclean: clean
	rm -f *~ $(TEMPFILES)
	rm -f *.maps_result *.result *.mem *.sec

pull:
	git pull

# End of file (Makefile)

