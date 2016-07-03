object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val s = scala.io.StdIn.readLine
    if (s == "0") {
      return
    }

    val sum = s.map(ch => s"$ch".toInt).sum
    println(sum)
    loop
  }
}
