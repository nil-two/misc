import math

r = float(input())

area = math.pi * r ** 2
circumference = 2 * math.pi * r

print("%.6f %.6f" % (area, circumference))
