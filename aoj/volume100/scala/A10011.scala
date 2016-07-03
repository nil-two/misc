object Main {
  def main(args: Array[String]) {
    scala.io.StdIn.readLine // to skip n
    val a = (scala.io.StdIn.readLine split " ").map(_.toInt)
    val reversed = a.reverse
    println(reversed.mkString(" "))
  }
}
