32ビット加算器
---

### (配布ファイル)

| ファイル名      | 説明                                 |
|:----------------|:-------------------------------------|
| add32.fsl       |  add32モジュールFSL記述（雛形）      |
| test_add32.fsl  |  テストベンチFSL記述                 |
| add32.rb        | テストベクタを生成するRubyプログラム |
| Makefile        | Makefile                             |


### make の機能

1. FSL記述を作成，編集し，`make` でコンパイル（エラーチェック）
3. `make verilog` でコンパイルしてVerilog HDL記述コードの生成
4. `make vvp` で `test_add32.vvp`を生成
5. `make testvector` でシミュレーション用テストベクタと比較用の結果ファイルを生成
6. `make sim` でシミュレーション
7. `make diff` でシミュレーション結果と比較用結果ファイルを比較

### 不要なファイルの消去

1. `make clean` で掃除
2. `make distclean`で `.vvp`ファイルも消去
3. `make clean.testvector` でテストベクタなどを消去
