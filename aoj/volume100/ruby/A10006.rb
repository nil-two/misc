$<.each_with_index do |x, i|
  break if x.chomp == "0"
  puts "Case #{i+1}: #{x}"
end
