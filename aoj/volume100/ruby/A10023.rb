while cards = gets do
  cards.chomp!
  break if cards == "-"

  m = gets.to_i
  m.times {
    h = gets.to_i
    cards = cards[h..-1] + cards[0..h-1]
  }
  puts cards
end
