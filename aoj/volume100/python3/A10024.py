x1, y1, x2, y2 = map(float, input().split())

distance = (abs(x2-x1)**2 + abs(y2-y1)**2) ** 0.5

print('%.6f\n' % distance)
