#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum {
	MAX_WORD = 20,
};

int cmpStr(const void *a, const void *b) {
	return strcmp(*(char **)a, *(char **)b);
}

int main() {
	int i;
	int noWords;
	char **words;

	scanf("%d", &noWords);
	words = (char **)malloc(noWords * sizeof(char **));
	for (i = 0; i < noWords; i++) {
		words[i] = (char *)malloc(MAX_WORD * sizeof(char));
		scanf("%s", words[i]);
	}

	qsort((void *)words, noWords, sizeof(char **), cmpStr);

	puts(words[0]);
	return 0;
}
