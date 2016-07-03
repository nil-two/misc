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

    val rect = ("#"*w+"\n")*h
    println(rect)
    loop
  }
}
