#include <ctype.h>
#include <stdio.h>

enum {
	N = 1200,
	NO_ALPHABET = 26,
};

void lowercase(char *s) {
	int i;
	for (i = 0; s[i] != '\0'; i++)
		s[i] = tolower(s[i]);
}


int main() {
	int i;
	char ch;
	char text[N+1];
	int cnt[NO_ALPHABET] = {0};

	while (fgets(text, sizeof(text), stdin) != NULL) {
		lowercase(text);
		for (i = 0; i < N && text[i] != '\0'; i++) {
			if (isalpha(text[i]))
				cnt[text[i]-'a']++;
		}
	}

	for (i = 0; i < NO_ALPHABET; i++)
		printf("%c : %d\n", 'a'+i, cnt[i]);
	return 0;
}
