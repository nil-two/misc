#include <ctype.h>
#include <stdio.h>
#include <string.h>

enum {
	MAX_W = 10,
	MAX_T = 1000,
};

void lowercase(char *s) {
	int i;
	for (i = 0; s[i] != '\0'; i++)
		s[i] = tolower(s[i]);
}

int main() {
	int i;
	int cnt;
	char w[MAX_W+1];
	char t[MAX_T+1];

	scanf("%s", w);
	lowercase(w);

	cnt = 0;
	for (;;) {
		scanf("%s", t);
		if (strcmp(t, "END_OF_TEXT") == 0)
			break;

		lowercase(t);
		if (strcmp(w, t) == 0)
			cnt++;
	}
	printf("%d\n", cnt);

	return 0;
}
