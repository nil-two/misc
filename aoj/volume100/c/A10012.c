#include <stdio.h>

int main() {
	int h, w;
	int y, x;
	for (;;) {
		scanf("%d %d", &h, &w);
		if (h == 0 && w == 0)
			break;

		for (y = 0; y < h; y++) {
			for (x = 0; x < w; x++)
				putchar('#');
			putchar('\n');
		}
		putchar('\n');
	}
	return 0;
}
