scoreA, scoreB = 0, 0

noGame = gets.to_i
noGame.times {
  a, b = gets.chomp.split
  case
  when a == b
    scoreA += 1
    scoreB += 1
  when a > b
    scoreA += 3
  when a < b
    scoreB += 3
  end
}

puts "#{scoreA} #{scoreB}"
