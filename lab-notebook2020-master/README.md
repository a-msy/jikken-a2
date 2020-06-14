# 実験ノート
---


| 学生番号  | 氏名           | 
| :-------: | :------------: |
| 09430509  |  Imada Masaya  |


（新しいものが上にくるように書き足していく）

## #10
 実施日: 2020年 6月 8日（月）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- レポート作成

【感想】
試問が怖い

## #9
 実施日: 2020年 6月 4日（木）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- レポート作成

【感想】
昔の内容を忘れかけている．

## #8
 実施日: 2020年 6月 1日（月）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 設計課題4-3

【p32p1のシミュレーション結果】

```
 zero(0)  at(1)    v0(2)    v1(3)    a0(4)    a1(5)    a2(6)    a3(7)  
00000000 7fff0000 00000063 0000000a 00000000 00000037 00000000 00000000
 t0(8)    t1(9)    t2(10)   t3(11)   t4(12)   t5(13)   t6(14)   t7(15) 
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
 s0(16)   s1(17)   s2(18)   s3(19)   s4(20)   s5(21)   s6(22)   s7(23) 
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
 t8(24)   t9(25)   k0(26)   k1(27)   gp(28)   sp(29)   fp(30)   ra(31) 
00000000 00000000 00000000 00000000 10008000 7ffffffc 00000000 0000001c
pc: 80000080  epc: 00000020  cause: 8
inst_count:         281
load_count:          55
store_count:         35
       321: bye
```

実質サイクル数は298行目にcpu halted があるので，最初の１０行は，p32p1が動作をしているわけではないので
cpu startが始まる前の部分を引いて，
``298 - 10 = 288``サイクル


同じディレクトリ内での【make maps.sim】

```
*** multicycle statistics ***
*** total inst. count:          280
*** total cycle count:         1151
***               IPC:   0.243 (inst/cycle)
***               CPI:   4.111 (cycle/inst)
```

命令数が1ちがうが，パイプライン実行で，最後のsyscallのEXEステージに入る前に，
次の命令を実行しようと試みるためである．

【make.mapの結果】

```
Analysis & Synthesis Status : Successful - Mon Jun  1 14:25:41 2020
Quartus Prime Version : 19.1.0 Build 670 09/22/2019 SJ Lite Edition
Revision Name : p32p1
Top-level Entity Name : p32p1
Family : Cyclone IV E
Total logic elements : 4,126
    Total combinational functions : 4,025
    Dedicated logic registers : 1,416
Total registers : 1416
Total pins : 178
Total virtual pins : 0
Total memory bits : 0
Embedded Multiplier 9-bit elements : 0
Total PLLs : 0
```

【make.fitの結果】

```
Fitter Status : Successful - Mon Jun  1 14:29:24 2020
Quartus Prime Version : 19.1.0 Build 670 09/22/2019 SJ Lite Edition
Revision Name : p32p1
Top-level Entity Name : p32p1
Family : Cyclone IV E
Device : EP4CE115F29C7
Timing Models : Final
Total logic elements : 4,052 / 114,480 ( 4 % )
    Total combinational functions : 4,025 / 114,480 ( 4 % )
    Dedicated logic registers : 1,416 / 114,480 ( 1 % )
Total registers : 1416
Total pins : 178 / 529 ( 34 % )
Total virtual pins : 0
Total memory bits : 0 / 3,981,312 ( 0 % )
Embedded Multiplier 9-bit elements : 0 / 532 ( 0 % )
Total PLLs : 0 / 4 ( 0 % )
```

【sta.rptのFmax】

```
+-------------------------------------------------+
; Slow 1200mV 85C Model Fmax Summary              ;
+-----------+-----------------+------------+------+
; Fmax      ; Restricted Fmax ; Clock Name ; Note ;
+-----------+-----------------+------------+------+
; 64.88 MHz ; 64.88 MHz       ; m_clock    ;      ;
+-----------+-----------------+------------+------+
```

testディレクトリ【maps】のシミュレーション結果

```
        Total:           41 (100.0%)             164 (100.0%)
*** multicycle statistics ***
*** total inst. count:           41
*** total cycle count:          164
***               IPC:   0.250 (inst/cycle)
***               CPI:   4.000 (cycle/inst)
```

### 感想

- 説明が足りてなくて，何が良くて何が悪いのかわからないままの実験で，理解をしようとしても難しいところがある．
こんな状態で諮問をされるのだろうか．不安しかない．

- 質問しても，最後は投げられてしまって解決したとは言えない．私の質問の仕方が悪かったのかもしれないが，オンラインの
弊害というよりも，講義のシステムに問題があるようなきがする．https://jikken-a.slack.com/archives/C012B98P51T/p1590987896343800

