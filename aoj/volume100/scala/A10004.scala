object Main {
  def main(args: Array[String]) {
    val ls = (scala.io.StdIn.readLine split " ").map(_.toInt)
    val sorted = ls.sorted
    println(s"${sorted(0)} ${sorted(1)} ${sorted(2)}")
  }
}
