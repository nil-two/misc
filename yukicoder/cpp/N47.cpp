#include <iostream>
#include <cmath>

auto main() -> int {
	int n;
	std::cin >> n;

	int required_times = static_cast<int>(std::ceil(std::log2(n)));
	std::cout << required_times << std::endl;
}
