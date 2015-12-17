#include <ctype.h>
#include <stdio.h>
#include <string.h>

enum {
	N = 1000,
};

int sum_of_digits(char *digits) {
	int i;
	int sum = 0;
	for (i = 0; digits[i] != '\0'; i++)
		if (isdigit(digits[i]))
			sum += digits[i] - '0';
	return sum;
}

int main() {
	char digits[N+1];
	for (;;) {
		scanf("%s", digits);
		if (strcmp(digits, "0") == 0)
			break;

		printf("%d\n", sum_of_digits(digits));
	}
	return 0;
}
