object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    val input = scala.io.StdIn.readLine split " "
    val m = input(0).toInt
    val f = input(1).toInt
    val r = input(2).toInt
    if (m == -1 && f == -1 && r == -1) {
      return
    }

    val grade = toGrade(m, f, r)
    println(grade)
    loop
  }

  def toGrade(m:Int, f:Int, r:Int):String = {
    if (m == -1 || f == -1)        "F"
    else if (m+f >= 80)            "A"
    else if (m+f >= 65)            "B"
    else if (m+f >= 50)            "C"
    else if (m+f >= 30 && r >= 50) "C"
    else if (m+f >= 30)            "D"
    else                           "F"
  }
}
