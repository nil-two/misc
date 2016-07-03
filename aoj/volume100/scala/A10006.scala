object Main {
  def main(args: Array[String]) {
    loop(1)
  }

  def loop(i: Int) {
    val n = scala.io.StdIn.readInt
    if (n == 0) {
      return
    }

    println(s"Case $i: $n")
    loop(i + 1)
  }
}
