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

void stack_move(Stack *src, Stack *dst) {
	stack_push(dst, stack_pop(src));
}

int main() {
	char operation[16];
	char block;
	int i;
	int src_i, dst_i;
	int no_stacks;
	Stack **stacks;

	scanf("%d", &no_stacks);
	stacks = (Stack **)malloc(no_stacks * sizeof(Stack *));
	for (i = 0; i < no_stacks; i++)
		stacks[i] = stack_new(N+1);

	for (;;) {
		scanf("%s", operation);
		if (strcmp(operation, "quit") == 0) {
			break;

		} else if (strcmp(operation, "push") == 0) {
			scanf("%d %c", &dst_i, &block);
			stack_push(stacks[dst_i-1], block);

		} else if (strcmp(operation, "pop") == 0) {
			scanf("%d", &src_i);
			block = stack_pop(stacks[src_i-1]);
			printf("%c\n", block);

		} else if (strcmp(operation, "move") == 0) {
			scanf("%d %d", &src_i, &dst_i);
			stack_move(stacks[src_i-1], stacks[dst_i-1]);

		}
	}
	return 0;
}
