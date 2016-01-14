$<.each_line do |line|
  a, b = line.split.map(&:to_i)
  puts "#{a.gcd(b)} #{a.lcm(b)}"
end
