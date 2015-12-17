#include <stdio.h>
#include <stdlib.h>

int cmp_int(const void *a, const void *b) {
	if (*(int *)a > *(int *)b)
		return 1;
	if (*(int *)a < *(int *)b)
		return -1;
	return 0;
}

typedef struct Items Items;
struct Items {
	int no_items;
	int *items;
};

void read_items(Items *items) {
	int i;
	scanf("%d", &items->no_items);
	items->items = (int *)malloc(items->no_items * sizeof(int));
	for (i = 0; i < items->no_items; i++)
		scanf("%d", &items->items[i]);
	qsort((void *)items->items, items->no_items, sizeof(int), cmp_int);
}

int count_intersection(Items *a, Items *b) {
	int i;
	int count = 0;
	for (i = 0; i < b->no_items; i++)
		if (bsearch(&b->items[i], a->items, a->no_items, sizeof(int), cmp_int) != NULL)
			count++;
	return count;
}

int main() {
	Items s, t;
	read_items(&s);
	read_items(&t);

	printf("%d\n", count_intersection(&s, &t));
	return 0;
}
