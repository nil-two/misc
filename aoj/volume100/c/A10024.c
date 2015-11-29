#include <math.h>
#include <stdio.h>

double absDouble(double x) {
	return (x < 0)? -x: x;
}

double distance(double x1, double y1, double x2, double y2) {
	double h = absDouble(y2 - y1);
	double w = absDouble(x2 - x1);
	return sqrt(pow(h, 2.0) + pow(w, 2.0));
}

int main() {
	double x1, y1, x2, y2;
	scanf("%lf %lf %lf %lf", &x1, &y1, &x2, &y2);

	printf("%f\n", distance(x1, y1, x2, y2));
	return 0;
}
