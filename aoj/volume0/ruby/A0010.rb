_ = gets
$<.each_line do |line|
  x1, y1, x2, y2, x3, y3 = line.split.map(&:to_f)
  a = ((x2-x1)**2 + (y2-y1)**2)**0.5
  b = ((x3-x2)**2 + (y3-y2)**2)**0.5
  c = ((x1-x3)**2 + (y1-y3)**2)**0.5
 
  a1 = 2*(x2 - x1)
  b1 = 2*(y2 - y1)
  c1 = x1**2 - x2**2 + y1**2 - y2**2
  a2 = 2*(x3 - x1)
  b2 = 2*(y3 - y1)
  c2 = x1**2 - x3**2 + y1**2 - y3**2
 
  x = (b1*c2 - b2*c1) / (a1*b2 - a2*b1)
  y = (c1*a2 - c2*a1) / (a1*b2 - a2*b1)
  r = (a*b*c) / (((a+b+c)*(b+c-a)*(c+a-b)*(a+b-c))**0.5)
 
  printf "%.3f %.3f %.3f\n", x, y, r
end
