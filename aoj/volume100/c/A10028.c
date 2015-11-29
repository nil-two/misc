#include <stdio.h>
#include <stdlib.h>

int cmpInt(const void *a, const void *b) {
	if (*(int *)a > *(int *)b)
		return 1;
	if (*(int *)a < *(int *)b)
		return -1;
	return 0;
}

void dump(int *a, int noItem) {
	int i;
	for (i = 0; i < noItem; i++) {
		if (i != 0)
			printf(" ");
		printf("%d", a[i]);
	}
	puts("");
}

int main() {
	int i;
	int noItem;
	int *items;
	scanf("%d", &noItem);
	items = (int *)malloc(noItem * sizeof(int));
	for (i = 0; i < noItem; i++)
		scanf("%d", &items[i]);

	qsort((void *)items, noItem, sizeof(items[0]), cmpInt);

	dump(items, noItem);
	return 0;
}
