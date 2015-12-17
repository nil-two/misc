#include <ctype.h>
#include <stdio.h>

enum {
	N = 1200,
	NO_ALPHABETS = 26,
};

void to_lowercase(char *s) {
	int i;
	for (i = 0; s[i] != '\0'; i++)
		s[i] = tolower(s[i]);
}


int main() {
	int i;
	char text[N+1];
	int counts[NO_ALPHABETS] = {0};

	while (fgets(text, sizeof(text), stdin) != NULL) {
		to_lowercase(text);
		for (i = 0; i < N && text[i] != '\0'; i++) {
			if (isalpha(text[i]))
				counts[text[i]-'a']++;
		}
	}

	for (i = 0; i < NO_ALPHABETS; i++)
		printf("%c : %d\n", 'a'+i, counts[i]);
	return 0;
}
