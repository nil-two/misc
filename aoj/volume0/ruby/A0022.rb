loop do
  n = gets.to_i
  break if n == 0

  max = -100000
  sum = 0
  n.times do
    m = gets.to_i
    sum += m
    max = [max, sum].max
    sum = [sum, 0].max
  end
  puts max
end
