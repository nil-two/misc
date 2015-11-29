#include <stdio.h>

const double PI = 3.1415926535897932384626;

int main() {
	double r;
	scanf("%lf", &r);

	printf("%f %f\n",
			r*r * PI,
			2*r * PI);
	return 0;
}
