x1, y1, x2, y2 = gets.split.map(&:to_f)

dx = (x2-x1).abs
dy = (y2-y1).abs
distance = (dx**2 + dy**2) ** 0.5
puts distance.round(6)
