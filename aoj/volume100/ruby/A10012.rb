$<.each do |line|
  h, w = line.split.map(&:to_i)
  break if h == 0 && w == 0

  line = "#"*w + "\n"
  rect = line*h + "\n"
  puts rect
end
