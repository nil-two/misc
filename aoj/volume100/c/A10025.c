#include <math.h>
#include <stdio.h>

const double PI = 3.1415926535897932384626;

int main() {
	double a, b, c;
	double rad, deg;
	double area, perimeter, h;
	scanf("%lf %lf %lf", &a, &b, &deg);
	rad = deg * PI / 180.0;
	c = sqrt(pow(a, 2) + pow(b, 2) - 2*a*b*cos(rad));

	area      = a*b*sin(rad) / 2.0;
	perimeter = a + b + c;
	h         = 2*area / a;
	printf("%f\n", area);
	printf("%f\n", perimeter);
	printf("%f\n", h);
	return 0;
}
