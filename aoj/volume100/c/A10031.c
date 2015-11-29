#include <stdio.h>
#include <stdlib.h>

int cmpInt(const void *a, const void *b) {
	if (*(int *)a > *(int *)b)
		return 1;
	if (*(int *)a < *(int *)b)
		return -1;
	return 0;
}

typedef struct Items Items;
struct Items {
	int noItem;
	int *ls;
};

void readItems(Items *s) {
	int i;
	scanf("%d", &s->noItem);
	s->ls = (int *)malloc(s->noItem * sizeof(int));
	for (i = 0; i < s->noItem; i++)
		scanf("%d", &s->ls[i]);
	qsort((void *)s->ls, s->noItem, sizeof(int), cmpInt);
}

int countIntersection(Items *a, Items *b) {
	int i;
	int cnt = 0;
	for (i = 0; i < b->noItem; i++)
		if (bsearch(&b->ls[i], a->ls, a->noItem, sizeof(int), cmpInt) != NULL)
			cnt++;
	return cnt;
}

int main() {
	Items s, t;
	readItems(&s);
	readItems(&t);

	printf("%d\n", countIntersection(&s, &t));
	return 0;
}
