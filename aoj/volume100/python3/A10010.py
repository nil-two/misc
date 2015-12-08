import sys

operators = {
    "+": lambda a, b: a + b,
    "-": lambda a, b: a - b,
    "*": lambda a, b: a * b,
    "/": lambda a, b: a // b,
    }

for line in sys.stdin:
    raw_a, op, raw_b = line.rstrip().split()
    if op == "?":
        break

    a, b = map(int, [raw_a, raw_b])
    result = operators[op](a, b)

    print(result)
