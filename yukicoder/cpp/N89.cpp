#include <cmath>
#include <iomanip>
#include <iostream>

auto main() -> int {
	int C, Rin, Rout;
	std::cin >> C >> Rin >> Rout;

	double PI      = 4.0 * std::atan(1.0);
	double volume  = 0.25 * std::pow(PI, 2) * (Rin + Rout) * std::pow(Rout - Rin, 2);
	double calorie = C * volume;

	std::cout << std::fixed << std::setprecision(6) << calorie << std::endl;
}
