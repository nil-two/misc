import sys

for line in sys.stdin:
    if line == "0\n":
        break

    total = sum(map(int, list(line.rstrip())))
    
    print(total)
