#include <cmath>
#include <iostream>

auto main() -> int {
	int x;
	std::cin >> x;
	std::cout << static_cast<int>(std::pow(x, 3)) << std::endl;
	return 0;
}
