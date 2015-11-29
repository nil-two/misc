#include <ctype.h>
#include <stdio.h>
#include <string.h>

enum {
	N = 1000,
};

int sumOfNumbers(char *digits, size_t noDigits) {
	int i;
	int sum = 0;
	for (i = 0; i < noDigits; i++)
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

		printf("%d\n", sumOfNumbers(digits, strlen(digits)));
	}
	return 0;
}
