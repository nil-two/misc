object Main {
  def main(args: Array[String]) {
    val r = scala.io.StdIn.readDouble
    val area          = scala.math.Pi * scala.math.pow(r, 2)
    val circumference = 2 * scala.math.Pi * r
    printf("%.6f %.6f\n", area, circumference)
  }
}
