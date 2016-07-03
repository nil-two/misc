object Main {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    val a = sc.nextInt
    val b = sc.nextInt
    val area      = a * b
    val perimeter = 2*a + 2*b
    println(s"$area $perimeter")
  }
}
