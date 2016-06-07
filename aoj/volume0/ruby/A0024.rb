$<.each_line do |line|
  v = line.to_f
  t = v / 9.8
  y = 4.9 * t**2
  puts (y / 5).ceil + 1
end
