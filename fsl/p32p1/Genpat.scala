/*
 * USAGE: scala Genpat.scala 
 * 入力パターンを生成
 */
object Genpat {
  import scala.math._
  import scala.util.Random
  private def rand(): Int = {
    Random.nextInt()
  }
  private def rand(n: Int): Int = {
    Random.nextInt(n)
  }
  final val N_PAT = 1000 // パターン数
  final def main(args: Array[String]): Unit = {
    val arg = if (args.length >= 1) args(0) else ""
    Random.setSeed(20200517) // 乱数の種
    val MAX: Long = 0x00000000ffffffff
    for (i <- 0 until N_PAT) {
      val addr1 = rand(32) // 5-bits
      val in1 = if (addr1 == 0) 0 else rand() // 32-bits
      val addr2 = rand(32) // 5-bits
      val in2 = if (addr2 == 0) 0 else rand() // 32-bits
      val ex_addr = rand(32)
      val me_addr = rand(32)
      val wb_addr = rand(32)
      val ex_load = rand(2)
      println("%02x_%08x_%02x_%08x_%02x_%02x_%02x_%01x".
	      format(addr1, in1, addr2, in2,
		     ex_addr, me_addr, wb_addr, ex_load))
    }
  }
}
/* End of file (Genpat.scala) */
