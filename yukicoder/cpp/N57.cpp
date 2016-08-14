#include <iostream>
#include <iomanip>

auto main() -> int {
	int n;
	std::cin >> n;

	double mean = n * 3.5;
	std::cout << std::fixed << std::setprecision(3) << mean << std::endl;
}
