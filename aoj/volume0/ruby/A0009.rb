require 'prime'
$<.each_line do |line|
  n = line.to_i
  puts Prime.each(n).to_a.size
end
