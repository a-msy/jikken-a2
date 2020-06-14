p32デコードユニットモジュール p32DecodeUnit
---

### (配布ファイル)

| ファイル名               | 説明                                      |
|:-------------------------|:------------------------------------------|
| `p32DecodeUnit.fsl`      | デコードユニットモジュールFSL記述（雛形） |
| `p32Opcode.fsl`          | 操作コード等の定義                        |
| `p32ExceptionCauseCode.fsl` | 例外原因コードの定義                   |
| `test_p32DecodeUnit.fsl` | テストベンチFSL記述                       |
| `test_p32DecodeUnit.pat` | テストベクタ（入力パターン）ファイル      |
| `test_p32DecodeUnit.result.sample` | シミュレーション結果比較用のファイル |
| `Genpat.scala`           | テストベクタを生成するScalaプログラム     |
| `Makefile`               | Makefile                                  |
| `README.md`              | このファイル                              |


### サブモジュールのFSL記述ファイルについて

`p32DecodeUnit.fsl` で用いるサブモジュールのFSL記述ファイル（例えば，
alu32の記述ファイルなど）はこのディレクトリにコピーしておく．
また，Makefile の下記の行に必要なFSL記述のファイルを書いておく

    # FSL記述を増やしたら，下記の行に追加する
    SRCS 	= p32DecodeUnit.fsl test_p32DecodeUnit.fsl p32Opcode.fsl \
                  p32ExceptionCauseCode.fsl add32.fsl



### make の機能

1. FSL記述を作成，編集し，`make` でコンパイル（エラーチェック）
3. `make verilog` でコンパイルしてVerilog HDL記述コードの生成
4. `make vvp` で `test_p32ExecUnit.vvp`を生成
5. `make sim` でシミュレーション
6. `make diff` でシミュレーション結果と比較用結果ファイルを比較
シミュレーション結果の差分がない場合，下記の表示だけになります．

    diff test_p32DecodeUnit.result test_p32DecodeUnit.result.sample || exit $(($? - 1))



### 不要なファイルの消去

1. `make clean` で掃除
2. `make distclean`で `.vvp`ファイルなども消去


### シミュレーション結果


      989: 14d81825 c4442007 08fdeb71 e1505e7b - c4442007 00001825  0  0 00  1:e150bf0f 0:xxxxxxxx 0:xxxxxxxx 0:x 0 0


シミュレーション結果の各行は先頭から

* インデックス（テスト番号）
* 命令コード(`inst`)
* 入力データa (`a_data`)
* 入力データb (`b_data`)
* 入力プログラムカウンタ (`pc`)

* 出力a (`a_out`)
* 出力b (`b_out`)
* 出力 `dest_out`
* 出力 `shamt_out`
* 出力 `mdr_out`
* 出力`update_pc` と 出力`pc_out` (`update_pc` == 1)の場合のみ
* 出力`update_mdr` と 出力`mdr_out` (`update_mdr` == 1)の場合のみ
* 出力`set_epc` と 出力`epc_out` (`set_epc` == 1)の場合のみ
* 出力`set_cause` と 出力`cause_out` (`set_cause` == 1)の場合のみ
* 出力`exception`
* 出力`undefined_inst`

詳細は，テストベンチのFSL記述（`test_p32DecodeUnit.fsl`）を参照のこと．

---
