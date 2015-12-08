import sys

for line in sys.stdin:
    h, w = map(int, line.rstrip().split())
    if h == 0 and w == 0:
        break

    rect = ''.join([
        ''.join([(x+y) % 2 == 0 and '#' or '.' for x in range(w)]) + '\n'
        for y in range(h)
        ])

    print(rect)
