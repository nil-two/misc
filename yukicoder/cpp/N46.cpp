#include <iostream>
#include <cmath>

auto main() -> int {
	double a, b;
	std::cin >> a >> b;
	std::cout << static_cast<int>(std::ceil(b / a)) << std::endl;
}
