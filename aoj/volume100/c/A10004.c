#include <stdio.h>
#include <stdlib.h>

int cmpInt(const void *a, const void *b) {
	if (*(int *)a > *(int *)b)
		return 1;
	if (*(int *)a < *(int *)b)
		return -1;
	return 0;
}

int main() {
	int n[3];
	scanf("%d %d %d", &n[0], &n[1], &n[2]);

	qsort((void *)n, 3, sizeof(n[0]), cmpInt);

	printf("%d %d %d\n", n[0], n[1], n[2]);
	return 0;
}
