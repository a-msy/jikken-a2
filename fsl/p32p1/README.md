32ビットマイクロプロセッサp32マルチサイクルバージョン p32p1
---

### (配布ファイル)
-----

| ファイル名               | 説明                                      |
|:-------------------------|:------------------------------------------|
| `p32p1.fsl`              | p32p1プロセッサモジュールFSL記述（雛形）  |
| `p32Opcode.fsl`          | 操作コード等の定義                        |
| `p32ExceptionCauseCode.fsl` | 例外原因コードの定義                   |
| `test_p32p1.fsl`         | テストベンチFSL記述                       |
| `test_p32ForwardingUnit.fsl` | テストベンチFSL記述（フォワーディングユニット用） |
| `sum10.s`                | 動作確認用のサンプルコード                |
| `makeMem.sh`             | テスト用メモリイメージを生成するプログラム |
| `test_p32p1.result.sample` | シミュレーション結果比較用のファイル    |
| `Makefile`               | Makefile                                  |
| `Makefile.fu`            | フォワーディングユニット用のMakefile      |
| `Genpat.scala`           | フォワーディングユニット用のテストベクタ生成プログラム |
| `test_p32ForwardingUnit.result.sample` | シミュレーション結果比較用のファイル    |
| `README.md`              | このファイル                              |
| `test/Makefile`          | 追加テスト用のMakefile                    |
| `test/*.s`               | 追加のサンプルコード                      |
| `test/*.result.sample`   | 追加のシミュレーション結果比較用ファイル  |



### サブモジュールのFSL記述ファイルについて
-----

`p32p1.fsl` で用いるサブモジュールやそれ以下の階層で用いているモジュールの
FSL記述ファイル（例えば，p32DecoeUnitやp32ExecUnitの記述ファイルなど）は
このディレクトリにコピーしておく．

`p32DecodeUnit`は，`p32m1`と`p32m2`で用いた記述に一部，変更が必要．

1. `p32DecodeUnit.fsl`を，`p32DecodeUnit2.fsl`にコピー
2. `p32DecodeUnit2.fsl`のモジュール名を`p32DecodeUnit`から`p32DecodeUnit2`に変更
3. `p32DecodeUnit2.fsl`の`JALR`と`JAL`命令に対応する部分の`b_out = pc`を`b_out = pc + 4` に変更

また，`Makefile` の下記の行に必要なFSL記述のファイルを書いておく

    # 各自のモジュール構成に合わせて必要なFSL記述ファイルを下記の行に書く
    SRCS    = p32ExceptionCauseCode.fsl p32Opcode.fsl alu32.fsl p32ExecUnit.fsl \
              regs32x8.fsl add32.fsl p32DecodeUnit2.fsl regs32x32.fsl shift32.fsl \
              p32p1.fsl test_p32p1.fsl p32ForwardingUnit.fsl


### make の機能（フォワーディングユニットのコンパイルとシミュレーション）
-----

1. FSL記述を作成，編集し，`make fu` でコンパイル（エラーチェック）
2. `make vvp.fu` で `test_p32ForwardingUnit.vvp`を生成
3. `make tv` で フォワーディングユニット用のテストベクタの生成
4. `make sim.fu` で フォワーディングユニットのシミュレーション
5. `make diff.fu` で フォワーディングユニットのシミュレーション結果の比較


### make の機能（p32p1のコンパイル）
-----

1. FSL記述を作成，編集し，`make` でコンパイル（エラーチェック）
2. `make verilog` でコンパイルしてVerilog HDL記述コードの生成
3. `make vvp` で `test_p32m1.vvp`を生成


### make の機能（p32p1のシミュレーション）
-----

4. `make mem` でシミュレーション時に用いるメモリイメージを作成
   （`maps version 2.0a (build 20E05) (2020-05-22)`以降が必要）
5. `make sim` でシミュレーション
6. `make diff` でシミュレーション結果と比較用結果ファイルを比較
シミュレーション結果の差分がない場合，下記の表示だけになります．

```
diff test_p32m1.result test_p32m1.result.sample || exit $(($? - 1))
```


### make の機能（mapsシミュレーション）
-----

1. `make maps.sim` で動作確認用プログラム（`sum10.s`）を maps でシミュレーション

maps でのソフトウェアシミュレーションと設計したプロセッサのハードウェアシミュレーションの結果を比較してみてください．


### make の機能（論理合成，配置配線，タイミング解析）
-----

7. `make map` で FPGAへのマッピング
8. `make fit` で FPGAフィッティング
9. `make sta` で FPGAタイミング解析

マッピング，フィッティング等はサーバでの処理が重くなるため，実験用サーバ`jikken-a3`で行うようにしてください．


### make の機能（不要なファイルの消去）
-----

1. `make clean` で掃除
2. `make distclean`で `.vvp`ファイルなども消去

Gitbucket に push する際には，不要なファイルを消去した後
（`make distclean`した後）に行うようにしてください．


### シミュレーション結果
-----

```
VCD info: dumpfile test_p32p1.vcd opened for output.
         1: load...
        10: cpu start
        12: i_read: 00000000: 3c011000
        13: i_read: 00000004: 343c8000
        14: i_read: 00000008: 3c017fff
        15: i_read: 0000000c: 343dfffc
        16: i_read: 00000010: 00000000
        .
        .
        .
        92: i_read: 0000103c: afbe0010
        93: i_read: 00001040: 27be001c
        94: S d_write: 7fffff50: 1111 00001080
        94: i_read: 00001044: afc40000
        95: i_read: 00001048: 8fc20000
        95: S d_write: 7fffff4c: 1111 7fffff78
        96: i_read: 0000104c: 00000000
        97: i_read: 00001050: 0002402a
        97: S d_write: 7fffff58: 1111 00000006
        98: S d_read: 7fffff58:       00000006
        98: i_read: 00001054: 15000004
        99: i_read: 00001058: 00000000
       100: i_read: 00001068: 8fc30000
       101: i_read: 0000106c: 00000000
        .
        .
        .
       290: i_read: 0000001c: 34020063
       291: i_read: 00000020: 0000000c
       292: i_read: 00000024: 00000000
       293: inst bus error: addr: 80000080
       298: cpu halted
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

* 一番左の数字は，シミュレーションサイクル
* サイクル 10 に cpu を起動（`cpu.start()`）
* `i_read: 命令アドレス 読み出した命令コード` ... 命令リード
* `S d_write: 書き込みアドレス: ロケーション 書き込む値` ... スタックセグメントへの書き込み
* `D d_write: 書き込みアドレス: ロケーション 書き込む値` ... データセグメントへの書き込み
* `S d_write: 書き込みアドレス: ロケーション 書き込む値` ... スタックセグメントへの書き込み
* `D d_read: 書き込みアドレス:      読み出した値` ... データセグメントからの読み出し
* `S d_read: 書き込みアドレス:      読み出した値` ... スタックセグメントからの読み出し
* `サイクル: cpu halted` ... cpu の 停止

停止後に，その時点でのレジスタ内容をダンプ（値は16進数）

* `inst_count:` ... プロセッサが読んだ命令数
* `load_count:` ... 実行したロード命令（`lw`, `lb`）の数
* `store_count:` ... 実行したストア命令（`sw`, `sb`）の数

詳細は，テストベンチのFSL記述（`test_p32p1.fsl`）を参照のこと．

---