## #7

 実施日: 2020年 5月 28日（木）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 設計課題4-2
- p32m1とp32m2の動作検証
- 検討課題2-1
- 設計課題4-1の修正
- 検討課題4-1


### 【感想，コメントなど】
- チュートリアルだけだと難しくて，理解を深めることができなかった．とりあえず完成はしたがPDF
をなめながら設計しただけなので，しんどい．
- p32m2を設計したことでp32m1との比較を行うことで，作成を完了できた．
- テストは通ったのに，検討課題での躓いて，p32m1をp32m2を参考に修正した，何故動かなかったのか不明なので考えておく．

### リソース使用量と最大動作周波数

【p32m2 make simの結果】

```
      1067: i_read: 00000020: 0000000c
      1069: cpu halted
 zero(0)  at(1)    v0(2)    v1(3)    a0(4)    a1(5)    a2(6)    a3(7)  
00000000 7fff0000 00000063 0000000a 00000000 00000037 00000000 00000000
 t0(8)    t1(9)    t2(10)   t3(11)   t4(12)   t5(13)   t6(14)   t7(15) 
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
 s0(16)   s1(17)   s2(18)   s3(19)   s4(20)   s5(21)   s6(22)   s7(23) 
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
 t8(24)   t9(25)   k0(26)   k1(27)   gp(28)   sp(29)   fp(30)   ra(31) 
00000000 00000000 00000000 00000000 10008000 7ffffffc 00000000 00000018
pc: 80000080  epc: 00000020  cause: 8
inst_count:         257
load_count:          55
store_count:         35
      1092: bye
```

【p32m2 make maps.simの結果】

```
 41:      ???:            0 (  0.0%)               0 (  0.0%)
--------------------------------------------------------------
        Total:          257 (100.0%)            1059 (100.0%)
*** multicycle statistics ***
*** total inst. count:          257
*** total cycle count:         1059
***               IPC:   0.243 (inst/cycle)
***               CPI:   4.121 (cycle/inst)
```

【両者のmap.summaryの内容】

||p32m1|p32m2|
|----|----|----|
|Total logic elements|3,730|3,743|
|Total combinational functions|3,631|3,687|
|Total registers|1379|1,379|
|Total pins|178|178|
|Slow 1200mV 85C Model Fmax Summary|61.36 MHz|60.28 MHz|

### 【検討課題２－１】
||などをすべて条件分岐に置き換えて実装をすることで可能になる
これは1ビットなので，2bitの加算器を追加で作り，4bitを編集する必要がある．

```
    alt {
       a == 1 && b == 1: co = 0b1
       a == 1 && ci == 1: co = 0b1
       b == 1 && ci == 1: co = 0b1
       else: co = 0b0
    }

    alt {
       a == 1 && b == 0 && ci == 0: out = 0b1
       a == 0 && b == 1 && ci == 0: out = 0b1
       a == 0 && b == 0 && ci == 1: out = 0b1
       a == 1 && b == 1 && ci == 1: out = 0b1
       else: out = 0b0
    }
```
### 【検討課題４－１】
実行手順

```
1.make
2.make verilog
3.make vvp
4.make sim
```

``IMEM_LATENCY``と``DMEM_LATENCY``を0の状態で行うと，

```
        1: load...
        10: cpu start
        12: i_read: 00000000: 3c011000
        17: i_read: 00000004: 343c8000
        22: i_read: 00000008: 3c017fff
        27: i_read: 0000000c: 343dfffc
        32: i_read: 00000010: 00000000
        37: i_read: 00000014: 0c000400
```

上記のように表示され，メモリアクセスの遅延がないと5サイクルで動いてることがわかる．

``IMEM_LATENCY``を1にすると，

```
VCD info: dumpfile test_p32m1.vcd opened for output.
         1: load...
        10: cpu start
        12: i_read: 00000000: (read_req)
        13: i_read: 00000000: 3c011000
        18: i_read: 00000004: (read_req)
        19: i_read: 00000004: 343c8000
        24: i_read: 00000008: (read_req)
        25: i_read: 00000008: 3c017fff
        30: i_read: 0000000c: (read_req)
        31: i_read: 0000000c: 343dfffc
```

と表示された．上記より，1サイクル遅れて命令を実行していることがわかる．
このことから，mサイクルの遅延があるとすると， n命令の実行には(5 + m) * nサイクルが必要となる．

``DMEM_LATENCY``を1にしてみると，永遠に処理が終わらなかった．そこで設計課題4-1を修正した．

~~
修正箇所その１

```
((mem_op == SW) || (mem_op == SB)): par { // store instrucions
d_write(mem_in, store_loc, mem_mdr) // write data request
relay WB(mem_op,mem_dest,mem_in,0x00000000)
```

