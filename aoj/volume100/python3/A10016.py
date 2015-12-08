import sys

def grade(m, f, r):
    if m == -1 or f == -1:
        return 'F'
    elif m+f >= 80:
        return 'A'
    elif m+f >= 65:
        return 'B'
    elif m+f >= 50:
        return 'C'
    elif m+f >= 30 and r >= 50:
        return 'C'
    elif m+f >= 30:
        return 'D'
    elif m+f < 30:
        return 'F'

for line in sys.stdin:
    m, f, r = map(int, line.rstrip().split())
    if m == -1 and f == -1 and r == -1:
        break

    print(grade(m, f, r))
