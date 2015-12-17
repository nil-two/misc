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

Stack *stack_new(int max_top) {
	Stack *s = (Stack *)malloc(sizeof(Stack));
	s->top   = 0;
	s->stack = (char *)calloc(max_top, sizeof(char));
	return s;
}

void stack_push(Stack *s, char block) {
	s->stack[s->top] = block;
	s->top++;
}

char stack_pop(Stack *s) {
	s->top--;
	return s->stack[s->top];
}

int main() {
	char operation[16];
	char block;
	Stack *stack = stack_new(N+1);
	for (;;) {
		scanf("%s", operation);
		if (strcmp(operation, "quit") == 0) {
			break;

		} else if (strcmp(operation, "push") == 0) {
			scanf(" %c", &block);
			stack_push(stack, block);

		} else if (strcmp(operation, "pop") == 0) {
			block = stack_pop(stack);
			printf("%c\n", block);

		}
	}
	return 0;
}
