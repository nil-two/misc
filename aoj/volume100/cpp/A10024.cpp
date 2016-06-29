#include <cmath>
#include <cstdio>
#include <iostream>

auto distance(double x1, double y1, double x2, double y2) -> double {
	return std::sqrt(std::pow(x1-x2, 2) + std::pow(y1-y2, 2));
}

auto main() -> int {
	double x1, y1, x2, y2;
	std::cin >> x1 >> y1 >> x2 >> y2;
	std::printf("%.6f\n", distance(x1, y1, x2, y2));
	return 0;
}
