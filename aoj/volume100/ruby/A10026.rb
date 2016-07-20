while line = gets do
  n_items = line.to_i
  break if n_items == 0

  scores   = gets.split.map(&:to_f)
  average  = scores.inject(:+).to_f / scores.size
  variance = scores.inject(0.0){|sum, score| sum += (score-average)**2} / scores.size

  standard_deviation = variance ** 0.5
  puts standard_deviation.round(6)
end
