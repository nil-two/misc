object Main {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    val a = sc.nextInt
    val b = sc.nextInt
    val relation = toRelation(a, b)
    println(relation)
  }

  def toRelation(a: Int, b: Int): String = {
    if (a == b) "a == b"
    else if (a < b) "a < b"
    else if (a > b) "a > b"
    else ""
  }
}
