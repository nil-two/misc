import sys

stack = []
for operation in sys.stdin:
    operation = operation.strip()

    if operation.startswith('quit'):
        break

    elif operation.startswith('push'):
        _, block = operation.split()
        stack.append(block)

    elif operation.startswith('pop'):
        print(stack.pop())
