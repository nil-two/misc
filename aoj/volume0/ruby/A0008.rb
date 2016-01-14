a = (0..9).to_a
$<.each_line do |line|
  n = line.to_i
  puts a.repeated_permutation(4).select{|nums| nums.inject(:+) == n}.size
end
