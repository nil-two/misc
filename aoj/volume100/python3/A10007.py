import sys

for line in sys.stdin:
    if line == '0 0\n':
        break

    nums = map(int, line.split())
    sorted_nums = sorted(nums)

    print(' '.join(map(str, sorted_nums)))
