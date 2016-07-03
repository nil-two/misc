object Main {
  def main(args: Array[String]) {
    scala.io.StdIn.readLine // to skip n
    val nums = (scala.io.StdIn.readLine split " ").map(_.toInt)
    val sorted = nums.sorted
    val result = sorted.mkString(" ")
    println(result)
  }
}
