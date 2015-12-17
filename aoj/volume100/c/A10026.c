#include <math.h>
#include <stdio.h>

enum {
	N = 1000,
};

double average(int *a, int len) {
	int i;
	double sum = 0;
	for (i = 0; i < len; i++)
		sum += a[i];
	return sum / len;
}

double variance(int *a, int len) {
	int i;
	double ave = average(a, len);
	double v;
	for (i = 0; i < len; i++)
		v += pow(a[i]-ave, 2);
	return v / len;
}

double standard_deviation(int *a, int len) {
	return sqrt(variance(a, len));
}

int main() {
	int i;
	int len;
	int a[N];
	for (;;) {
		scanf("%d", &len);
		if (len == 0)
			break;

		for (i = 0; i < len; i++)
			scanf("%d", &a[i]);
		printf("%f\n", sqrt(variance(a, len)));
	}
	return 0;
}
