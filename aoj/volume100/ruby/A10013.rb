$<.each do |l|
  break if l.chomp == "0 0"

  h, w = l.split.map(&:to_i)
  h.times {|y|
    w.times {|x|
      print (y == 0 || y == h-1 || x == 0 || x == w-1)?"#":"."
    }
    puts
  }
  puts
end
