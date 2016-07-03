object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val input = scala.io.StdIn.readLine split " "
    val h = input(0).toInt
    val w = input(1).toInt
    if (h == 0 && w == 0) {
      return
    }

    val rect = 1.to(h).map(y =>
        1.to(w).map(x => 
            if ((x+y) % 2 == 0) "#" else "."
        ).mkString + "\n"
    ).mkString
    println(rect)
    loop
  }
}
