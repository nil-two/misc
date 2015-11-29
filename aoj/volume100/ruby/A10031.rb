_ = gets
a = gets.split.map(&:to_i)
_ = gets
b = gets.split.map(&:to_i)

c = (a & b)
puts c.size
