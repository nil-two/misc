$<.each_with_index do |line, i|
  x = line.to_i
  break if x == 0

  puts "Case #{i+1}: #{x}"
end
