class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def get_distance(p)
    return ((@x-p.x)**2 + (@y-p.y)**2)**0.5
  end
end

def heron(a, b, c)
  s = (a+b+c) / 2.0
  return (s*(s-a)*(s-b)*(s-c))**0.5
end

$<.each_line do |line|
  x1, y1, x2, y2, x3, y3, xp, yp = line.split.map(&:to_f)

  p1 = Point.new(x1, y1)
  p2 = Point.new(x2, y2)
  p3 = Point.new(x3, y3)
  pc = Point.new(xp, yp)

  triangle_size = heron(
    p1.get_distance(p2),
    p2.get_distance(p3),
    p3.get_distance(p1),
  )

  part_size = 0.0
  part_size += heron(
    p1.get_distance(pc),
    p2.get_distance(p1),
    pc.get_distance(p2),
  )
  part_size += heron(
    p2.get_distance(pc),
    p3.get_distance(p2),
    pc.get_distance(p3),
  )
  part_size += heron(
    p3.get_distance(pc),
    p1.get_distance(p3),
    pc.get_distance(p1),
  )

  puts ((triangle_size - part_size).abs < 0.000001) ? "YES" : "NO"
end
