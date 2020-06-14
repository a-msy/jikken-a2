p32実行ユニットモジュール p32ExecUnit
---

### (配布ファイル)

| ファイル名             | 説明                                  |
|:-----------------------|:--------------------------------------|
| `p32ExecUnit.fsl`      | 実行ユニットモジュールFSL記述（雛形） |
| `p32Opcode.fsl`        | 操作コード等の定義                    |
| `test_p32ExecUnit.fsl` | テストベンチFSL記述                   |
| `test_p32ExecUnit.pat` | テストベクタ（入力パターン）ファイル  |
| `test_p32ExecUnit.result.sample` | シミュレーション結果比較用のファイル |
| `Genpat.scala`         | テストベクタを生成するScalaプログラム |
| `Makefile`             | Makefile                              |
| `README.md`            | このファイル                          |


### サブモジュールのFSL記述ファイルについて

`p32ExecUnit.fsl` で用いるサブモジュールのFSL記述ファイル（例えば，
alu32の記述ファイルなど）はこのディレクトリにコピーしておく．
また，Makefile の下記の行に必要なFSL記述のファイルを書いておく

    # FSL記述を増やしたら，下記の行に追加する
    SRCS    = p32ExecUnit.fsl test_p32ExecUnit.fsl p32Opcode.fsl \
              alu32.fsl add32.fsl shift32.fsl 


### make の機能

1. FSL記述を作成，編集し，`make` でコンパイル（エラーチェック）
3. `make verilog` でコンパイルしてVerilog HDL記述コードの生成
4. `make vvp` で `test_p32ExecUnit.vvp`を生成
5. `make sim` でシミュレーション
6. `make diff` でシミュレーション結果と比較用結果ファイルを比較

### 不要なファイルの消去

1. `make clean` で掃除
2. `make distclean`で `.vvp`ファイルなども消去


### シミュレーション結果

      985: 101000 110011  0 2e93af8c d9c3bd32 637392e4 - 08576cbe 0000e400 0010

シミュレーション結果の各行は先頭から

* インデックス
* 操作コード (op) 
* 機能コード (funct)
* シフト量 (shamt)
* 入力データ a
* 入力データ b
* 入力データ mdata

* 出力 result
* 出力 mdata_out
* 出力 store_loc

---
