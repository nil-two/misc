#include <stdio.h>
#include <stdlib.h>

int cmp_int(const void *a, const void *b) {
	if (*(int *)a > *(int *)b)
		return 1;
	if (*(int *)a < *(int *)b)
		return -1;
	return 0;
}

void dump(int *a, int len) {
	int i;
	for (i = 0; i < len; i++) {
		if (i != 0)
			putchar(' ');
		printf("%d", a[i]);
	}
	putchar('\n');
}

int main() {
	int i;
	int len;
	int *items;
	scanf("%d", &len);
	items = (int *)malloc(len * sizeof(int));
	for (i = 0; i < len; i++)
		scanf("%d", &items[i]);

	qsort((void *)items, len, sizeof(items[0]), cmp_int);

	dump(items, len);
	return 0;
}
