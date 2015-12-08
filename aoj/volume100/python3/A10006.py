import sys

i = 0
for line in sys.stdin:
    i = i + 1
    n = int(line.rstrip())
    if n == 0:
        break

    print("Case %d: %s" % (i, n))
