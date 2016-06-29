#include <cmath>
#include <iostream>

const double PI = 4.0 * std::atan(1.0);

auto main() -> int {
	double r;
	std::cin >> r;
	std::printf("%.6f %.6f\n",
			PI * std::pow(r, 2),
			PI * 2*r);
	return 0;
}
