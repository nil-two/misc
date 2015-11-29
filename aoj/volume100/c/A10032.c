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

int main() {
	char operation[16];
	char block;
	Stack *stack = stackNew(N+1);
	for (;;) {
		scanf("%s", operation);
		if (strcmp(operation, "quit") == 0) {
			break;

		} else if (strcmp(operation, "push") == 0) {
			scanf(" %c", &block);
			stackPush(stack, block);

		} else if (strcmp(operation, "pop") == 0) {
			block = stackPop(stack);
			printf("%c\n", block);

		}
	}
	return 0;
}
