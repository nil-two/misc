items     = $<.each_line.map(&:to_i)
counts    = items.uniq.map{|n| [n, items.count(n)]}
max_count = counts.map{|n, c| c}.max
modes     = counts.select{|n, c| c == max_count}.map{|n, c| n}.sort
puts modes
