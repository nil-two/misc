$<.each do |l|
  break if l.chomp == "0 0"

  h, w = l.split.map(&:to_i)
  h.times {|y|
    w.times {|x|
      print ((x+y)%2 == 0)?"#":"."
    }
    puts
  }
  puts
end
