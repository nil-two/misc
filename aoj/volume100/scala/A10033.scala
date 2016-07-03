object Main {
  def main(args: Array[String]) {
    val n_stacks = scala.io.StdIn.readInt
    var stacks = Array.ofDim[scala.collection.mutable.Stack[String]](n_stacks)
    for (i <- 1 to n_stacks) {
      stacks(i-1) = scala.collection.mutable.Stack[String]()
    }

    val instructions = Iterator.continually(scala.io.StdIn.readLine).takeWhile(_ != "quit")
    for (instruction <- instructions) {
      val input = instruction split " "
      val operation = input(0)
      if (operation == "push") {
        val dst   = input(1).toInt
        val block = input(2)
        stacks(dst-1).push(block)
      }
      if (operation == "pop") {
        val src   = input(1).toInt
        val block = stacks(src-1).pop
        println(block)
      }
      if (operation == "move") {
        val src = input(1).toInt
        val dst = input(2).toInt
        stacks(dst-1).push(stacks(src-1).pop)
      }
    }
  }
}
