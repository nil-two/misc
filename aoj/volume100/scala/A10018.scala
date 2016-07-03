object Main {
  def main(args: Array[String]) {
    val s = scala.io.StdIn.readLine
    println(s.map(ch => swapcase(ch)))
  }

  def swapcase(c:Char): Char = {
    if (c.isLower) c.toUpper
    else if (c.isUpper) c.toLower
    else c
  }
}
