#include <math.h>
#include <stdio.h>

enum {
	N = 1000,
};

double average(int *s, int noItem) {
	int i;
	double sum = 0;
	for (i = 0; i < noItem; i++)
		sum += s[i];
	return sum / noItem;
}

double variance(int *s, int noItem) {
	int i;
	double ave = average(s, noItem);
	double v;
	for (i = 0; i < noItem; i++)
		v += pow(s[i]-ave, 2);
	return v / noItem;
}

int main() {
	int i;
	int noItem;
	int s[N];
	for (;;) {
		scanf("%d", &noItem);
		if (noItem == 0)
			break;

		for (i = 0; i < noItem; i++)
			scanf("%d", &s[i]);
		printf("%f\n", sqrt(variance(s, i)));
	}
	return 0;
}
