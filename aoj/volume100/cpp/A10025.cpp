#include <cmath>
#include <cstdio>
#include <iostream>

const double PI = 4.0 * std::atan(1.0);

auto main() -> int {
	double a, b, c;
	double rad, deg;
	double area, perimeter, h;
	std::cin >> a >>  b >> deg;
	rad = deg * PI / 180.0;
	c = std::sqrt(std::pow(a, 2) + std::pow(b, 2) - 2*a*b*std::cos(rad));

	area = a*b*std::sin(rad) / 2.0;
	perimeter = a + b + c;
	h = 2*area / a;
	std::printf("%f\n", area);
	std::printf("%f\n", perimeter);
	std::printf("%f\n", h);
	return 0;

}
