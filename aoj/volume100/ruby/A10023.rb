while line = gets do
  cards = line.chomp
  break if cards == "-"

  m = gets.to_i
  m.times do
    h     = gets.to_i
    cards = cards.slice(h..-1) + cards.slice(0..h-1)
  end
  puts cards
end
