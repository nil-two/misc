import sys
import itertools

for line in sys.stdin:
    n, x = map(int, line.rstrip().split())
    if n == 0 and x == 0:
        break

    count = 0
    for case in itertools.combinations(range(1, n+1), 3):
        if sum(case) == x:
            count += 1

    print(count)
