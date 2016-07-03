object Main {
  def main(args: Array[String]) {
    var a_score = 0
    var b_score = 0
    val n_compares = scala.io.StdIn.readInt
    for (_ <- 1 to n_compares) {
      val input = scala.io.StdIn.readLine split " "
      val a_card = input(0)
      val b_card = input(1)
      val result = a_card compare b_card
      if (result == 0) {
        a_score += 1
        b_score += 1
      } else if (result > 0) {
        a_score += 3
      } else if (result < 0) {
        b_score += 3
      }
    }
    println(s"$a_score $b_score")
  }
}
