object Main {
  def main(args: Array[String]) {
    val w = scala.io.StdIn.readLine.toLowerCase
    var count = 0
    for {
      line <- Iterator.continually(scala.io.StdIn.readLine).takeWhile(_ != "END_OF_TEXT")
      word <- line split " "
      if w == word.toLowerCase 
    } count += 1
    println(count)
  }
}
