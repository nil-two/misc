object Main {
  def main(args: Array[String]) {
    val suits = List('S', 'H', 'C', 'D');
    val ranks = (1 to 13).toList;

    var missing_cards = scala.collection.mutable.Set[String]()
    for (suit <- suits; rank <- ranks) {
      val card = s"$suit $rank"
      missing_cards += card
    }

    val n_missing_cards = scala.io.StdIn.readInt
    for (_ <- 1 to n_missing_cards) {
      val card = scala.io.StdIn.readLine
      missing_cards -= card
    }

    for (suit <- suits; rank <- ranks) {
      val card = s"$suit $rank"
      if (missing_cards contains card) {
        println(card)
      }
    } 
  }
}
