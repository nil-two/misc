$<.each_line do |line|
  a1, b1, c1, a2, b2, c2 = line.split.map(&:to_f)
  a = (a1*b2 - a2*b1)
  x = (c1*b2 - c2*b1) / a + 0
  y = (a1*c2 - a2*c1) / a + 0
  printf "%.3f %.3f\n", x, y
end
