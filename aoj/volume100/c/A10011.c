#include <stdio.h>
#include <stdlib.h>

void reverse(int *a, int len) {
	int i, tmp;
	if (len < 1)
		return;

	for (i = 0; i < len / 2; i++) {
		tmp  = a[i];
		a[i] = a[len-1 - i];
		a[len-1 - i] = tmp;
	}
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
	int i, len;
	int *a;
	scanf("%d", &len);
	a = (int *)malloc(len * sizeof(int));
	for (i = 0; i < len; i++)
		scanf("%d", &a[i]);

	reverse(a, len);

	dump(a, len);
	return 0;
}
