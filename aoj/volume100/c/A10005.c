#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *repeat(char *s, int count) {
	int i;
	int len = strlen(s);
	char *t = malloc(len * count * sizeof(char));
	for (i = 0; i < count; i++)
		strcpy(&t[len*i], s);
	return t;
}

int main() {
	char *s = "Hello World\n";
	char *t = repeat(s, 1000);
	printf("%s", t);
	return 0;
}
