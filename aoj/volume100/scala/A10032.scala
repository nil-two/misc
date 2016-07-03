object Main {
  var stack = scala.collection.mutable.Stack[String]()
  def main(args: Array[String]) {
    val instructions = Iterator.continually(scala.io.StdIn.readLine).takeWhile(_ != "quit")
    for (instruction <- instructions) {
      val input = instruction split " "
      val operation = input(0)
      if (operation == "push") {
        val block = input(1)
        stack.push(block)
      }
      if (operation == "pop") {
        val block = stack.pop()
        println(block)
      }
    }
  }
}
