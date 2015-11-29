$<.each do |l|
  break if l.chomp == "0 0"

  h, w = l.split.map(&:to_i)
  h.times {
    puts "#" * w
  }
  puts
end
