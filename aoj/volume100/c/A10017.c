#include <stdio.h>

int main() {
	int count;
	int n, x;
	int i1, i2, i3;
	for (;;) {
		count = 0;
		scanf("%d %d", &n, &x);
		if (n == 0 && x == 0)
			break;

		for (i1 = 1; i1 <= n; i1++)
			for (i2 = i1+1; i2 <= n; i2++)
				for (i3 = i2+1; i3 <= n; i3++)
					if (i1 + i2 + i3 == x)
						count++;

		printf("%d\n", count);
	}
	return 0;
}
