object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val input = scala.io.StdIn.readLine split " "
    val a  = input(0).toInt
    val op = input(1)
    val b  = input(2).toInt
    if (op == "?") {
      return
    }

    val result = op match {
      case "+" => a + b
      case "-" => a - b
      case "*" => a * b
      case "/" => a / b
      case _   => 0
    }
    println(result)
    loop
  }
}
