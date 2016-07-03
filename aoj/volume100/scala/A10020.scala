object Main {
  def main(args: Array[String]) {
    var counts = scala.collection.mutable.Map[Char, Int]()
    for {
      char <- 'a' to 'z'
    } counts(char) = 0

    val lines = Iterator.continually(scala.io.StdIn.readLine()).takeWhile(_ != null)
    for {
      line <- lines
      char <- line.toLowerCase
      if char.isLower
    } counts(char) += 1

    for {
      char <- 'a' to 'z'
    } println(s"$char : ${counts(char)}")
  }
}
