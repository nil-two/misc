words     = $<.each_line.map{|l| l.split}.flatten.map(&:downcase)
counts    = words.uniq.map{|w| [w, words.count(w)]}
max_count = counts.map{|w, c| c}.max
modes     = counts.select{|n, c| c == max_count}.map{|n, c| n}.sort[0]
longest   = words.max_by(&:size)
puts "#{modes} #{longest}"
