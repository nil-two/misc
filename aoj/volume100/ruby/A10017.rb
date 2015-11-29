$<.each do |l|
  break if l.chomp == "0 0"

  cnt = 0
  n, x = l.split.map(&:to_i)
  (1..n).to_a.combination(3).each{|c|
    cnt += 1 if c.inject(:+) == x
  }
  puts cnt
end
