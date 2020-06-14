【プログラミング課題3】
=====

2個の32ビットの無符号整数値を受取り，それらの積を計算し，
64ビットの乗算結果を返す乗算ルーチンを作成せよ．
乗算ルーチンへの引数は

* 被乗数を$a0で，
* 乗数を$a1

でそれぞれ与え，結果は，

* 上位ワードを$v0に，
* 下位ワードを$v1

に格納することとする．
作成したプログラムは，シミュレータにて動作確認を行なうこと．

---

テンプレート

* `multiply1.s` ... ラベル`multiply`の下の部分のコードを埋める

`main`では，`$a0 <-- 6`，`$1 <-- 10` を与えて`multiply`を呼び出している．
計算結果はメモリの0x10004000番地と0x10004004番地に格納するとともに，
`$s0`と`$s1`に保存している．

---

# 見出し

- aaaaaaaaaaaaaaaaaaaaaaaaa
- aaaaaaaaaaaaaaaaaaaaaaaaaa
- aaaaaaaaaaaaaaaaaaaaaaaaaa
- aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa


```
#include
```
