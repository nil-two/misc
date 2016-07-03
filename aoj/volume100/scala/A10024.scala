object Main {
  def main(args: Array[String]) {
    val input = scala.io.StdIn.readLine split " "
    val x1 = input(0).toDouble
    val y1 = input(1).toDouble
    val x2 = input(2).toDouble
    val y2 = input(3).toDouble
    val distance = scala.math.sqrt(scala.math.pow(x2-x1, 2) + scala.math.pow(y2-y1, 2))
    printf("%.6f\n", distance)
  }
}
