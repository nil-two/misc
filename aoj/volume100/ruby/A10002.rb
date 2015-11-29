a, b = gets.split.map(&:to_i)

area      = a * b
perimeter = 2*a + 2*b
puts "#{area} #{perimeter}"
