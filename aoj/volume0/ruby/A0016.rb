class TreasureHunter
  def initialize
    @x = 0
    @y = 0
    @deg = 0
  end

  def to_rad(deg)
    return Math::PI * deg / 180.0
  end
  
  def walk(distance)
    @x += Math.sin(to_rad(@deg)) * distance
    @y += Math.cos(to_rad(@deg)) * distance
  end

  def turn(direction)
    @deg += direction
  end

  def dumpXY
    return [@x.to_i, @y.to_i]
  end
end

t = TreasureHunter.new
$<.each_line do |line|
  distance, direction = line.split(/,/).map(&:to_i)
  t.walk(distance)
  t.turn(direction)
end
puts t.dumpXY
