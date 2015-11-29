#include <stdio.h>

char grade(int m, int f, int r) {
	if (m == -1 || f == -1)        return 'F';
	else if (m+f >= 80)            return 'A';
	else if (m+f >= 65)            return 'B';
	else if (m+f >= 50)            return 'C';
	else if (m+f >= 30 && r >= 50) return 'C';
	else if (m+f >= 30)            return 'D';
	else                           return 'F';
}

int main() {
	int m, f, r;
	for(;;) {
		scanf("%d %d %d", &m, &f, &r);
		if (m == -1 && f == -1 && r == -1)
			break;

		printf("%c\n", grade(m, f, r));
	}
	return 0;
}