修正箇所その１【修正後】

```	
((mem_op == SW) || (mem_op == SB)): par { // store instrucions
d_write(mem_in, store_loc, mem_mdr) // write data request
relay IF(pc)
```
~~

修正箇所その２

```
data_en.isRunning: par { // read data enable
relay WB(mem_op, mem_dest, mem_in, 0x00000000)
goto st0
```

修正箇所その２【修正後】

```	
data_en.isRunning: par { // read data enable
relay WB(mem_op,mem_dest,mem_in,r_data)
```

そして，修正後のプログラムで結果を見てみる．

```
VCD info: dumpfile test_p32m1.vcd opened for output.
         1: load...
        10: cpu start
        12: i_read: 00000000: 3c011000
        17: i_read: 00000004: 343c8000
        22: i_read: 00000008: 3c017fff
        27: i_read: 0000000c: 343dfffc
        32: i_read: 00000010: 00000000
        37: i_read: 00000014: 0c000400
        42: i_read: 00001000: 23bdffe0
        47: i_read: 00001004: afbf0014
        50: S d_write: 7ffffff0: 1111 00000018
        51: i_read: 00001008: afbe0010
        54: S d_write: 7fffffec: 1111 00000000
        55: i_read: 0000100c: 27be001c
        60: i_read: 00001010: 3484000a
        65: i_read: 00001014: 0c00040d
        70: i_read: 00001034: 23bdffe0
        75: i_read: 00001038: afbf0014
        78: S d_write: 7fffffd0: 1111 00001018
        79: i_read: 0000103c: afbe0010
        82: S d_write: 7fffffcc: 1111 7ffffff8
        83: i_read: 00001040: 27be001c
        88: i_read: 00001044: afc40000
        91: S d_write: 7fffffd8: 1111 0000000a
        92: i_read: 00001048: 8fc20000
        95: _ d_read: 7fffffd8:       (read_req)
        96: S d_read: 7fffffd8:       0000000a
        98: i_read: 0000104c: 00000000
       103: i_read: 00001050: 0002402a
       108: i_read: 00001054: 15000004
       113: i_read: 00001068: 8fc30000
       116: _ d_read: 7fffffd8:       (read_req)
```

``IMEM_LATENCY``とはちがい，サイクルごとに遅延が発生してるわけではなく，

```
        95: _ d_read: 7fffffd8:       (read_req)
        96: S d_read: 7fffffd8:       0000000a
```

``S d_read``の命令が実行されているときに遅延が発生している．
このことから，メモリからの読み込みにxサイクルの遅延があり，lw lb等の命令がy個ある
n命令の実行には``5 * n + x * y``サイクルが必要となる．

## #6

 実施日: 2020年 5月 25日（月）誕生日！！！！！！！！
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 設計課題4-1

### 【感想，コメントなど】
PDFとp16m1を参考に，穴埋めをしただけになってしまったので，これから
理解を深めていきたい．


## #5

 実施日: 2020年 5月 21日（木）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 設計課題3-3

### 【感想，コメントなど】
http://www.arc.cs.okayama-u.ac.jp/~nobuya/jikken/files/jikken2012-03_ISA_1.pdf と　http://www.arc.cs.okayama-u.ac.jp/~nobuya/jikken/files/jikken2020-09_1.key.pdf
の両方を参照しながら解くことができたが，p16Decodeの穴埋めをしている感じで動作原理を読み解くことができなかった．

## #4

 実施日: 2020年 5月 18日（月）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 設計課題3-1
- 設計課題3-2
- 発展課題2-1

### 【感想，コメントなど】

・regs32x8とかは入ってきた値が0のときの処理について何もなかったのに，32x32になったときに
0のときの処理についてのdiffだけ出てきて，理由がよくわからなかった．

・当初regs32x32のモジュールを32個作るのかと思ったが，regs32x8のファイルが有ることに気が付き，
regs32x8を４つ集めるとregs32x32を作れるということがわかった．regs32x16を2個ではどうなるかなどを
調べてみたい．定義する数が変わるのかな

・if文の分岐命令がとても便利に使えた．

・mult32が２行で実装できてしまうので，算術演算子を使わない方法を模索中

