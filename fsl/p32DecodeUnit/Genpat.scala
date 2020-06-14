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
  val op_def = Array(0x00, 0x02, 0x03, 0x04, 0x05, 
		     0x08, 0x09, 0x0a, 0x0b, 0x0c,
		     0x0d, 0x0e, 0x0f, 0x20, 0x23, 
		     0x28, 0x2b, 0x3f) // 17 + 1
  val funct_def = Array(0x00, 0x02, 0x03, 0x04, 0x06, 
			0x07, 0x08, 0x09, 0x0c, 0x10,
			0x12, 0x18, 0x19, 0x1a, 0x1b,
			0x20, 0x21, 0x22, 0x23, 0x24,
			0x25, 0x26, 0x27, 0x2a, 0x2b,
		        0x01) // 25 + 1

  final val N_PAT = 1000 // パターン数
  final def main(args: Array[String]): Unit = {
    val arg = if (args.length >= 1) args(0) else ""
    Random.setSeed(20200517) // 乱数の種
    val MAX: Long = 0x00000000ffffffff
    val n_op = op_def.size
    val n_funct = op_def.size
    for (i <- 0 until N_PAT) {
      val op    = op_def(rand(n_op)) & 63 // 6-bits
      val funct = if (op == 0) funct_def(rand(n_funct)) & 63 
		  else         rand(64) & 63 // 6-bits
      val shamt = op match {
	case 0x00 | 0x02 | 0x03 => rand(31) & 31
	case _ => 0
      }
      val inst  = ((rand()       & ~0xfc0007ff) |
		   ((op << 26)   &  0xfc000000) |
		   ((shamt << 6) &  0x000007c0) |
		   ((funct       &  0x0000003f)))
      val a     = rand()
      val b     = rand()
      val pc_in = rand()
      println("%08x_%08x_%08x_%08x".
	      format(inst, a, b, pc_in))
    }
  }
}
/* End of file (Genpat.scala) */
