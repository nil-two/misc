nlines = gets.to_i
sides  = []

_ = gets.to_i
while line = gets do
  sides << line.split(/,/).map(&:to_i)
end

ends = []
1.upto(nlines) do |start|
  cur = start
  sides.each do |side|
    case cur
    when side[0]
      cur = side[1]
    when side[1]
      cur = side[0]
    end
  end
  ends[cur - 1] = start
end

puts ends