・private def ex_store(a: Bit(32), b: Bit(32)): Unit = {が理解できない．何をしているのか．動いたけど．．．

```
def read_a(a_addr): Unit = {
    val addr = a_addr(1,0)
    if(a_addr == 0.toBit(5)) a = 0.toBit(32)//a_addrが0のときは0
    else{
      addr match{
        case 0b00 =>a = reg0.read_a(a_addr(4,2)).a
        case 0b01 =>a = reg1.read_a(a_addr(4,2)).a
        case 0b10 =>a = reg2.read_a(a_addr(4,2)).a
        case 0b11 =>a = reg3.read_a(a_addr(4,2)).a
      }
    }
  }
```

と

```
def read_a(a_addr): Unit = {
    val addr = a_addr(4,3)
    if(a_addr == 0.toBit(5)) a = 0.toBit(32)//a_addrが0のときは0
    else{
      addr match{
        case 0b00 =>a = reg0.read_a(a_addr(2,0)).a
        case 0b01 =>a = reg1.read_a(a_addr(2,0)).a
        case 0b10 =>a = reg2.read_a(a_addr(2,0)).a
        case 0b11 =>a = reg3.read_a(a_addr(2,0)).a
      }
    }
  }
```

の違いがきになる

## #3
---
 実施日: 2020年 5月 14日（木）
 
### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- FSLチュートリアル
- 設計課題2-1 改良検討中
- 設計課題2-2 改良検討中
- 設計課題2-3 改良検討中

### 【感想，コメントなど】

(困ったことや解決したことなど，工夫したことなど)
加算も論理演算にすべて落とせるとのことで，それでは実装することができなかったので
時間があればそれも時間があれば実装をしていきたい．特に課題２のsubについては
どのようにすればいいかわからず様々な文献を漁ったのでとても知見を得られた．

引き算では２の補数を足す．

途中で課題の条件などが変わったりしていったのでとても完了していた課題が終わらない
ということが発生し焦ってしまったので止めてもらいたい．オンラインで難しいことも
多々あるとは思うが，あまりにもひどいと感じた．

## #2
---
 実施日: 2020年 5月 11日（月）

### 【実施内容】
（本日，実施したことを簡潔にまとめる）

- 検討課題１－１
- 検討課題１－２
- 検討課題１－３
- FSL環境構築

### 【感想，コメントなど】

(困ったことや解決したことなど，工夫したことなど)

FSLを自分の手元で使えるようにしようとしたけど，scalaがないと使えないことに気が付きapt installでscalaをインストールして，
fslcのPATHを通したにも関わらずコンパイル時にjava関連でscalaのエラーが出たので，実験サーバと同じようにシンボリックリンクなどで
環境を再現しようと１時間半くらい苦戦したところ環境を見事に再現できた．
PATHの通し方，シンボリックリンクの貼り方を理解できるようになり，FSLのHello,Worldも完了しました．

次回も楽しみです．

#### 検討課題１－１

lwの直後にロードした値を使うと，lwはまだ完了していないのでadd命令移動前の値が入っていたり何もない場合があり，参照できない．

#### 検討課題１－２

beqの判定が終わる前にlw命令が実行されてしまい，$t4レジスタに目的とは異なる値が入ってしまう．

#### 検討課題１－３

lwで読み込みに使うレジスタを使わない命令ならlwの後に実行しても問題がないので，
ループカウンタをへらす処理などをを行うようにすることで実行命令数の削減ができる．


---


## #1 32ビットマイクロプロセッサ p32 の概要とアセンブリ言語によるプログラミング
---
 実施日: 2020年 5月 7日（木）

### 【実施内容】
（本日，実施したことを簡潔にまとめる）

 - Windows上でのMAPS環境の構築
 - 課題1,2に取り組んだ
 - TAの変わりみたいに色んな人への実験の対応
 - kadai1 講義時間中に完成
 - kadai2 講義時間中に完成（色んなサイトを参考にして乗せるとできたので論理の説明ができるわけではない・・・）
 - kadai3 完成せず（22:13完成）
 - 検討課題１　してない
 - 検討課題２　してない
 - 検討課題３　してない


(困ったことや解決したことなど，工夫したことなど)


### 【感想，コメントなど】

- TAの変わりみたいに色んな人への実験の対応を行っていたので，自分の課題が進まなかった.本当に苛ついた．ScrapBoxの手順も並列に書いており，どのドキュメントを見れば良いのかわかりづらくて本当にストレスが貯まりました．オンライン実験は難しいです．
- MIPS言語の記述仕様を色々と忘れていたので思い出すまでに時間がかかり，アルゴリズムの構築に時間がかかってしまったので反省． 
- シートの提出期限などせめて必要最低限の必要なことぐらいは告知していただきたい．途中でZOOMも切れてあとはドキュメント読んでの自己作業，わからないことはslackでなど，moodleがあるにも関わらずそれらのツールを使わずに告知など，講義と言えるものなのかものすごく疑問を感じた．
- このマークダウンについても記法すら紹介されていないのに書かせるとはどういう意図があるのか全く不明．初のオンラインということで不備があるのだろうとは思うが如何せんひどすぎると感じました😃

---
