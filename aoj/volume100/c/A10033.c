#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum {
	N = 1000,
};

typedef struct Stack Stack;
struct Stack {
	int  top;
	char *stack;
};

Stack *stackNew(int maxTop) {
	Stack *s = (Stack *)malloc(sizeof(Stack));
	s->top   = 0;
	s->stack = (char *)calloc(maxTop, sizeof(char));
	return s;
}

void stackPush(Stack *s, char ch) {
	s->stack[s->top] = ch;
	s->top++;
}

char stackPop(Stack *s) {
	s->top--;
	return s->stack[s->top];
}

void stackMove(Stack *src, Stack *dst) {
	stackPush(dst, stackPop(src));
}

int main() {
	char operation[16];
	int src_i, dst_i;
	char block;
	int i;
	int noStack;
	Stack **stacks;

	scanf("%d", &noStack);
	stacks = (Stack **)malloc(noStack * sizeof(Stack *));
	for (i = 0; i < noStack; i++)
		stacks[i] = stackNew(N+1);

	for (;;) {
		scanf("%s", operation);
		if (strcmp(operation, "quit") == 0) {
			break;

		} else if (strcmp(operation, "push") == 0) {
			scanf("%d %c", &dst_i, &block);
			stackPush(stacks[dst_i-1], block);

		} else if (strcmp(operation, "pop") == 0) {
			scanf("%d", &src_i);
			block = stackPop(stacks[src_i-1]);
			printf("%c\n", block);

		} else if (strcmp(operation, "move") == 0) {
			scanf("%d %d", &src_i, &dst_i);
			stackMove(stacks[src_i-1], stacks[dst_i-1]);

		}
	}
	return 0;
}
