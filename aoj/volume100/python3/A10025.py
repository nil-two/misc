import math

a, b, deg = map(float, input().split())

rad = deg * math.pi / 180
c = (a**2 + b**2 - 2*a*b*math.cos(rad)) ** 0.5

area = a*b*math.sin(rad) / 2.0
perimeter = a + b + c
h = 2*area / a

print("%.6f\n%.6f\n%.6f\n" % (area, perimeter, h))
