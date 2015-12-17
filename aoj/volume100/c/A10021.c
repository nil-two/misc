#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum {
	MAX_WORD_LEN = 20,
};

int cmp_str(const void *a, const void *b) {
	return strcmp(*(char **)a, *(char **)b);
}

int main() {
	int i;
	int no_words;
	char **words;

	scanf("%d", &no_words);
	words = (char **)malloc(no_words * sizeof(char *));
	for (i = 0; i < no_words; i++) {
		words[i] = (char *)malloc(MAX_WORD_LEN * sizeof(char));
		scanf("%s", words[i]);
	}

	qsort((void *)words, no_words, sizeof(char **), cmp_str);

	puts(words[0]);
	return 0;
}
