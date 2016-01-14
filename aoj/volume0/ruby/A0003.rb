_ = gets
$<.each_line do |line|
  a, b, c = line.split.map(&:to_i).sort
  puts (a**2 + b**2 == c**2) ? 'YES' : 'NO'
end

