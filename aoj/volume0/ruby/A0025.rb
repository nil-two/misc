loop do
  raw_a = gets
  raw_b = gets
  break if raw_a == nil || raw_b == nil

  a = raw_a.split.map(&:to_i)
  b = raw_b.split.map(&:to_i)

  hits, misses = a.zip(b).partition{|n, m| n == m}

  n_hits  = hits.size
  n_brows = misses.select{|n, m| a.include?(m)}.size
  puts "#{n_hits} #{n_brows}"
end
