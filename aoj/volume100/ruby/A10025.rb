a, b, deg = gets.split.map(&:to_f)
rad       = deg * Math::PI / 180
c         = (a**2 + b**2 - 2*a*b*Math.cos(rad)) ** 0.5

area      = a*b*Math.sin(rad) / 2.0
perimeter = a + b + c
h         = 2*area / a
puts area.round(6)
puts perimeter.round(6)
puts h.round(6)
