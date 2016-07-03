object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val n = scala.io.StdIn.readLine
    if (n == "0") {
      return
    }

    val scores = (scala.io.StdIn.readLine split " ").map(_.toDouble)
    val average = scores.sum / scores.length
    val variance = scores.map(score => scala.math.pow(average - score, 2)).sum / scores.length
    val standard_deviation = scala.math.sqrt(variance)
    printf("%.6f\n", standard_deviation)
    loop
  }
}
