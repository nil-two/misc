object Main {
  def main(args: Array[String]) {
    scala.io.StdIn.readLine // to skip n
    val lines = Iterator.continually(scala.io.StdIn.readLine).takeWhile(_ != null).toList
    val sorted = lines.sorted
    println(sorted(0))
  }
}
