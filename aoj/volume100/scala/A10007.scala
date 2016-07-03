object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val ls = (scala.io.StdIn.readLine split " ").map(_.toInt)
    if (ls(0) == 0 && ls(1) == 0) {
      return
    }

    val sorted = ls.sorted
    println(s"${sorted(0)} ${sorted(1)}")
    loop
  }
}
