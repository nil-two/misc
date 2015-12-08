import sys

counts = {}
for i in range(ord('a'), ord('z')+1):
    counts[chr(i)] = 0

for line in sys.stdin:
    for char in line.lower():
        if char in counts:
            counts[char] += 1

for i in range(ord('a'), ord('z')+1):
    char = chr(i)
    print("%s : %d" % (char, counts[char]))
