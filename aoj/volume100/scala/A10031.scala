object Main {
  def main(args: Array[String]) {
    scala.io.StdIn.readLine // to skip n
    val s = (scala.io.StdIn.readLine split " ").map(_.toInt)
    scala.io.StdIn.readLine // to skip q
    val t = (scala.io.StdIn.readLine split " ").map(_.toInt)

    val intersect = s intersect t
    println(intersect.length)
  }
}
