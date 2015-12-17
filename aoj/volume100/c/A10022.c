#include <ctype.h>
#include <stdio.h>
#include <string.h>

enum {
	MAX_W = 10,
	MAX_T = 1000,
};

void to_lowercase(char *s) {
	int i;
	for (i = 0; s[i] != '\0'; i++)
		s[i] = tolower(s[i]);
}

int main() {
	int i;
	int count;
	char w[MAX_W+1];
	char t[MAX_T+1];

	scanf("%s", w);
	to_lowercase(w);

	count = 0;
	for (;;) {
		scanf("%s", t);
		if (strcmp(t, "END_OF_TEXT") == 0)
			break;

		to_lowercase(t);
		if (strcmp(w, t) == 0)
			count++;
	}
	printf("%d\n", count);

	return 0;
}
