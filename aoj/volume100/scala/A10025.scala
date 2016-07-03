object Main {
  def main(args: Array[String]) {
    val input = scala.io.StdIn.readLine split " "
    val a   = input(0).toDouble
    val b   = input(1).toDouble
    val deg = input(2).toDouble
    val rad = deg * scala.math.Pi / 180.0
    val c   = scala.math.sqrt(scala.math.pow(a, 2) + scala.math.pow(b, 2) - 2.0*a*b*scala.math.cos(rad))
    val area      = a*b*scala.math.sin(rad) / 2.0
    val perimeter = a + b + c
    val h         = 2.0*area / a
    printf("%.6f\n%.6f\n%.6f\n", area, perimeter, h)
  }
}
