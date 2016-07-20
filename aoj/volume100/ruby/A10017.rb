$<.each do |line|
  n, x = line.split.map(&:to_i)
  break if n == 0 && x == 0

  n_ways = [*1..n]
    .combination(3)
    .select{|nums| nums.inject(:+) == x}
    .length
  puts n_ways
end
