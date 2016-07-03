object Main {
  def main(args: Array[String]) {
    val n    = scala.io.StdIn.readInt
    val cube = scala.math.pow(n, 3).toInt
    println(cube)
  }
}
