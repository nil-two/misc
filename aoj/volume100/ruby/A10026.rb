while noItem = gets do
  break if noItem.chomp == "0"

  ss       = gets.split.map(&:to_f)
  average  = ss.inject(:+).to_f / ss.size
  variance = ss.inject(0.0) {|sum, s| sum += (s-average)**2 } / ss.size

  standarddeviation = variance ** 0.5
  puts standarddeviation.round(6)
end
