#include <stdio.h>
#include <stdlib.h>

void reverse(int *a, int noItem) {
	int i, tmp;
	if (noItem < 1)
		return;

	for (i = 0; i < noItem / 2; i++) {
		tmp  = a[i];
		a[i] = a[noItem-1 - i];
		a[noItem-1 - i] = tmp;
	}
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
	int i, noItem;
	int *a;

	scanf("%d", &noItem);
	a = (int *)malloc(noItem * sizeof(int));
	for (i = 0; i < noItem; i++)
		scanf("%d", &a[i]);
	reverse(a, noItem);

	dump(a, noItem);
	free(a);
	return 0;
}
