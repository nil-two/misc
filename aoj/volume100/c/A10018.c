#include <ctype.h>
#include <stdio.h>
#include <string.h>

enum {
	N = 1200,
};

void to_swapcase(char *s) {
	int i;
	for (i = 0; s[i] != '\0'; i++) {
		if (islower(s[i]))
			s[i] = toupper(s[i]);
		else if (isupper(s[i]))
			s[i] = tolower(s[i]);
	}
}

int main() {
	char text[N+1];
	fgets(text, sizeof(text), stdin);

	to_swapcase(text);

	printf("%s", text);
	return 0;
}
