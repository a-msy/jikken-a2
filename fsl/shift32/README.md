32ビットシフタ
---

### (配布ファイル)

| ファイル名                   | 説明                                 |
|:-----------------------------|:-------------------------------------|
| `shift32.fsl`                | shift32モジュールFSL記述（雛形）     |
| `test_shift32.fsl`           | テストベンチFSL記述                  |
| `test_shift32.pat`           | テスト用パターンファイル             |
| `test_shift32.result.sample` | テスト用パターンファイル             |
| `Makefile`                   | Makefile                             |
| `README.md`                  | (このファイル)                       |

### サブモジュールのFSL記述ファイルについて

`Makefile` の下記の行に必要なFSL記述のファイルを書いておく（おそらく追加なしで書けるはずだが...）

    # FSL記述を増やしたら，下記の行に追加する
    SRCS 	= shift32.fsl test_shift32.fsl


### make の機能

1. FSL記述を作成，編集し，`make` でコンパイル（エラーチェック）
3. `make verilog` でコンパイルしてVerilog HDL記述コードの生成
4. `make vvp` で `test_add32.vvp`を生成
5. `make sim` でシミュレーション
6. `make diff` でシミュレーション結果と比較用結果ファイルを比較

### 不要なファイルの消去

1. `make clean` で掃除
2. `make distclean`で `.vvp`ファイルも消去

