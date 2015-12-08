import sys

for line in sys.stdin:
    h, w = map(int, line.rstrip().split())
    if h == 0 and w == 0:
        break

    edge = '#'*w + '\n'
    rect = ''.join([edge, ('#' + '.'*(w-2) + '#\n') * (h-2), edge])

    print(rect)
