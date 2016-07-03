object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val input = scala.io.StdIn.readLine split " "
    val n = input(0).toInt
    val x = input(1).toInt
    if (n == 0 && x == 0) {
      return
    }

    var n_ways = 0
    for (v1 <- 1    to n)
    for (v2 <- v1+1 to n)
    for (v3 <- v2+1 to n)
      if (v1 + v2 + v3 == x)
        n_ways += 1
    println(n_ways)
    loop
  }
}
