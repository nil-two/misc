inks = {
  1 => [
              [ 0, -1],
    [-1,  0], [ 0,  0], [ 1,  0],
              [ 0,  1],
  ],
  2 => [
    [-1, -1], [ 0, -1], [ 1, -1],
    [-1,  0], [ 0,  0], [ 1,  0],
    [-1,  1], [ 0,  1], [ 1,  1],
  ],
  3 => [
                        [ 0, -2],
              [-1, -1], [ 0, -1], [ 1, -1],
    [-2,  0], [-1,  0], [ 0,  0], [ 1,  0], [ 2,  0],
              [-1,  1], [ 0,  1], [ 1,  1],
                        [ 0,  2],
  ],
}

paper = Array.new(10).map{ Array.new(10, 0) }

$<.each_line do |line|
  x, y, size = line.split(/,/).map(&:to_i)
  inks[size].each do |dx, dy|
    px, py = x+dx, y+dy
    next if px < 0 || 10 <= px || py < 0 || 10 <= py
    paper[py][px] += 1
  end
end

cells     = paper.flatten
max_depth = cells.max
n_white   = cells.select{|n| n == 0}.size

puts n_white
puts max_depth
