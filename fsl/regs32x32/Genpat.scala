/*
 * USAGE: scala Genpat.scala [引数]
 * 引数が genpat または，なしの場合は，入力パターンを
 *        genout の場合は，入出力パターンを生成
 */
object Genpat {
  import scala.math._
  import scala.util.Random
  class Regs {
    val regs = new Array[Int](32)
    def read(i: Int): Int = if (i != 0) regs(i) else 0x00000000
    def write(i: Int, v: Int): Unit = if (i != 0) regs(i) = v
  }
  private def rand(): Int = {
    Random.nextInt()
  }
  final def main(args: Array[String]): Unit = {
    val arg = if (args.length >= 1) args(0) else ""
    Random.setSeed(20200517) // 乱数の種
    val MAX: Long = 0x00000000ffffffff
    val regs = new Regs
    for (i <- 0 until 1000) {
      val a1 = rand() & 31  // 書き込みレジスタ番号 ポートa
      val b1 = rand() & 31  // 書き込みレジスタ番号 ポートb
      val c1 = rand() & 31  // 読み出しレジスタ番号
      val a = regs.read(a1) // ポート a の値 期待値
      val b = regs.read(b1) // ポート b の値 期待値
      val v = rand()        // 書き込み値（乱数）
      regs.write(c1, v)     // レジスタへの書き込み
      if (arg == "genout") {
	println("%5d: %2d %2d %2d %08x - %08x %08x".
		format(i, a1, b1, c1, v, a, b))
      } else { // "genpat"
	println("%02x_%02x_%02x_%08x".format(a1, b1, c1, v))
      }
    }
  }
}
/* End of file (Genpat.scala) */
