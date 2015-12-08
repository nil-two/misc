import sys

for line in sys.stdin:
    h, w = map(int, line.rstrip().split())
    if h == 0 and w == 0:
        break

    rect = ('#'*w + '\n') * h

    print(rect)
