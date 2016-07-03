object Main {
  def main(args: Array[String]) {
    loop
  }

  def loop {
    var cards = scala.io.StdIn.readLine
    if (cards == "-") {
      return
    }

    val n_shuffle = scala.io.StdIn.readInt
    for (_ <- 1 to n_shuffle) {
      val h = scala.io.StdIn.readInt
      cards = cards.slice(h, cards.length) + cards.slice(0, h)
    }
    println(cards)
    loop
  }
}
