#include <iostream>
#include <cmath>

auto main() -> int {
	int Xp, Yp;
	std::cin >> Xp >> Yp;

	double distance = std::sqrt(std::pow(Xp, 2) + std::pow(Yp, 2));
	int    r        = distance*2 + 1;
	std::cout << r << std::endl;
}
