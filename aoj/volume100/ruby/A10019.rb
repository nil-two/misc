$<.each do |line|
  x = line.to_i
  break if x == 0

  nums = x.to_s.chars.map(&:to_i)
  sum  = nums.inject(:+)
  puts sum
end
