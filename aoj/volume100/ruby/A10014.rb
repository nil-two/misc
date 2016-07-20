$<.each do |line|
  h, w = line.split.map(&:to_i)
  break if h == 0 && w == 0

  chess_board = 1.upto(h).map{|y|
    1.upto(w).map{|x|
      (x+y)%2 == 0 ? "#" : "."
    }.join + "\n"
  }.join + "\n"
  print chess_board
end
