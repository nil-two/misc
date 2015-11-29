$<.each do |l|
  break if l.chomp == "0"
  puts l.chomp.split(//).map(&:to_i).inject(:+)
end
