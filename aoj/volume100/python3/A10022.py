import sys

w = input().lower()

count = 0
for line in sys.stdin:
    if line == 'END_OF_TEXT':
        break
    
    for t in line.lower().split():
        if w == t:
            count += 1

print(count)
