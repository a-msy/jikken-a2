# TeXバイナリ
# (演習室)
#TEXBINDIR= /opt/edu/texlive/2018/bin/x86_64-linux
# (実験用サーバ jikken-a2)
TEXBINDIR= /usr/local/texlive/2020/bin/x86_64-linux
# (その他)
#TEXBINDIR=/Library/TeX/texbin

# platexコマンド
PLATEX=$(TEXBINDIR)/platex
# dvipdfmxコマンド
DVIPDF=$(TEXBINDIR)/dvipdfmx

# テスト用
#PLATEX=platex
#DVIPDF=dvipdfmx

# ドキュメントのソース (必要に応じて書き換える，追加する）
SRCS = report.tex

## 以下，ルール ##

all: report.pdf

#report.dvi: $(SRCS)
report.pdf: $(SRCS)
	$(PLATEX) report.tex
	$(PLATEX) report.tex
	if [ -f report.dvi ]; then \
	    $(DVIPDF) report.dvi; \
	fi

#report.pdf: report.dvi
#	dvipdfmx report.dvi

clean:
	rm -rf *~ *.aux *.log *.dvi report.ps *.euc.tex

distclean: clean.all

clean.all:
	rm -rf *~ *.aux *.log *.dvi report.pdf a.pdf

# End of file (Makefile)
