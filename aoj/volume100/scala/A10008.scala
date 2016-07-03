object Main {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    val a = sc.nextInt
    val b = sc.nextInt
    printf("%d %d %.6f", (a / b), (a % b), (a.toDouble / b.toDouble))
  }
}
