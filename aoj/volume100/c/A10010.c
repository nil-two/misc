#include <stdio.h>

int calcSimple(char op, int a, int b) {
	switch (op) {
	case '+': return a + b;
	case '-': return a - b;
	case '*': return a * b;
	case '/': return a / b;
	default : return 0;
	}
}

int main() {
	int a, b;
	char op;
	for(;;) {
		scanf("%d %c %d", &a, &op, &b);
		if (op == '?')
			break;

		printf("%d\n", calcSimple(op, a, b));
	}
	return 0;
}
